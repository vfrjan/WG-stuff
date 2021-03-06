#!/bin/sh
set -x

####################################################################
#
#  Oracle database backup script, db-backup.sh
#  Tor Murberg, Fjord Instruments
#  Jan Kraakenes, SLB SIS
#
#
#  30.12.2005 - First release
#  19.04.2007 - Modfified for Linux/10g
#
####################################################################

# Set enviroment variables.
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/10.2.0/db; export ORACLE_HOME

PATH=$PATH:/usr/local/bin:$ORACLE_HOME/bin

set `date '+%Y %m %d'`
YEAR=$1
MND=$2
DAY=$3

ORACLE_SID=flex; export ORACLE_SID
SIDUP=`echo $ORACLE_SID |tr [a-z] [A-Z]`
BACK_DEST=/media/usbdisk/backupdata/$ORACLE_SID; export BACK_DEST
# Delete database backup files older than 30 days.
find $BACK_DEST/archive -mtime +15  -exec rm -f {} \;

# Delete archive log files older than 14 days.
find /u01/app/oracle/flash_recovery_area/$SIDUP/archivelog -mtime +14  -exec rm -rf {} \;
find /u01/app/oracle/oradata/$ORACLE_SID/archive -mtime +14  -exec rm -rf {} \;

# Stop database
sqlplus /nolog @shutdown.sql

# Backup database files.
date
tar cvf - /u0?/oradata/$SIDUP | gzip > $BACK_DEST/$ORACLE_SID-$YEAR$MND$DAY.tgz
#tar cvf - /export/home/u01 | gzip > $BACK_DEST/u01-$YEAR$MND$DAY.tgz
/export/home/oracle/rsyncu01.sh
date
# Start database
sqlplus /nolog @startup.sql



