conn su/su
delete from su_sublog_consolidated;

commit;
insert into  su_sublog_consolidated  select * from su_sublog@su_fjrd where serialno>80000000 and serialno<99999999 and sublog_id>=18454937 and sublog_id<=201326591 and part_id=1;

update su_sublog_consolidated set part_id=2 where serialno>80000000 and serialno<99999999 and sublog_id>=18454937 and sublog_id<=201326591;

insert into  su_sublog_consolidated  select * from su_sublog@su_flxpl where serialno>80000000 and serialno<99999999 and sublog_id>=1375731712 and sublog_id<=1392508927 and part_id=1;

update su_sublog_consolidated set part_id=2 where serialno>80000000 and serialno<99999999 and sublog_id>=1375731712 and sublog_id<=1392508927;

insert into  su_sublog_consolidated  select * from sus_sublog@su_mxpl where serialno>80000000 and serialno<99999999 and sublog_id>=1358954496 and sublog_id<=1375731711 and part_id=10;

update su_sublog_consolidated set part_id=2 where serialno>80000000 and serialno<99999999 and sublog_id>=1358954496 and sublog_id<=1375731711;

insert into  su_sublog_consolidated  select * from su_sublog@su_wppc where serialno>80000000 and serialno<99999999 and sublog_id>=201326592 and sublog_id<=218103807 and part_id=1;

update su_sublog_consolidated set part_id=2 where serialno>80000000 and serialno<99999999 and sublog_id>=201326592 and sublog_id<=218103807;

-- select  * from su_sublog where sublog_id>=1426063360 and sublog_id<=1442840575; FOr site_id=85 (CAMP2)

-- delete from su_sublog where sublog_id<1426063360 or sublog_id>1442840575; Delete records not generated in CAMP2 tester

-- insert into su_sublog select * from  su_sublog_consolidated where sublog_id<1426063360 or sublog_id>1442840575; Insert consolidate su_sublog.
exit
