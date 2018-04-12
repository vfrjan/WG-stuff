#!/bin/sh
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/9.2.0.1.0; export ORACLE_HOME
ORACLE_SID=FJRD; export ORACLE_SID

PATH=$ORACLE_HOME/bin:$PATH:/usr/local/bin:/usr/openwin/bin

$ORACLE_HOME/bin/rman target / NOCATALOG @/export/home/oracle/rman-backup-full-fjrd
