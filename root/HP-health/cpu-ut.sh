#!/bin/bash
# Set up limit below
SERVER=$1
NOTIFY="2.00"
FTEXT='load average:'

# 15 min
F15M="$(ssh $SERVER uptime | awk -F "$FTEXT" '{ print $2 }' | cut -d, -f3)"

# compare it with last 15 min load average
RESULT=$(echo "$F15M > $NOTIFY" | bc)
# if load >= 6.0 create a file /tmp/file.txt
if [ "$RESULT" == "1" ]; then
        echo "LOAD ISSUE on $SERVER 15 min. average ($F15M) is more than $NOTIFY" | mailx kraakenj@slb.com -s "MFG-ATTENTION: Cpu load issue on $SERVER"
        echo "LOAD ISSUE on $SERVER 15 min. average ($F15M) is  more than $NOTIFY" 
fi
