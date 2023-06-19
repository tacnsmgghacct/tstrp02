Set-Timezone -Name 'Central Standard Time'
Initialize-Disk -Number 2 -PartitionStyle GPT
New-Partition -DiskNumber 2 -DriveLetter F -UseMaximumsize
Format-Volume -DriveLetter E
Get-CIMInstance -ClassName Win32_Volume -Filter "DriveLetter = 'E:'" | Set-CimInstance -Property @{Label='Data'} 
Disable-NetAdapterBinding -Name 'Ethernet' -ComponentID 'ms_tcpip6'
Add-WindowsFeature AD-Domain-Services
