#!/bin/sh
for host in `cat /root/HP-health/servers | grep -vE 'mfgproddb'`;do
rsync -avz  root@$host:/var/www/html/mrtg /var/www/html
done
