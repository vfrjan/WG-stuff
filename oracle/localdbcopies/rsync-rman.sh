#!/bin/sh
set -x

SID=$1

cd /media/usbdisk/backupdata/$SID
rsync -avz --rsh=ssh --progress --partial  $SID:/media/usbdisk/backupdata/$SID/rman .
