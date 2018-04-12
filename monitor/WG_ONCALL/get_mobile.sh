#!/bin/bash
user=$*
mobile=""
mobile=`./jph $user | grep mobile: | awk -F: '{print $2}' |tr -d '[:alpha:]() '`
if [ `cat ldap_exit` != "0" ];then
	exit
fi
if [ "$mobile" = "" ];then
mobile=+4793440830
fi
echo "$mobile"
