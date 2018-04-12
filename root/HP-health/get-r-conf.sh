#!/bin/sh
for router in `cat /etc/hosts | grep R- | grep -v R-MFGPRODDB| awk '{print $2}'`;do
	/root/HP-health/get-router-config $router
done


