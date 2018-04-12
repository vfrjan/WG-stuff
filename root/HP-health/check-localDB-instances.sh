#!/bin/sh
#set -x
for host in `cat /root/HP-health/servers| grep -v mfgproddb`;do
DBrunning=`su - oracle -c "/export/home/oracle/localdbcopies/check-instance.sh $host" | grep mfgproddb`
if [  -z "$DBrunning" ];then
 echo "DB instance $host not running"  | mailx kraakenj@slb.com -s "MFG-ATTENTION: DB $host not running on mfgproddb"
fi

done
