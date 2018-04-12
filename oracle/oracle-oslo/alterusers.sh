#!/bin/sh
OF=alter_users.sql
IF=user_tblsp
echo "connect / as sysdba" > $OF
#Build the sql script
while read utbl;do
/home/oracle/oracle-oslo/alteruser.sh `echo $utbl | awk '{print $1, $2}'` >> $OF
done <$IF 
echo "quit" >> $OF
#Run the sql script

#sqlplus /nolog @$OF

