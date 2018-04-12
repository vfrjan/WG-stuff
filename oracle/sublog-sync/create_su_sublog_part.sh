#!/bin/sh
#set -x
DB=$1
REM=$2
SID=$3
PARTID=$4
SUBID=`/export/home/oracle/sublog_sync/conv2su_id.sh $SID`
echo $SUBID
/export/home/oracle/sublog_sync/check-link.sh $DB > /dev/null
if [ $? = 0 -a "$REM" = "rem" ];then
 echo "Updating sublog from $DB"
 sqlplus /nolog @/export/home/oracle/sublog_sync/create_su_sublog_part.sql $DB $SUBID $PARTID
else
 echo "No action performed on su_sublog_$DB"
fi
#sqlplus /nolog @/export/home/oracle/sublog_sync/update_su_sublog_part_active.sql $DB
sqlplus /nolog @/export/home/oracle/sublog_sync/copy_sublog_part_2_consolidated.sql $DB
