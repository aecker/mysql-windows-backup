# MySQL server backup scripts for Windows Server

**[NOTE: Not extensively tested. For internal use only. Use at your own risk!]**

These scripts create MySQL dumps of a MySQL server running on Windows Server. The backup intervals are as follows:

 - Nightly backups kept for every day of the week (i.e. overwritten after one week)
 - Weekly backups kept for four weeks (i.e. overwritten after one month)
 - Quarterly backups kept for one year (i.e. overwritten after one year)
 
## Setup

To set up the backup, use Scheduled Tasks. The action is set up as follows:

 - Program/script: `cmd`
 - Add arguments: `/c backup_weekly.bat > weekly.log 2>&1`
 - Start in: folder containing this repo
