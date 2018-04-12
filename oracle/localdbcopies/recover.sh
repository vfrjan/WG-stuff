#!/bin/sh
set -x
# Set enviroment variables.
ORACLE_SID=$1;export ORACLE_SID
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/10.2.0/db; export ORACLE_HOME
RECOVER=/export/home/oracle/localdbcopies/rman-recover.$ORACLE_SID

PATH=$PATH:/usr/local/bin:$ORACLE_HOME/bin
set `date '+%Y %m %d'`
YEAR=$1
MND=$2
DAY=$3
LASTBUPFILE=`ls -rt /media/usbdisk/backupdata/${ORACLE_SID}/rman/ | tail -1`
sqlplus /nolog @/export/home/oracle/localdbcopies/shutdown.sql
#rm -rf /u02/oradata/$ORACLE_SID/*
cd /export/home/oracle/localdbcopies
echo "startup nomount" > $RECOVER
echo "restore controlfile from '/media/usbdisk/backupdata/${ORACLE_SID}/rman/${LASTBUPFILE}';" >> $RECOVER
echo "alter database mount;" >> $RECOVER
echo "restore database;" >> $RECOVER
echo "recover database;" >> $RECOVER
echo "sql 'alter database noarchivelog';" >> $RECOVER
#echo "sql 'alter database open resetlogs';" >> $RECOVER
echo "quit" >> $RECOVER

cd /
#tar xfz `ls -rt /media/usbdisk/backupdata/$ORACLE_SID/${ORACLE_SID}* | tail -1` u02/oradata/${ORACLE_SID}/redo*
$ORACLE_HOME/bin/rman target / nocatalog @$RECOVER
sqlplus /nolog @/export/home/oracle/localdbcopies/startup-resetlogs.sql
