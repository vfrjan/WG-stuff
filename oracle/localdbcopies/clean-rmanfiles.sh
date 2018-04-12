#!/bin/sh
set -x
for SID in `cat /export/home/oracle/localdbcopies/ORACLE_SIDs`;do
ssh $SID "find /media/usbdisk/backupdata/$SID/rman/ -mtime +10 -exec rm {} \;"
ssh $SID "find /media/usbdisk/backupdata/$SID/archive/ -mtime +10 -exec rm {} \;"
ssh $SID "find /u01/app/oracle/oradata/$SID/archive/ -mtime +10 -exec rm {} \;"
ssh localhost "find /u01/app/oracle/oradata/$SID/archive/ -mtime +10 -exec rm {} \;"

ssh localhost "find /media/usbdisk/backupdata/$SID/rman/ -mtime +10 -exec rm {} \;"
ssh localhost "find /media/usbdisk/backupdata/$SID/archive/ -mtime +10 -exec rm {} \;"
done
