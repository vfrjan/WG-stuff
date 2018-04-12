#!/bin/sh
set -x
rm -f /mfg_images/DB-backup/ProligentDB-flxpl/2thefiler/*
ssh Administrator@192.23.244.60 cmd /c D:/\DB-scripts/\copy_newestfile.cmd
rsync -av -L --progress --partial Administrator@192.23.244.60:/cygdrive/g/backup/2thefiler /mfg_images/DB-backup/ProligentDB-flxpl
