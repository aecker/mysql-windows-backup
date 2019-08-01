@echo off
for /f %%a in ('wmic path win32_localtime get dayofweek /format:list ^| findstr "="') do (set %%a)
set filename=mysqlbackup\nightly_%DayOfWeek%.sql
set tempfile=d:\%filename%
REM set targetfile=z:\%filename%
set targetfile=\\172.25.250.112\bethge_recordings\%filename%
echo Backing up to temporary file %tempfile%
call mysqlbackup.bat > %tempfile%
echo Moving backup %tempfile% to target location %targetfile%
move %tempfile% %targetfile%
