# IT Support Scripts
Two simple **PowerShell scripts** for IT Support. They show system info and save timestamped reports in the `reports` folder.

## Scripts

### `windows/check-disk.ps1`
- Shows drive size, free space (GB), and percent free
- Saves a report file in `reports/`

### `windows/user-report.ps1`
- Lists local user accounts (WMI-based for compatibility)
- Saves a report file in `reports/`

## Reports
- Look in the `reports` folder for files like:
  - `disk_YYYYMMDD_HHMMSS.txt`
  - `users_YYYYMMDD_HHMMSS.txt`
