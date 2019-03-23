echo "Setting up FRC Driver Station..." ""

[int]$number = Read-Host "Input Team Number"
$newnumber = ("{0:0000}" -f $number).Insert(2,".")
$ip = "10." + $newnumber + ".5"

echo "---TURNING OFF SUPERFETCH---"
net.exe stop superfetch

echo "---TURNING OFF WINDOWS DEFENDER---"
Set-MpPreference -DisableRealtimeMonitoring $true

echo "Done" "" "---TURNING OFF FIREWALL---"
netsh advfirewall set allprofiles state off

echo "---TURNING OFF WINDOWS UPDATE---"
sc.exe stop wuauserv

echo "Done" "" "---DISABLING WIFI---"
netsh interface set interface Wi-Fi disable

echo "Done" "" "---ENABLING ETHERNET---"
netsh interface set interface Ethernet enable

echo "Done" "" "---SETTING STATIC IP---"
netsh interface ip set address Ethernet static $ip 255.0.0.0

echo "Done" "" "---CHANGING POWER PLAN TO HIGH PERFORMANCE---"
powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

echo "Done" ""
Read-Host "---Press Enter to exit"	