#!/bin/sh
#set -x
ORACLE_HOME=/u01/app/oracle/product/10.2.0/db;export ORACLE_HOME
ORACLE_SID=$1;export ORACLE_SID
#output=`sqlplus -s "prod/prod" <<EOF
#       set heading off feedback off verify off
#       select * from mysite;
#       exit
#EOF
#`
#echo "mysite_id = $output"
output=`/u01/app/oracle/product/10.2.0/db/bin/sqlplus -s "/ as sysdba" <<EOF
       set heading off feedback off verify off
       select distinct machine from v\\$session;
       exit
EOF
`
echo $output


 
