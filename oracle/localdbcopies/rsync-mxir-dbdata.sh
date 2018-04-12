#!/bin/sh
SID=mxir
cd /media/usbdisk/backupdata/$SID/
rsync -avz --rsh=ssh  --exclude=/u02/oradata/$SID/temp01.dbf $SID:/media/usbdisk/backupdata/$SID/ .
