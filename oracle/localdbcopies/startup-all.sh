#!/bin/sh
for SID in `cat /export/home/oracle/localdbcopies/ORACLE_SIDs | grep -v wppc`;do
ORACLE_SID=$SID;export ORACLE_SID
sqlplus /nolog @/export/home/oracle/localdbcopies/startup.sql
done
