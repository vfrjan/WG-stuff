#!/bin/sh
TH=20
TEMP=`ssh lins09.oslo-no0030.slb.com /sbin/hplog -t | grep Ambie | awk '{print $7}' | tr -d '[:alpha:]() '`
#(( TEMP=$TEMP+4 ))
echo "Temp reading `date`: $TEMP" >> /WG_ONCALL/temp_env.log
echo "`date`;$TEMP" > /nett-temp/noventri/it/current-temp.txt
if [ "$TEMP" -gt "$TH" ];then
 echo "WARNING:temperature exceeding treshold: $TH C. Reading: $TEMP C" >> /WG_ONCALL/outage-message
fi
