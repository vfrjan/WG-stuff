#!/bin/sh
for user in `cat user_tblsp_mzus |awk '{print $1}' | grep -v VCUSER`;do
./import-mzus.sh $user
done
