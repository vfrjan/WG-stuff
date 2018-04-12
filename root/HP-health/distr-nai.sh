#!/bin/sh
set -x
for host in `cat /root/HP-health/servers| grep -v mfgproddb`;do
ssh $host "find /u02/nai -exec touch {} \;"
rsync -av /u02/nai $host:/u02

done
