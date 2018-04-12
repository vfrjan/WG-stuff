conn / as sysdba
startup mount
alter database noarchivelog;
recover database until cancel using backup controlfile;
auto
exit
