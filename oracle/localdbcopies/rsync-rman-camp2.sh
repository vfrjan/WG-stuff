#!/bin/sh
set -x
SID=camp2
LockFile=/export/home/oracle/localdbcopies/rsync-$SID.lck
if [ -f $LockFile ]; then
 exit
else
 touch $LockFile
fi

rsync -av Administrator@163.183.78.144:/cygdrive/d/backupdata/rman /mfg_images/DB-backup/camp2/
rsync -avz Administrator@163.183.78.144:/cygdrive/d/oracle/product/10.2.0/flash_recovery_area/CAMP2/ARCHIVELOG /mfg_images/DB-backup/camp2
rm $LockFile
