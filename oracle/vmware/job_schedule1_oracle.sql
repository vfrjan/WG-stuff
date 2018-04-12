declare varjobid int;
	v_job_number number(10);
TYPE cur_type IS REF CURSOR;

objectcursor cur_type; 

Begin

open objectcursor for 
select job 
from user_jobs
where what like '%stats_rollup1_proc;%';

Loop
	fetch objectcursor into varjobid;
	exit when objectcursor%NOTFOUND;
	dbms_job.remove (job => varjobid);

End Loop;

Close objectcursor;

begin

dbms_job.submit(
	job => v_job_number,
   what=> 'begin l_stats_rollup1_proc; end;',
   next_date=>trunc(sysdate,'HH')+1/24, 
   interval=>'sysdate+1/48');
   commit;
end  ;

end;
