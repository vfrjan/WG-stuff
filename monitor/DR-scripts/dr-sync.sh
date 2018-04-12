#!/bin/bash
set -x
date
for server in `cat /ADMIN/WGBA/DR-scripts/servers`;do
 echo "starting sync of $server `date`" 
 rm -f /ADMIN/WGBA/DR-scripts/logs/$server-files
 echo "Syncing $server"
 /ADMIN/WGBA/DR-scripts/dr-sync-single.sh $server > /ADMIN/WGBA/DR-scripts/logs/$server-files
 echo "finished sync of $server `date`"
done
