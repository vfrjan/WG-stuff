#!/bin/sh
set -x
# Set enviroment variables.
ORACLE_SID=$1;export ORACLE_SID
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/10.2.0/db; export ORACLE_HOME

PATH=$PATH:/usr/local/bin:$ORACLE_HOME/bin
set `date '+%Y %m %d'`
YEAR=$1
MND=$2
DAY=$3
sqlplus /nolog @shutdown.sql
rm -rf /u02/oradata/$ORACLE_SID/*
cd /
tar xfz `ls -rt /media/usbdisk/backupdata/$ORACLE_SID/${ORACLE_SID}* | tail -1`
rm -rf /export/home/u01/app/oracle/oradata/$ORACLE_SID
mkdir /export/home/u01/app/oracle/oradata/$ORACLE_SID
cd /media/usbdisk/backupdata/$ORACLE_SID/export/home/u01/app/oracle/oradata/$ORACLE_SID;tar cf - .| (cd /export/home/u01/app/oracle/oradata/$ORACLE_SID;tar xfBp -)
rm -rf /export/home/u01/app/oracle/admin/$ORACLE_SID
mkdir  /export/home/u01/app/oracle/admin/$ORACLE_SID
cd /media/usbdisk/backupdata/$ORACLE_SID/export/home/u01/app/oracle/admin/$ORACLE_SID;tar cf - .| (cd /export/home/u01/app/oracle/admin/$ORACLE_SID;tar xfBp -)
rm -rf /export/home/u01/app/oracle/oradata/$ORACLE_SID/archive
#rsync -av /media/usbdisk/backupdata/$ORACLE_SID/archive /export/home/u01/app/oracle/oradata/$ORACLE_SID
ln -s /media/usbdisk/backupdata/$ORACLE_SID/archive /export/home/u01/app/oracle/oradata/$ORACLE_SID/archive
sqlplus /nolog @/export/home/oracle/localdbcopies/recover-flex-test-logs.sql
sqlplus /nolog @/export/home/oracle/localdbcopies/startup-resetlogs.sql
