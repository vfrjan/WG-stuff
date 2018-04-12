#!/bin/sh
for host in `cat /root/HP-health/servers`;do
/root/HP-health/health-check.sh $host
done
for host in `cat /root/HP-health/servers-win`;do
/root/HP-health/health-check-win.sh $host
done

#echo -e "Checkservers did run. Any rrors would be in separate mail prior to this" | mailx kraakenj@slb.com -s "DB-checkservers ran"
