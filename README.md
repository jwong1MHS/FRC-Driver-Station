Powershell scripts that will automatically enable and disable several Window processes on your Driver Station computer when you are connected to the robot to make your CPU more stable and allow for less packet loss.

This project was inspired from a blog post by FRC Team 3847: Spectrum, and all I simply did was add more to the things that should be disabled. More information can be found here: http://spectrum3847.org/driver-station-stop-processes-scripts/.

The scripts are to be run in administrative mode, and any shortcuts made must target to the script file location.

Any brief flashes of red means that the script is crashing. Give script execution permissions by going to Powershell by typing "Set-ExecutionPolicy RemoteSigned" and pressing A and Enter

This script will:

Change power plan to High Performance
* Disable Superfetch
* Disable Wi-Fi
* Disable Windows Defender
* Disable Windows Firewall
* Disable Windows Update
* Set a static ip

Known bugs:
* After enabling Ethernet again, sometimes it fails to automatically connect, so you would have to Disable and Enable back in Control Panel
