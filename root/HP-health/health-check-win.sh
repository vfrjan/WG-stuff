#!/bin/sh
set -x
SERVER=$1

echo "Checking $SERVER"
HostDown=`nmap -sP $SERVER | grep "(0 hosts up)"`
if test -n "$HostDown";then
 echo -e "Server $SERVER is down" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER is down"
 exit
fi

rm -f /root/HP-health/diagout.$SERVER
if [ $SERVER == "prol-plex" ];then
 ssh administrator@$SERVER cmd /c  C:/\hp/\hpdiags/\hpdiags.exe -f -p -o diagout
 scp administrator@$SERVER:/cygdrive/c/hp/hpdiags/diagout /root/HP-health/diagout.$SERVER
else
 ssh Administrator@$SERVER cmd /c  C:/\hp/\hpdiags/\hpdiags.exe -f -p -o diagout
 scp Administrator@$SERVER:/cygdrive/c/hp/hpdiags/diagout /root/HP-health/diagout.$SERVER
fi

#Check for powerfailure
PowerFailure=`/bin/cat /root/HP-health/diagout.$SERVER | grep "Redundant Power Supply Mode"`
echo "PowerFailure: $PowerFailure"
if test -z "$PowerFailure";then
 echo -e "Server $SERVER has a power failure. No redundancy" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER has a PS failure"
fi


#Check for diskfailure
DiskFailure=`/bin/cat /root/HP-health/diagout.$SERVER | grep "Logical Drive" | grep RAID | grep -v OK`
echo DiskFailure:$DiskFailure
if test -n "$DiskFailure";then
 echo -e "Server $SERVER has a disk failure. No redundancy" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER has a disk failure"
fi


