declare varjobid int;
		v_job_number number(10);
TYPE cur_type IS REF CURSOR;

objectcursor cur_type; 

Begin

open objectcursor for 
select job 
from user_jobs
where what like '%stats_rollup2_proc;%';

Loop
	fetch objectcursor into varjobid;
	exit when objectcursor%NOTFOUND;
	dbms_job.remove (job => varjobid);

End Loop;

Close objectcursor;

open objectcursor for 
select job 
from user_jobs
where what = 'begin l_stats_rollup2_proc; l_Purge_Stat2_proc; purge_usage_stat_proc; end;';

Loop
	fetch objectcursor into varjobid;
	exit when objectcursor%NOTFOUND;
	dbms_job.remove (job => varjobid);

End Loop;

Close objectcursor;

begin

dbms_job.submit(
	job => v_job_number,
   what=>'begin l_stats_rollup2_proc; l_Purge_Stat2_proc; purge_usage_stat_proc; end;',
   next_date=>trunc(sysdate,'HH') + mod(cast(to_char(sysdate, 'HH') as int), 2)/24 + 1/24 + 1/96, 
   interval=>'sysdate+1/12');
   commit;
end  ;

end;
