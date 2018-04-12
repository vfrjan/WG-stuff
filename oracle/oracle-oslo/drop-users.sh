#!/bin/sh
rm drop-users.sql
#Creates a sql-script which drops all users.
for  user in `cat ./user_tblsp | awk '{print $1}'`;do
echo "drop user $user cascade;" >> drop-users.sql
done

