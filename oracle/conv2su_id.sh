#!/bin/sh
set -x
id=$1
hid=`printf "%x\n" $id`
suidlow=`echo $((0x${hid}000000))`
echo "$hid"

