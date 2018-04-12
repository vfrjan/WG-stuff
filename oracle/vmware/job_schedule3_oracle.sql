declare varjobid int;
		v_job_number number(10);
TYPE cur_type IS REF CURSOR;

objectcursor cur_type; 

Begin

open objectcursor for 
select job 
from user_jobs
where what like '%stats_rollup3_proc;%';

Loop
	fetch objectcursor into varjobid;
	exit when objectcursor%NOTFOUND;
	dbms_job.remove (job => varjobid);

End Loop;

Close objectcursor;

begin

dbms_job.submit(
	job => v_job_number,
   what=>'begin l_stats_rollup3_proc; l_purge_stat3_proc; end;',
   next_date=>trunc(sysdate,'DDD') + case when cast(to_char(sysdate, 'HH24') as int) > 1 then 1 else 0 end + 1/12 + 1/96,
   interval=>'sysdate+1');
   commit;
end  ;

end;
