#!/bin/sh
set -x
#ssh Administrator@no0030srv022.dir.slb.com cmd /c D:/\DB-scripts/\copy_newestfile.cmd
rsync -av --delete --progress Administrator@no0030srv022.dir.slb.com:/cygdrive/g/OLTP /mfg_images/DB-backup/ProligentDB
