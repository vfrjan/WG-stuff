#!/bin/sh
OF=create_users.sql
IF=user_tblsp
echo "connect / as sysdba" > $OF
#Build the sql script
while read utbl;do
./createuser.sh `echo $utbl | awk '{print $1, $2}'`
done <$IF 
#Run the sql script

sqlplus /nolog @$OF

