conn su/su
spool part;
drop table su_sublog_&1;

create table su_sublog_&1 as (select * from su_sublog@su_&1 where serialno>80000000 and serialno<99999999 and sublog_id>=&2 and sublog_id<=&3 and part_id=&4);

update su_sublog_&1 set part_id=2 where serialno>80000000 and serialno<99999999 and sublog_id>=&2 and sublog_id<=&3;

commit;
spool off;
exit

