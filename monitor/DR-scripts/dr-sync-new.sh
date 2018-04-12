#!/bin/bash
set -x
date
for server in `cat /ADMIN/WGBA/DR-scripts/servers-new`;do
 rm -f /ADMIN/WGBA/DR-scripts/$server-files
 echo "Syncing $server"
 ssh $server "ssh dr-$server uname -a"
 ssh dr-$server xpath /local1/disasterrecovery/copyconfiguration '/filecontent' | grep -v filecontent | grep -v "^#" > /ADMIN/WGBA/DR-scripts/$server-files
 if  [ -f /ADMIN/WGBA/DR-scripts/$server-files ];then
	ssh dr-$server /local1/disasterrecovery/stop.sh
	for file in `cat /ADMIN/WGBA/DR-scripts/$server-files`;do
       		ssh $server "rsync --delete -avR --progress  $file root@dr-$server:/"
	done
	ssh dr-$server /local1/disasterrecovery/configure.sh
	ssh dr-$server /local1/disasterrecovery/start.sh
 fi
 date
done
