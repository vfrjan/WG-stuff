#!/bin/sh
set -x
echo "Shutting down esx" >> /WG_ONCALL/outage-message
INPFILE="/WG_ONCALL/shutdown/shutdown-sequence-esx-100313.txt"
#for host in `cat $INPFILE | awk -F : '{print $1}'`;do
while read  hostline;do
host="`echo $hostline | awk -F : '{print $1}'`"
COMD="`echo $hostline | awk -F : '{print $4}'`"
USER="`echo $hostline | awk -F : '{print $3}'`"
ssh -l $USER $host $COMD &
#echo $COMD
echo "$host $COMD $USER"
done < $INPFILE

