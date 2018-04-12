#!/bin/bash
set -x
export NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P1
ORACLE_SID=FJRD
export ORACLE_SID
USER=full
imp \'/ as sysdba\' file=/u02/db-dumps/$USER.dmp log=/u02/db-dumps/$USER-imp.log full=yes ignore=yes
