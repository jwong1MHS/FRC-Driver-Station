echo "Setting up FRC Driver Station..." ""

echo "---TURNING OFF SUPERFETCH---"
net.exe stop superfetch

echo "---TURNING OFF WINDOWS DEFENDER---"
Set-MpPreference -DisableRealtimeMonitoring $true

echo "Done" "" "---TURNING OFF FIREWALL---"
NetSh Advfirewall set allprofiles state off

echo "---TURNING OFF WINDOWS UPDATE---"
sc.exe stop wuauserv

echo "Done" "" "---DISABLING WIFI---"
Disable-NetAdapter -Name Wi-Fi -Confirm:$false

echo "Done" "" "--SETTING STATIC IP---"
New-NetIPAddress –InterfaceAlias “Ethernet” –IPAddress “10.12.57.5” –PrefixLength 8

echo "Done" "" "---CHANGING POWER PLAN TO HIGH PERFORMANCE---"
powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

echo "Done" ""
Read-Host -Prompt "---Press Enter to exit"	