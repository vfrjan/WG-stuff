#!/bin/sh
#Creates a sql-script which drops all tablespaces.
echo "conn / as sysdba" > drop-tblsp.sql
for  tblsp in `cat /home/oracle/oracle-oslo/user_tblsp | awk '{print $1}'`;do
echo "drop tablespace ${tblsp}_DATA including contents;" >> drop-tblsp.sql
echo "drop tablespace ${tblsp}_IND including contents;" >> drop-tblsp.sql
done

