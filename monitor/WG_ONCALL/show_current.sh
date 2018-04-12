#!/bin/bash
#set -x
i=0;while read user; do ONCALL[$i]=$user;(( i=$i+1))  ; done < /WG_ONCALL/oncall
i=0;while read sms; do ONCALL_SMS[$i]=$sms;(( i=$i+1))  ; done < /WG_ONCALL/oncall_sms
echo "Currently oncall: ${ONCALL[`cat /WG_ONCALL/CURRENT_ID`]} ${ONCALL_SMS[`cat /WG_ONCALL/CURRENT_ID`]}"
