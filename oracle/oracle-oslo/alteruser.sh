#!/bin/sh
USER=$1
TBLSP=$2
OF=alter_users.sql
echo "ALTER USER $USER" 
echo "IDENTIFIED BY $USER;" 

