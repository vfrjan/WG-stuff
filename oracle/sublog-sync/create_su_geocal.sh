#!/bin/sh
set -x
sqlplus /nolog @/export/home/oracle/sublog_sync/create-db-links.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/create_su_geocal.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/drop-db-links.sql
exp su/su tables=su_geocal statistics=none file=/u06/EXPORTS/geocal.dmp
/usr/sfw/bin/rsync -avz --progress /u06/EXPORTS/geocal.dmp admin@163.183.121.50:/cygdrive/d/exports
