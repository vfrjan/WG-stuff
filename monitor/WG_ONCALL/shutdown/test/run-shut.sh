#!/bin/sh
set -x
INPFILE="/WG_ONCALL/shutdown/shutdown-startup-sequence-test.txt"
#for host in `cat $INPFILE | awk -F : '{print $1}'`;do
while read  hostline;do
host="`echo $hostline | awk -F : '{print $1}'`"
COM="`echo $hostline | awk -F : '{print $4}'`"
USER="`echo $hostline | awk -F : '{print $3}'`"
ssh -l $USER $host $COM &
echo $COM
#echo "$host $COM $USER"
done < $INPFILE

