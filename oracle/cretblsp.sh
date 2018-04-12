#!/bin/sh
set -x


# Set enviroment variables.
ORACLE_BASE=/u01/app/oracle;export ORACLE_BASE
ORACLE_HOME=$ORACLE_BASE/product/9.2.0.1.0; export ORACLE_HOME

PATH=$PATH:/usr/local/bin:/usr/openwin/bin:$ORACLE_HOME/bin


ORACLE_SID=STVG; export ORACLE_SID

sqlplus /nolog  @/export/home/oracle/Tabelstaces.sql

