#!/bin/sh
set -x
for esx in `cat /WG_ONCALL/shutdown/shutdown-sequence-infra.txt | grep no0030vsc | awk -F : '{print $4}' | awk '{print $2}'` ;do
 NetworkUp=`nmap -sP $esx | grep "(1 host up)"`
 if test -n "$NetworkUp";then
  exit
 fi
done
ssh fs2 halt -t 5
