#!/bin/sh
SID=kitl
cd /media/usbdisk/backupdata/$SID/
rsync -avz --rsh=ssh  --exclude=/export/home/u01/app/oracle/oradata/kitr/temp01.dbf 192.23.171.154:/media/usbdisk/backupdata/$SID/ .
