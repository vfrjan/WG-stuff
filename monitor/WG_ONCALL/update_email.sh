#!/bin/bash
#set -x
while read user;do
./get_mail.sh $user >> tmp_oncall_mail
if [ `cat ldap_exit` != "0" ]; then
	echo "ldap_exit = `cat ldap_exit`"
	exit
fi
done < oncall
cp tmp_oncall_mail oncall_mail
rm tmp_oncall_mail
