conn su/su
delete from su_geocal;

insert into  su_geocal  select * from su_geocal@su_wppc;

exit
