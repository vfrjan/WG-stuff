CREATE USER VCUSER
IDENTIFIED BY CENSORED
DEFAULT TABLESPACE VCTEST
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED on VCTEST;
GRANT create session, create table TO VCUSER;
grant connect to VCUSER;
grant resource to VCUSER;
grant create view to VCUSER;
grant create any sequence to VCUSER;
grant create any table to VCUSER;
grant create materialized view to VCUSER;
grant execute on dbms_job to VCUSER;
grant execute on dbms_lock to VCUSER;
grant unlimited tablespace to VCUSER; 
