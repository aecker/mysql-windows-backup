@echo off
set targetdir=\\172.25.250.112\bethge_recordings
set filename=weekly_1.sql
set tempfile=d:\%filename%
set targetfile=%targetdir%\%filename%
echo Backing up to temporary file %tempfile%
call mysqlbackup.bat > %tempfile%
echo Moving backup %tempfile% to target location %targetfile%
move %targetdir%\weekly_3.sql %targetdir%\weekly_4.sql
move %targetdir%\weekly_2.sql %targetdir%\weekly_3.sql
move %targetdir%\weekly_1.sql %targetdir%\weekly_2.sql
move %tempfile% %targetfile%
