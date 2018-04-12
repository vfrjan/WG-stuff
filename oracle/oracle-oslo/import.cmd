#!/bin/sh

 ORACLE_SID=STVG
export ORACLE_SID

imp \'/ as sysdba\' file=/local1/$USER.dmp log=/local1/imp3.log touser=$USER fromuser=$USER
