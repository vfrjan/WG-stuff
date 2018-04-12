#!/bin/sh
#Fjord copy
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1; export ORACLE_HOME
ORACLE_SID=FJRD; export ORACLE_SID
$ORACLE_HOME/bin/sqlplus /nolog @startup.sql
$ORACLE_HOME/bin/lsnrctl start

