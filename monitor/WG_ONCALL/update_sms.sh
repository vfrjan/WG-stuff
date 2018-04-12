#!/bin/bash
#set -x
rm tmp_oncall_sms
while read user;do
./get_mobile.sh $user >> tmp_oncall_sms
if [ `cat ldap_exit` != "0" ]; then
	echo "ldap_exit = `cat ldap_exit`"
	exit
fi
done < oncall
cp tmp_oncall_sms oncall_sms
