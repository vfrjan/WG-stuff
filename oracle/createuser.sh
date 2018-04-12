#!/bin/sh
USER=$1
TBLSP=$2
OF=create_users.sql
echo "CREATE USER $USER" >> $OF
echo "IDENTIFIED BY $USER" >> $OF
echo "DEFAULT TABLESPACE $TBLSP" >> $OF
echo "TEMPORARY TABLESPACE TEMP" >> $OF
echo "QUOTA UNLIMITED on $TBLSP;" >> $OF
echo "GRANT create session, create table TO $USER;" >> $OF

