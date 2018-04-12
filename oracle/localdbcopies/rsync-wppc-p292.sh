#!/bin/sh
SID=wppc
LockFile=/export/home/oracle/localdbcopies/rsync-$SID.lck
if [ -f $LockFile ]; then
 exit
else
 touch $LockFile
fi

cd /media/usbdisk/backupdata/$SID/
rsync -avz -e "ssh -p 292" --progress --partial  --exclude=/export/home/u01/app/oracle/oradata/$SID/temp01.dbf $SID:/media/usbdisk/backupdata/$SID/ .
rm $LockFile
