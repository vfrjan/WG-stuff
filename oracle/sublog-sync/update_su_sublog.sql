conn su/su
delete from su_sublog where sublog_id<1426063360 or sublog_id>1442840575; 
alter trigger su_sublog_trigger disable;
insert into su_sublog select * from  su_sublog_consolidated where sublog_id<1426063360 or sublog_id>1442840575;
commit;
alter trigger su_sublog_trigger enable;
update su_sublog s1 set active=0 where (s1.sublog_id <1426063360 or s1.sublog_id>1442840575) and s1.part_id=2 and s1.active=1 and s1.serialno=(select serialno from su_sublog s2 where s2.sublog_id>=1426063360 and s2.sublog_id<=1442840575 and s2.serialno=s1.serialno and s2.active=1 and s2.part_id=2);
exit