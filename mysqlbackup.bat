@echo off
set /p user=<user
set /p password=<passwd
mysqldump --all-databases --user=%user% --password=%password% --max-allowed-packet=1024M --ignore-table=sort.__kalman_temp
REM mysqldump --user=backup --password=backup test
