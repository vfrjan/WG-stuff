#!/bin/sh
set -x
sqlplus /nolog @/export/home/oracle/sublog_sync/create-db-links.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/create_su_sublog_consolodited.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/drop-db-links.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/update_su_sublog_cons_active.sql
exp su/su tables=su_sublog_consolidated statistics=none file=/u06/EXPORTS/sublog_consolidated.dmp
#scp /u06/EXPORTS/sublog_consolidated.dmp admin@136.254.57.99:/cygdrive/d/exports
#scp /u06/EXPORTS/sublog_consolidated.dmp Administrator@163.183.121.51:/cygdrive/d/exports
compress /u06/EXPORTS/sublog_consolidated.dmp
scp /u06/EXPORTS/sublog_consolidated.dmp.Z admin@163.183.121.50:/cygdrive/d/exports

/usr/sfw/bin/rsync -avz --progress /u06/EXPORTS/sublog_consolidated.dmp admin@163.183.121.50:/cygdrive/d/exports
