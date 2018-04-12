#!/bin/sh
user="su"
pass="su"
db=$1
sql="select 1 from dual@su_$db"
sqlplus -S $user/$pass <<END
WHENEVER SQLERROR EXIT 13;
$sql;
EXIT 0;
END
if [ $? -ne 0 ]; then
	echo "DB link to $db not working"
	exit 1
fi

