#!/bin/bash
#set -x
i=`/bin/cat /WG_ONCALL/CURRENT_ID`
(( i=$i+1 ))
if [ "$i" -ge `/bin/cat /WG_ONCALL/oncall |/usr/bin/wc -l` ];then
 i=0
fi
/bin/echo "$i" > /WG_ONCALL/CURRENT_ID
#/WG_ONCALL/show_current.sh
