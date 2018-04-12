#!/bin/bash
i=0;while read sms; do ONCALL_SMS[$i]=$sms;(( i=$i+1))  ; done < /WG_ONCALL/oncall_sms
echo "${ONCALL_SMS[`cat /WG_ONCALL/CURRENT_ID`]}"
