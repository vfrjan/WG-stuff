#!/bin/sh
set -x
SID=FJRD
rsync -av --delete /u01/app/oracle/fast_recovery_area/$SID/archivelog /mfg_images/DB-backup/${SID}
SID=mzus
rsync -av --delete /u01/app/oracle/fast_recovery_area/MZUS/archivelog /mfg_images/DB-backup/${SID}
