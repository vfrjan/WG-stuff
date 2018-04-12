#!/bin/sh
for SID in `cat /export/home/oracle/localdbcopies/ORACLE_SIDs`;do
ORACLE_SID=$SID;export ORACLE_SID
/export/home/oracle/localdbcopies/rsync-rman.sh $SID > /tmp/rsync-rman-$SID.log &
done
