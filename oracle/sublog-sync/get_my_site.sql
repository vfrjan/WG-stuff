conn prod/prod
spool on 
set heading off
spool mysite
select * from mysite;
spool off
exit
