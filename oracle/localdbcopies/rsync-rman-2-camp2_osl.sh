#!/bin/sh
set -x

rsync -av /mfg_images/DB-backup/camp2/rman Administrator@srv014osl.oslo.eur.slb.com:/cygdrive/d/backupdata
rsync -av /mfg_images/DB-backup/camp2/ARCHIVELOG Administrator@srv014osl.oslo.eur.slb.com:/cygdrive/d/oracle/product/10.2.0/flash_recovery_area/CAMP2
ssh Administrator@srv014osl.oslo.eur.slb.com chmod 777 /cygdrive/d/backupdata/rman/*
ssh Administrator@srv014osl.oslo.eur.slb.com chmod -R 777 /cygdrive/d/oracle/product/10.2.0/flash_recovery_area/CAMP2
