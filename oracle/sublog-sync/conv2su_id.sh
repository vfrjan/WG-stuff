#!/usr/bin/bash
#set -x
id=$1
let idu=$id+1
hid=`printf "%x\n" $id`
hidu=`printf "%x\n" $idu`
suidlow=`echo $((0x${hid}000000))`
suidhig=`echo $((0x${hidu}000000))`
let suidhig=$suidhig-1
echo "$suidlow $suidhig"
