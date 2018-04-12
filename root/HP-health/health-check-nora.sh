#!/bin/sh
SERVER=$1
NETWORK="R-${SERVER}"
echo "Checking Network-router $NETWORK"
NetworkDown=""
#NetworkDown=`nmap -sP $NETWORK | grep "(0 hosts up)"`
echo "NetworkDown: $NetworkDown"
if test -n "$NetworkDown";then
 echo -e "Network for $SERVER is down" | mailx kraakenj@slb.com -s "MFG-ATTENTION: Netw. for $SERVER is down"
 exit
fi
echo "Checking $SERVER"
HostDown=""
#HostDown=`nmap -sP $SERVER | grep "(0 hosts up)"`
echo "HostDown: $HostDown"
if test -n "$HostDown";then
 echo -e "Server $SERVER is down" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER is down"
 exit
fi
#Check redundant Power Supply
PowerFailure=`ssh $SERVER hplog -p | grep Supply | grep -v Yes`
echo "PowerFailure: $PowerFailure"
if test -n "$PowerFailure";then
 echo -e "Server $SERVER has a power failure. No redundancy" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER has a PS failure"
fi
#Check disk redundancy
ssh $SERVER hpaducli -f /tmp/disk-stat
#DiskFailure=`ssh kitr grep Drive  /tmp/disk-stat | grep Status` 
DiskFailure=`ssh $SERVER grep \'Drive Status:\' /tmp/disk-stat | grep -v OK`
echo "DiskFailure: $DiskFailure"
if test -n "$DiskFailure";then
 echo -e "Server $SERVER has a disk failure. No redundancy" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER has a disk failure"
fi

#Check redundant FANS
FanFailure=`ssh $SERVER hplog -f | grep -v LOCATION | grep -v Yes`
echo "FanFailure: $FanFailure"
if test -n "$FanFailure";then
 echo -e "Server $SERVER has a fan failure. No redundancy" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER has a FAN failure"
fi


