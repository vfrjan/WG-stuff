#!/bin/sh
set -x

SID=$1
LockFile=/export/home/oracle/localdbcopies/rsync-$SID.lck
if [ -f $LockFile ]; then
 exit
else
 touch $LockFile
fi

cd /media/usbdisk/backupdata/$SID/archive
rsync -avz --rsh=ssh  $SID:/export/home/u01/app/oracle/oradata/$SID/archive/ .
rm $LockFile
