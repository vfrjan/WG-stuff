CREATE OR REPLACE PROCEDURE cleanup_events_tasks_proc
AS
-- ==================================================================
/** 
  Purpose:

    This procedure cleans up events and tasks older than a configured
    maximum age, if the corresponding enabling flags are set to true.

    The cleanup is performed in a loop, 1000 events and tasks at a
    time, in order to avoid a huge hit on the database the first time
    this feature is enabled.

*/
--
-- ==================================================================

   batchsize INTEGER := 100;
   -- maxage is how many days worth of stuff we keep
   eventCleanupEnabled VARCHAR(5);
   eventMaxAge INTEGER;
   eventCleanupStart DATE;
   taskCleanupEnabled VARCHAR(5);
   taskMaxAge INTEGER;
   taskCleanupStart DATE;
   -- delete counters for the loops
   eventcount INTEGER;
   taskcount INTEGER;
   -- time when we started work
   baseUTCTime DATE := CAST(SYS_EXTRACT_UTC(SYSTIMESTAMP) AS DATE);
   startTime DATE := SYSDATE;

BEGIN

   -- Get Event aging parameters
   BEGIN
      SELECT nvl(value,'false') INTO eventCleanupEnabled
      FROM VPX_PARAMETER WHERE name = 'event.maxAgeEnabled';
   EXCEPTION 
      WHEN NO_DATA_FOUND THEN
         eventCleanupEnabled := 'false';
   END;
   BEGIN
      SELECT to_number(nvl(value,'-1'), '999999999') INTO eventMaxAge
      FROM VPX_PARAMETER WHERE name='event.maxAge';
   EXCEPTION 
      WHEN NO_DATA_FOUND THEN
         eventMaxAge := -1;
   END;
   eventCleanupStart := baseUTCTime - eventMaxAge;

   -- Get Task aging parameters
   BEGIN
      SELECT nvl(value,'false') INTO taskCleanupEnabled
      FROM VPX_PARAMETER WHERE name = 'task.maxAgeEnabled';
   EXCEPTION 
      WHEN NO_DATA_FOUND THEN
         taskCleanupEnabled := 'false';
   END;
   BEGIN
      SELECT to_number(nvl(value,'-1'), '999999999') INTO taskMaxAge
      FROM VPX_PARAMETER WHERE name='task.maxAge';
   EXCEPTION 
      WHEN NO_DATA_FOUND THEN
         taskMaxAge := -1;
   END;
   taskCleanupStart := baseUTCTime - taskMaxAge;

  LOOP
      -- Clean up Events by creation time
      eventcount := 0;
      IF (lower(eventCleanupEnabled) = 'true' AND eventMaxAge > 0) THEN
         -- delete first 'batchsize' events
         DELETE FROM VPX_EVENT 
         WHERE create_time < eventCleanupStart 
           AND ROWNUM <= batchsize;
         eventcount := SQL%ROWCOUNT;

         COMMIT;
      END IF;

      -- Clean up Tasks by completion time
      taskcount := 0;
      IF (lower(taskCleanupEnabled) = 'true' AND taskMaxAge > 0) THEN
         -- delete first 'batchsize' tasks
         DELETE FROM VPX_TASK
         WHERE queue_time < taskCleanupStart
           AND LOWER(complete_state) in ('error', 'success')
           AND NOT EXISTS(SELECT 1 FROM VPX_TASK t2
           WHERE t2.parent_task_id=vpx_task.task_id)
           AND ROWNUM <= batchsize;
         taskcount := SQL%ROWCOUNT;

         COMMIT;
      END IF;

      -- Exit if we're all done. 
      IF ((eventcount < batchsize) AND (taskcount < batchsize)) THEN
         -- If both delete counts are less than the batch size, they
         -- must be the last batch, if at all enabled.
         EXIT;
      END IF;
      -- Or if we've been working for over an hour:
      IF (SYSDATE > startTime + 1/24) THEN
         -- wrap up for now.
         -- This will only happen the first time we turn this feature on,
         -- with a large backlog of events and tasks to be deleted. This
         -- gives the system a chance to catch its breath.
         EXIT;
      END IF;
   END LOOP;

END cleanup_events_tasks_proc;
