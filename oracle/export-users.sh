#!/bin/sh
for user in `cat usr_tbl | awk '{print $1}'`;do
./export.sh $user
done

