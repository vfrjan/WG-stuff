#!/bin/sh
for SID in `cat /export/home/oracle/localdbcopies/ORACLE_SIDs`;do
ORACLE_SID=$SID;export ORACLE_SID
sqlplus /nolog @/export/home/oracle/localdbcopies/shutdown.sql
done
