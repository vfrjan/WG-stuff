#!/bin/bash
#set -x
function rot_mess {
        mv /WG_ONCALL/outage-message.0 /WG_ONCALL/outage-message.1
        mv /WG_ONCALL/outage-message /WG_ONCALL/outage-message.0
        rm /WG_ONCALL/sending.now
}
pagerno=`/WG_ONCALL/show_current_sms.sh`
#pagerno="+4790084823"
heartbeat=""
if [ -s /WG_ONCALL/outage-message ];then
	while [ -f /WG_ONCALL/checking.now ];do
                sleep 5
        done
	heartbeat=`grep Heartbeat /WG_ONCALL/outage-message`
	touch /WG_ONCALL/sending.now
	cmp /WG_ONCALL/outage-message /WG_ONCALL/outage-message.0
	leq=$?
	cmp /WG_ONCALL/outage-message.1 /WG_ONCALL/outage-message.0
	peq=$?
	if ([ "$leq" == "0" ]  && [ "$peq" == "0" ] && [ "$heartbeat" == "" ]);then
		if [ ! -f /WG_ONCALL/suppressing ];then
			echo "Sending a new message from WG_ONCALL `date`"	
			echo "`cat /WG_ONCALL/outage-message` `date` Suppressing further similar messages"| /usr/local/bin/gnokii --sendsms $pagerno
			touch /WG_ONCALL/suppressing
		else
			echo "Message suppressed `date`"
		fi
	rot_mess
	exit
	fi
	echo "Sending a new message from WG_ONCALL `date`" 
	echo "`cat /WG_ONCALL/outage-message` `date`"| /usr/local/bin/gnokii --sendsms $pagerno -l 1000
	rot_mess
	if [ -f /WG_ONCALL/suppressing ];then
		rm /WG_ONCALL/suppressing
	fi
fi

