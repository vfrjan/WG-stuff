conn su/su
update su_sublog_&1 s1 set active=0 where s1.part_id=2 and s1.active=1 and s1.serialno=(select serialno from su_sublog_&1 s2 where s2.serialno=s1.serialno and s2.active=1 and s2.part_id=2 and s2.datetime > s1.datetime);
exit
