#!/bin/sh
set -x
for alias in `cat /WG_ONCALL/oncall_alias`;do
echo "`/WG_ONCALL/show_current.sh` `cat /WG_ONCALL/current_info.txt`" | mailx ${alias}@slb.com -s "Weekly oncall info"
done
