#!/bin/sh
RemoteDB=$1
ssh $RemoteDB /export/home/oracle/check-instance.sh $RemoteDB
