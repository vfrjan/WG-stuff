conn su/su
insert into  su_sublog_consolidated  select * from su_sublog_&1;
commit;
exit
