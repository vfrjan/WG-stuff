#!/bin/bash
set -x
while read user;do
./get_alias.sh $user >> tmp_oncall_alias
if [ `cat ldap_exit` != "0" ]; then
	echo "ldap_exit = `cat ldap_exit`"
	exit
fi
done < oncall
cp tmp_oncall_alias oncall_alias
rm tmp_oncall_alias
