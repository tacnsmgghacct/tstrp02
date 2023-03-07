Install-WindowsFeature -name Web-Server -IncludeManagementTools
Install-WindowsFeature -Name Web-Basic-Auth
Install-WindowsFeature -Name Web-Digest-Auth
Install-WindowsFeature -Name Web-Windows-Auth
Install-WindowsFeature -Name Web-App-Dev
Install-WindowsFeature -Name Web-Net-Ext
Install-WindowsFeature -Name Web-Net-ext45
Install-WindowsFeature -Name Web-Appinit
Install-WindowsFeature -Name Web-ASP, Web-ASP-Net, Web-ASP-Net45, Web-ISAPI-Ext, Web-ISAPI-Filter
Install-WindowsFeature -Name Web-Mgmt-Console, Web-Metabase
Initialize-Disk -Number 2 -PartitionStyle GPT
New-Partition -DiskNumber 2 -DriveLetter F -UseMaximumsize
Format-Volume -DriveLetter F
Get-CIMInstance -ClassName Win32_Volume -Filter "DriveLetter = 'F:'" | Set-CimInstance -Property @{Label='Data'} 
