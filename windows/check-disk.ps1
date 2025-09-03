#Simple Disk Check Script - Save report in reports/ folder
$timestamp= Get-Date -Format "yyyyMMdd_HHmmss"
$report= "..\reports\disk_$timestamp.txt"
Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name="FreeGb"; Expression={[math]::Round($_.Free/1GB,2)}},
@{Name="SizeGB"; Expression={[math]::Round($_.Used/1GB + $_.Free/1GB, 2)}},
@{Name="PercentFree"; Expression={[math]::Round(($_.Free / ($_.Used + $_.Free)) * 100, 2)}} |
Tee-Object -FilePath $report
Write-Output "Disk report saved to $report"
