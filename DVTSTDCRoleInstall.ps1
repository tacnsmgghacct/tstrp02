Set-Timezone -Name 'Central Standard Time'
Disable-NetAdapterBinding -Name 'Ethernet 2' -ComponentID 'ms_tcpip6'
Add-WindowsFeature AD-Domain-Services -IncludeManagementTools
