#!/bin/sh
set -x
ORACLE_SID=$1;export ORACLE_SID
sqlplus /nolog @shutdown.sql
rm -rf /u02/oradata/$ORACLE_SID
mv /u02/oradata/$ORACLE_SID.snap /u02/oradata/$ORACLE_SID
rm -rf /export/home/u01/app/oracle/oradata/$ORACLE_SID
mv /export/home/u01/app/oracle/oradata/$ORACLE_SID.snap /export/home/u01/app/oracle/oradata/$ORACLE_SID
rm -rf /export/home/u01/app/oracle/admin/$ORACLE_SID
mv /export/home/u01/app/oracle/admin/$ORACLE_SID.snap /export/home/u01/app/oracle/admin/$ORACLE_SID
#rsync -av /media/usbdisk/backupdata/$ORACLE_SID/archive /export/home/u01/app/oracle/oradata/$ORACLE_SID
ln -s /media/usbdisk/backupdata/$ORACLE_SID/archive /export/home/u01/app/oracle/oradata/$ORACLE_SID/archive
sqlplus /nolog @/export/home/oracle/recover-logs.sql
mkdir /u02/oradata/$ORACLE_SID.snap
cp /u02/oradata/$ORACLE_SID/* /u02/oradata/$ORACLE_SID.snap
mkdir /export/home/u01/app/oracle/oradata/$ORACLE_SID.snap
cp /export/home/u01/app/oracle/oradata/$ORACLE_SID/* /export/home/u01/app/oracle/oradata/$ORACLE_SID.snap
mkdir /export/home/u01/app/oracle/oradata/$ORACLE_SID.snap/archive
mkdir /export/home/u01/app/oracle/admin/$ORACLE_SID.snap
cp -r /export/home/u01/app/oracle/admin/$ORACLE_SID/* /export/home/u01/app/oracle/admin/$ORACLE_SID.snap
#sqlplus /nolog @/export/home/oracle/localdbcopies/startup-resetlogs.sql

