#!/bin/sh
set -x

####################################################################
#
#  Oracle database backup script, db-backup.sh
#  Tor Murberg, Fjord Instruments
#
#
#  30.12.2005 - First release
#  19.10.2006 - Added E option for the tar command to support file
#               size grater than 8 Gb.
#  22.12.2006 - STVG disabled. FJRD is current in production.
#
####################################################################

# Set enviroment variables.
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/9.2.0.1.0; export ORACLE_HOME

PATH=$PATH:/usr/local/bin:/usr/openwin/bin:$ORACLE_HOME/bin

set `date '+%Y %m %d'`
YEAR=$1
MND=$2
DAY=$3

ORACLE_SID=FJRD; export ORACLE_SID

# Delete database backup files older than 30 days.
#find /u04/dbBackup -mtime +30 -name $ORACLE_SID\* -exec rm -f {} \;
#find /u04/dbBackup -mtime +30 -name u01\* -exec rm -f {} \;

# Stop database
sqlplus /nolog @shutdown.sql

# Backup database files.
date
tar cvEf - /u0?/oradata/$ORACLE_SID | gzip > /u06/dbBackup/$ORACLE_SID-$YEAR$MND$DAY.tgz
tar cvEf - /export/home/u01 | gzip > /u06/dbBackup/u01-$YEAR$MND$DAY.tgz

date
# Start database
sqlplus /nolog @startup.sql

# Delete archive log files older than 14 days.
find $ORACLE_BASE/oradata/$ORACLE_SID/archive -mtime +14 -name 1_\* -exec rm -f {} \;


ORACLE_SID=STVG; export ORACLE_SID

# Delete database backup files older than 30 days.
# find /u04/dbBackup -mtime +30 -name $ORACLE_SID\* -exec rm -f {} \;

# Stop database
# sqlplus /nolog @shutdown.sql

# Backup database files.
date
# tar cvEf - /u0?/oradata/$ORACLE_SID | gzip > /u04/dbBackup/$ORACLE_SID-$YEAR$MND$DAY.tgz

date

# Start database
# sqlplus /nolog @startup.sql

# Delete archive log files older than 14 days.
# find $ORACLE_BASE/oradata/$ORACLE_SID/archive -mtime +14 -name 1_\* -exec rm -f {} \;

