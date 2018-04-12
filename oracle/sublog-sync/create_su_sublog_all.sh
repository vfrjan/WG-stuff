#!/bin/sh
#set -x
sqlplus /nolog @/export/home/oracle/sublog_sync/delete_sublog_consolidated.sql
sqlplus /nolog @/export/home/oracle/sublog_sync/create-db-links.sql

# Refresh site specific sublog table copies and consolidated.
while read dbdata;do
/export/home/oracle/sublog_sync/create_su_sublog_part.sh $dbdata
done < /export/home/oracle/sublog_sync/databases 

sqlplus /nolog @/export/home/oracle/sublog_sync/drop-db-links.sql

# Set active the newest serialno record.
sqlplus /nolog @/export/home/oracle/sublog_sync/update_su_sublog_cons_active.sql
exp su/su tables=su_sublog_consolidated statistics=none file=/u06/EXPORTS/sublog_consolidated.dmp
#scp /u06/EXPORTS/sublog_consolidated.dmp admin@136.254.57.99:/cygdrive/d/exports
#scp /u06/EXPORTS/sublog_consolidated.dmp Administrator@163.183.121.51:/cygdrive/d/exports
#gzip /u06/EXPORTS/sublog_consolidated.dmp
#scp /u06/EXPORTS/sublog_consolidated.dmp.gz admin@163.183.121.50:/cygdrive/d/exports

#/usr/sfw/bin/rsync -avz --progress /u06/EXPORTS/sublog_consolidated.dmp admin@163.183.121.50:/cygdrive/d/exports

