#!/bin/sh
set -x
rm -f /mfg_images/DB-backup/ProligentDB-kitr/2thefiler/*
ssh Administrator@prol-kitr cmd /c D:/\DB-scripts/\copy_newestfile.cmd
rsync -av -L --progress --partial  Administrator@prol-kitr:/cygdrive/d/backup/2thefiler /mfg_images/DB-backup/ProligentDB-kitr
rsync -avz -L --progress --partial  Administrator@prol-kitr:/cygdrive/d/Proligent/DocumentIntegrationService /mfg_images/DB-backup/ProligentDB-kitr
