#!/bin/sh
ORACLE_HOME=$ORACLE_BASE/product/10.2.0/db; export ORACLE_HOME
ORACLE_SID=flex; export ORACLE_SID
PATH=/usr/local/bin:$PATH:/usr/openwin/bin:$ORACLE_HOME/bin
$ORACLE_HOME/bin/rman target / NOCATALOG @/export/home/oracle/rman-backup-incr
