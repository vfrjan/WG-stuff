#!/bin/sh
SID=flex
cd /media/usbdisk/backupdata/$SID/
rsync -avz --rsh=ssh  --exclude=/export/home/u01/app/oracle/oradata/$SID/temp01.dbf $SID:/media/usbdisk/backupdata/$SID/ .
