#!/bin/sh
for host in `cat /root/HP-health/servers`;do
/root/HP-health/fs-usage.sh $host
done
#echo -e "Checkservers did run. Any rrors would be in separate mail prior to this" | mailx kraakenj@slb.com -s "DB-checkservers ran"
