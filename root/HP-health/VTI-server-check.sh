#!/bin/sh
SERVER=VTI-ftp-server
VTIdown=`ssh hapr "nmap -p 292 localhost" | grep "292/tcp closed unknown"`
echo "VTIdown: $VTIdown"
if test -n "$VTIdown";then
	echo -e "Server $SERVER is down" | mailx kraakenj@slb.com -s "MFG-ATTENTION: $SERVER is down"
	exit
fi
