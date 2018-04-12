#!/bin/bash
# Set up limit below
SERVER=$1
NOTIFY="2500"
FTEXT='Total:'

# Free total mem
FREEM="$(ssh $SERVER free -t -m  | grep $FTEXT| awk '{ print $4 }')"

# Compare with treshold
RESULT=$(echo "$FREEM < $NOTIFY" | bc)
# 
if [ "$RESULT" == "1" ]; then
        echo " MEMORY ISSUE on $SERVER only $FREEM MB available is less than $NOTIFY" | mailx kraakenj@slb.com -s "MFG-ATTENTION: Memory issue on $SERVER"
        echo " MEMORY ISSUE on $SERVER only $FREEM MB available is less than $NOTIFY"
fi
