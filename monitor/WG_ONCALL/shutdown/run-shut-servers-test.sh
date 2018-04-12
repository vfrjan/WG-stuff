#!/bin/sh
set -x
echo "Shutting down servers" >> /WG_ONCALL/outage-message
INPFILE="/WG_ONCALL/shutdown/shutdown-sequence-servers-test.txt"
#for host in `cat $INPFILE | awk -F : '{print $1}'`;do
while read  hostline;do
host="`echo $hostline | awk -F : '{print $1}'`"
COMD="`echo $hostline | awk -F : '{print $4}'`"
USER="`echo $hostline | awk -F : '{print $3}'`"
ssh -l $USER $host $COMD > /ADMIN/log/$host.log &
#echo $COMD
echo "$host $COMD $USER"
done < $INPFILE
#sleep 480;/WG_ONCALL/shutdown/run-shut-infra.sh &
