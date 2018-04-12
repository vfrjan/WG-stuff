#!/bin/sh
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/10.2.0/db; export ORACLE_HOME
ORACLE_SID=kitr; export ORACLE_SID
PATH=/usr/local/bin:$PATH:/usr/openwin/bin:$ORACLE_HOME/bin
$ORACLE_HOME/bin/rman target / NOCATALOG @/export/home/oracle/rman-backup-full
