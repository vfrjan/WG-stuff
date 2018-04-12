startup nomount
restore controlfile from '/media/usbdisk/backupdata/flex/rman/';
alter database mount;
restore database;
recover database;
sql 'alter database noarchivelog';
quit
