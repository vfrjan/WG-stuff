#!/bin/bash
set -x
export NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P1
ORACLE_SID=MZUS
export ORACLE_SID
USER=$1
imp \'/ as sysdba\' file=/EXPORTS/db-dumps/$USER.dmp log=/EXPORTS/db-dumps/$USER-imp.log touser=$USER fromuser=$USER
