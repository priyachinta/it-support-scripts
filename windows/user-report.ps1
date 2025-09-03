# User Report — saves a timestamped report

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$report    = "..\reports\users_$timestamp.txt"

Get-WmiObject -Class Win32_UserAccount -Filter "LocalAccount='True'" |
    Select-Object Name, Disabled |
    Tee-Object -FilePath $report

Write-Output "User report saved to $report"
