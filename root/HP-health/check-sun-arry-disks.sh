#!/bin/sh
#set -x
for host in `cat /root/HP-health/servers-sol`;do
ArrayNok=`ssh $host /ADMIN/check-array-disks.sh`
if [  -n "$ArrayNok" ];then
 echo "$ArrayNok"  | mailx kraakenj@slb.com -s "MFG-ATTENTION: Array disk issue on  $host" 
fi

done
