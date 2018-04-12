#!/bin/sh
echo "Shutting down esx hosts and filers" >> /WG_ONCALL/outage-message
#set -x
INPFILE="/WG_ONCALL/shutdown/shutdown-sequence-infra-test.txt"
#for host in `cat $INPFILE | awk -F : '{print $1}'`;do
while read  hostline;do
host="`echo $hostline | awk -F : '{print $1}'`"
COMD="`echo $hostline | awk -F : '{print $4}'`"
USER="`echo $hostline | awk -F : '{print $3}'`"
ssh -l $USER $host $COMD &
#echo $COMD
echo "$host $COMD $USER"
done < $INPFILE

