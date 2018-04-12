#!/bin/sh
#set -x
while [ -f /WG_ONCALL//jan/sending.now ];do
       sleep 5
done
touch /WG_ONCALL/jan/checking.now
for IP in `cat /WG_ONCALL/jan/clients.txt`; do
	echo "$(date) Checking router $IP" > /tmp/$IP.log
	NetworkDown=`nmap -sP $IP | grep "(0 hosts up)"`
#	echo "NetworkDown: $NetworkDown"
	if test -n "$NetworkDown";then
 		echo -e "$IP is down `date`"  >> /WG_ONCALL/jan/netw-outage
 		echo -e "$IP is down"  >> /WG_ONCALL/outage-message
	fi
done
rm /WG_ONCALL/jan/checking.now
