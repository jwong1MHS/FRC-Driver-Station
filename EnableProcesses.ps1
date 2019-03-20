echo "Shutting down FRC Driver Station..." ""

echo "---TURNING ON SUPERFETCH---"
net.exe start superfetch

echo "---TURNING ON WINDOWS DEFENDER---"
Set-MpPreference -DisableRealtimeMonitoring $false

echo "Ok" "" "---TURNING ON FIREWALL---"
NetSh Advfirewall set allprofiles state on

echo "---TURNING ON WINDOWS UPDATE---"
sc.exe start wuauserv

echo "Done" "" "---ENABLING WIFI---"
Enable-NetAdapter -Name Wi-Fi -Confirm:$false

echo "Done" "" "---CHANGING BACK TO DYNAMIC IP---"
Get-NetAdapter -Name Ethernet | Set-NetIPInterface -Dhcp Enabled

echo "Done" "" "---CHANGING POWER PLAN---"
echo "WHAT POWER PLAN WOULD YOU LIKE TO CHANGE TO?" "1) POWER SAVER" "2) BALANCED" "3) HIGH PERFORMANCE" ""
$plan = Read-Host
if ($plan -eq "2") {
  echo "" "---CHANGING POWER PLAN TO BALANCED---"
  powercfg.exe /s 381b4222-f694-41f0-9685-ff5bb260df2e
} 
elseif ($plan -eq "3") {
  echo "" "---CHANGING POWER PLAN TO HIGH PERFORMANCE---"
  powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
}
else {
  echo "" "---CHANGING POWER PLAN TO POWER SAVER---"
  powercfg.exe /s a1841308-3541-4fab-bc81-f71556f20b4a
}
echo "Done" ""
Read-Host -Prompt "---Press Enter to exit"