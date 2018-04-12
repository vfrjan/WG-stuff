#!/bin/sh
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1; export ORACLE_HOME
ORACLE_SID=FJRD; export ORACLE_SID

PATH=$PATH:$ORACLE_HOME/bin
$ORACLE_HOME/bin/rman target / NOCATALOG @/export/home/oracle/rman-backup-full

ORACLE_SID=MZUS; export ORACLE_SID
$ORACLE_HOME/bin/rman target / NOCATALOG @/export/home/oracle/rman-backup-full
