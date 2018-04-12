#!/bin/sh
set -x
ORACLE_SID=STVG
export ORACLE_SID
USER=$1
imp \'/ as sysdba\' file=/export/home/jan/tbldmp/$USER.dmp log=/export/home/oracle/tbldmp/$USER.log touser=$USER fromuser=$USER

