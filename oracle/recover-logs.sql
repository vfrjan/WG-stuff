conn / as sysdba
startup mount
recover database until cancel using backup controlfile;
auto
alter database open resetlogs;
exit
