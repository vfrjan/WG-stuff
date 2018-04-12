#!/bin/sh
set -x
OF=create_tablespaces.sql
IF=user_tblsp
DATAPATH=/u02/oradata/$ORACLE_SID
function MKTBLSP {
echo create $2 tablespace \"$1\" logging >> $OF
echo datafile \'$DATAPATH/$1.ora\' size 100M reuse autoextend  >> $OF
echo on next 10M extent management local \;  >> $OF
}
echo "connect / as sysdba" > $OF
#Build the sql script
while read utbl;do
DATATBS=""
INDTBS=""
BIGFILE=""
DATATBS=`echo $utbl | awk '{print $2}'`
INDTBS=`echo $utbl | awk '{print $3}'`
BIGFILE=`echo $utbl | awk '{print $4}'`
MKTBLSP $DATATBS $BIGFILE
if [ "$INDTBS" != "" ];then 
MKTBLSP $INDTBS  
fi
done <$IF 
#Run the sql script

sqlplus /nolog @$OF

