#!/bin/sh
set -x
rm -f /mfg_images/DB-backup/ProligentDB-kitr/2thefiler/*
ssh Administrator@prol-kitr cmd /c D:/\DB-scripts/\copy_newestfile.cmd
scp Administrator@prol-kitr:/cygdrive/d/backup/2thefiler/* /mfg_images/DB-backup/ProligentDB-kitr/2thefiler/
