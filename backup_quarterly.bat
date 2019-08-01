@echo off
for /f %%a in ('wmic path win32_localtime get month /format:list ^| findstr "="') do @(set %%a)
set /A quarter = (%Month%-1)/3+1
set filename=mysqlbackup\quarterly_%quarter%.sql
set tempfile=d:\%filename%
set targetfile=\\172.25.250.112\bethge_recordings\%filename%
echo Backing up to temporary file %tempfile%
call mysqlbackup.bat > %tempfile%
echo Moving backup %tempfile% to target location %targetfile%
move %tempfile% %targetfile%
