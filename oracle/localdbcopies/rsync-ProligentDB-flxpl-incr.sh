#!/bin/sh
set -x
rsync -av -L --progress --partial Administrator@192.23.244.60:/cygdrive/g/backup/Differential /mfg_images/DB-backup/ProligentDB-flxpl
