sqlplus /nolog @d:\DATABASE_SCRIPTS\drop_su_sublog_cons.sql
imp  su/su file=d:\exports\sublog_cons.dmp  tables=su_sublog_consolidated
sqlplus /nolog @d:\DATABASE_SCRIPTS\update_su_sublog.sql