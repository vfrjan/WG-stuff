#!/bin/sh
SID=$1
cd /media/usbdisk/backupdata/$SID/
rsync -avz --rsh=ssh --progress --exclude=/export/home/u01/app/oracle/oradata/$SID/temp01.dbf $SID:/media/usbdisk/backupdata/$SID/ .
