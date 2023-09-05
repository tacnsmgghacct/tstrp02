Install-WindowsFeature -Name Web-WebServer -IncludeManagementTools
Install-WindowsFeature -Name Web-Default-Doc
Install-WindowsFeature -Name Web-Dir-Browsing
Install-WindowsFeature -Name Web-HttP-Errors
Install-WindowsFeature -Name Web-Static-Content
Install-WindowsFeature -Name Web-Http-Logging
Install-WindowsFeature -Name Web-Stat-Compression
Install-WindowsFeature -Name Web-Filtering
Install-WindowsFeature -Name Web-Windows-Auth
Install-WindowsFeature -Name Web-App-Dev
Install-WindowsFeature -Name Web-Net-Ext45
Install-WindowsFeature -Name Web-ASP
Install-WindowsFeature -Name Web-ASP-Net45
Install-WindowsFeature -Name Web-ISAPI-Filter
Install-WindowsFeature -Name Web-Mgmt-Console
Set-TimeZone -Name 'Central Standard Time'
Disable-NetAdapterBinding -Name 'Ethernet' -ComponentID 'ms_tcpip6'
