!/bin/sh
set -x
cd /oratest
/usr/sfw/bin/gtar xvfz /local1/u01.tar.gz
usr/sfw/bin/gtar xvfz /local1/STVG-20060401.tgz
usr/sfw/bin/gtar xvfz /local1/FJRD-20060401.tgz
RACLE_SID=FJRD; export ORACLE_SID

cd /oratest/export/home/oracle
cp listener.ora /u01/app/oracle/product/9.2.0.1.0/network/admin

 Start database
startup.sql


ORACLE_SID=STVG; export ORACLE_SID
 Start database
startup.sql

./cretblsp.sh
./createusers.sh
noarchive.sql

