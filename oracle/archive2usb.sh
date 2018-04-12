#!/bin/sh
SID=kitr
rsync -av /u01/app/oracle/oradata/$SID/archive /media/usbdisk/backupdata/$SID
