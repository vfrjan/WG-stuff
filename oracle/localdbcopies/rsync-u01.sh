#!/bin/sh
SID=$1
cd /media/usbdisk/backupdata/$SID/export
rsync -avz --rsh=ssh  --exclude "home/u01/app/oracle/oradata/kitr/temp01.dbf" $SID:/media/usbdisk/backupdata/$SID/export/ .
