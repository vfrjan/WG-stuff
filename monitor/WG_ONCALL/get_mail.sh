#!/bin/bash
user=$*
mail=""
mail=`./mph $user | grep mail: | awk -F: '{print $2}'`
#mail=`./mph $user | grep mail: | awk -F: '{print $2}' |tr -d '[:alpha:]() '`
if [ `cat ldap_exit` != "0" ];then
	exit
fi
echo "$mail"
