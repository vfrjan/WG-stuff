#!/bin/sh
set -x
sqlplus /nolog @/export/home/oracle/sublog_sync/create-db-links.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/create_su_sublog_copies.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/drop-db-links.sql
#sqlplus /nolog @/export/home/oracle/sublog_sync/update_su_sublog_cons_active.sql
#exp su/su tables=su_sublog_consolidated statistics=none file=/u06/EXPORTS/sublog_consolidated.dmp
#scp /u06/EXPORTS/sublog_consolidated.dmp admin@136.254.57.99:/cygdrive/d/exports
