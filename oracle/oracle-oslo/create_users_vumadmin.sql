CREATE USER VUMADMIN
IDENTIFIED BY VUMADMIN
DEFAULT TABLESPACE VUMADMIN_DATA
TEMPORARY TABLESPACE TEMP
GRANT connect, create session, create table TO VUMADMIN;
grant create sequence to VUMADMIN;
grant create procedure to VUMADMIN;
grant create type to VUMADMIN;
grant create view to VUMADMIN;
grant create any sequence to VUMADMIN;
grant create any table to VUMADMIN;
grant create materialized view to VUMADMIN;
grant execute on dbms_lock to VUMADMIN;
grant unlimited tablespace to VUMADMIN; 
