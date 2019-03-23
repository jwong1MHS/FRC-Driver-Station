# FRC Driver Station #

Powershell scripts that will automatically enable and disable several Window processes on your Driver Station computer when you are connected to the robot to make your CPU more stable and allow for less packet loss.

The scripts are to be run in administrative mode, and any shortcuts made must target to the script file location.

Any brief flashes of red means that the script is crashing. Give script execution permissions by typing "Set-ExecutionPolicy RemoteSigned" and pressing A and Enter in Powershell.

**This script will:**
* Change power plan to High Performance
* Disable Superfetch
* Disable Wi-Fi
* Disable Windows Defender
* Disable Windows Firewall
* Disable Windows Update
* Set a static ip as 10.TE.AM.5 with a subnet mask of 255.0.0.0

**Known bugs:**
* Setting static IP only works for 4 digit teams right now

*This project was inspired from a blog post by FRC Team 3847: Spectrum as well as some mistakes made by me during competition. More information can be found here: http://spectrum3847.org/driver-station-stop-processes-scripts/.*


Enjoy!
-Jason Wong | Driver (2017-2019) | Control Systems Captain (2018-2019)