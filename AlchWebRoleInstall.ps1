Set-Timezone -Name 'Central Standard Time'
Install-WindowsFeature -Name Web-Server -IncludeManagementTools
Install-WindowsFeature -Name Web-Basic-Auth
Install-WindowsFeature -Name Web-Digest-Auth
Install-WindowsFeature -Name Web-Windows-Auth
Install-WindowsFeature -Name Web-App-Dev
Install-WindowsFeature -Name Web-Net-Ext
Install-WindowsFeature -Name Web-Net-ext45
Install-WindowsFeature -Name Web-Appinit
Install-WindowsFeature -Name Web-ASP, Web-ASP-Net, Web-ASP-Net45, Web-ISAPI-Ext, Web-ISAPI-Filter
Install-WindowsFeature -Name Web-Mgmt-Console, Web-Metabase
Install-WindowsFeature -Name NET-HTTP-Activation, NET-Non-HTTP-Activ
Install-WindowsFeature -Name NET-Framework-45-Features, NET-Framework-45-Core, NET-Framework-45-ASPNET, NET-WCF-Services45, NET-WCF-TCP-PortSharing45
Initialize-Disk -Number 2 -PartitionStyle GPT
New-Partition -DiskNumber 2 -DriveLetter F -UseMaximumsize
Format-Volume -DriveLetter F
Get-CIMInstance -ClassName Win32_Volume -Filter "DriveLetter = 'F:'" | Set-CimInstance -Property @{Label='Data'} 
Disable-NetAdapterBinding -Name 'Ethernet' -ComponentID 'ms_tcpip6'
