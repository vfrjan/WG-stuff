#!/bin/sh
TH=24
TEMP=`/sbin/hplog -t | grep Ambie | awk '{print $7}' | tr -d '[:alpha:]() '`
(( TEMP=$TEMP+4 ))
echo "Temp reading `date`: $TEMP" >> /WG_ONCALL/temp_env.log
if [ "$TEMP" -gt "$TH" ];then
 echo "WARNING:temperature exceeding treshold: $TH C. Reading: $TEMP C" >> /WG_ONCALL/outage-message
fi
