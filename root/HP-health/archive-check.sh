#!/bin/sh
#set -x
SID=$1
UpDated=`find /media/usbdisk/backupdata/$SID/archive -mtime -1`
if test -z "$UpDated" ;then
  echo -e "No archives received from  $SID in 24 hours " | mailx kraakenj@slb.com -s "MFG-ATTENTION: No archives from $SID"
 exit
fi

 
