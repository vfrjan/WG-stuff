#!/bin/bash
tail -40 /WG_ONCALL/oncall_history | tac > /WG_ONCALL/onc-h-40
while read line;do
echo "$line <BR>"
done < /WG_ONCALL/onc-h-40
rm -f /WG_ONCALL/onc-h-40
