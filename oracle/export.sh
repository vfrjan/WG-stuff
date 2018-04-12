#!/bin/sh
USER=$1
exp \'/ as sysdba\' OWNER=$USER rows=y FILE=/media/usbdisk/DBexports/kitr/$USER.dmp direct=y log=/media/usbdisk/DBexports/kitr/$USER.log

