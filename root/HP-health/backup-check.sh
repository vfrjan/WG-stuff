#!/bin/sh
SERVER=$1
echo "Checking if backup ran on $SERVER"
Backup=`ssh $SERVER find /media/usbdisk/backupdata/$SERVER/rman -mtime -3`
echo "Backup: $Backup"
if test -z "$Backup";then
 echo -e "Backup of $SERVER is not run" | mailx kraakenj@slb.com -s "MFG-ATTENTION: No backup of $SERVER"
 exit
fi


