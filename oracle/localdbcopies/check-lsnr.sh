#!/bin/sh
#set -x
# Check if tnslsnr is running, restart if not.
tnslsnrrun="`ps -ef | grep tnslsnr | grep -v grep`"
if [  -z "$tnslsnrrun" ];then
        su - oracle -c "lsnrctl start"
        echo "restarting tnslsnr"
        echo " Listener restarted `date`" | mailx kraakenj@slb.com -s "MFG-ATTENTION: Listener restarted on mfgproddb"
fi
exit

