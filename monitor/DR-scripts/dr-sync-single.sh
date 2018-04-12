#!/bin/bash
#set -x
 if [ -z "$1" ]
  then
   echo "Usage $0 server"
   exit
 fi 
 server=$1
 dr_server=`grep $server /ADMIN/WGBA/DR-scripts/servermap  | awk '{ print $2 }'` 
 rm -f /ADMIN/WGBA/DR-scripts/logs/$server-files-include-*
 rm -f /ADMIN/WGBA/DR-scripts/logs/$server-files-exclude-*
 rm -f /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-*

 ssh $dr_server /local1/disasterrecovery/stop.sh
 for ((j=1;j<=100;j++)); do
#  echo "$j"
  export j
  ssh $server "ssh $dr_server uname -a"
  ssh $dr_server  xpath /local1/disasterrecovery/copyconfiguration '/filecontent/copy['$j']/attribute::directory'  |  sed -e  "s/directory\=\"//g" | sed -e "s/\"//g"|strings > /ADMIN/WGBA/DR-scripts/logs/$server-files-include-$j
  ssh $dr_server  xpath /local1/disasterrecovery/copyconfiguration '/filecontent/copy['$j']/exclude/attribute::directory'  |  sed -e  "s/directory\=\"//g" | sed -e "s/\"//g"|strings > /ADMIN/WGBA/DR-scripts/logs/$server-files-exclude-$j
  REDIR=""
  NODIR=""
  FILE=`cat /ADMIN/WGBA/DR-scripts/logs/$server-files-include-$j`
  if [ "$FILE" = "" ] ;then 
   break
  fi
#  echo "FILE = $FILE"
  let "NODIR=`echo $FILE | awk -F / '{print NF}'` - 1" 
  PREVDIR=""
  for ((i=2;i<=$NODIR; i++));do DIR=`echo $FILE | awk -F / '{print $'$i'}'`;REDIR[i]=$PREVDIR/$DIR;echo + $PREVDIR/$DIR/;PREVDIR=$PREVDIR/$DIR; done > /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-$j
   echo "+$FILE" >> /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-$j
  for EXFILE in `cat /ADMIN/WGBA/DR-scripts/logs/$server-files-exclude-$j`;do
   echo "- $EXFILE/*" >> /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-$j
   echo "- $EXFILE" >> /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-$j
  done
# echo "NODIR = $NODIR"
 for ((i=$NODIR;i>=2;i--));do echo "- ${REDIR[i]}/*" >> /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-$j
 done
 echo "- /*" >> /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-$j
 scp /ADMIN/WGBA/DR-scripts/logs/$server-merged-files-$j $server:/tmp
 ssh $server "rsync --delete -avR -e 'ssh -p 292' --filter='merge /tmp/${server}-merged-files-$j' / root@$dr_server:/"
 done
ssh $dr_server /local1/disasterrecovery/configure.sh
ssh $dr_server /local1/disasterrecovery/start.sh
