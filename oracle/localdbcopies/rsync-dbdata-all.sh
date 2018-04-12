#!/bin/sh
for SID in `cat ORACLE_SIDs`;do
ORACLE_SID=$SID;export ORACLE_SID
./rsync-dbdata.sh $SID > /tmp/rsync-db-$SID.log &
done
