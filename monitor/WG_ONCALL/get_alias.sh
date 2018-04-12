#!/bin/bash
user=$*
alias=""
alias=`./aph $user | grep alias: | awk -F: '{print $2}'`
if [ `cat ldap_exit` != "0" ];then
	exit
fi
echo "$alias"
