Set-Timezone -Name 'Central Standard Time'
Disable-NetAdapterBinding -Name 'Ethernet' -ComponentID 'ms_tcpip6'
Add-WindowsFeature AD-Domain-Services
