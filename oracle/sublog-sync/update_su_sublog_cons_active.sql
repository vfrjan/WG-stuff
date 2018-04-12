conn su/su
-- update su_sublog_consolidated s1 set active=0 where s1.part_id=2 and s1.active=1 and s1.serialno=(select serialno from su_sublog_consolidated s2 where s2.serialno=s1.serialno and s2.active=1 and s2.part_id=2 and s2.datetime > s1.datetime);
update su_sublog_consolidated set active=0;
update su_sublog_consolidated s1 set active=1 where s1.sublog_id=(select sublog_id from su_sublog_consolidated s2 where s2.serialno=s1.serialno and s2.datetime=(select max(datetime) from su_sublog_consolidated s3 where s3.serialno=s1.serialno));
commit;
exit
