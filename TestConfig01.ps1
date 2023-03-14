Set-Timezone -Name 'Central Standard Time'
Initialize-Disk -Number 2 -PartitionStyle GPT
New-Partition -DiskNumber 2 -DriveLetter F -UseMaximumsize
Format-Volume -DriveLetter F
Get-CIMInstance -ClassName Win32_Volume -Filter "DriveLetter = 'F:'" | Set-CimInstance -Property @{Label='Data'}
