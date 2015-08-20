@echo off
::KILL ARMA3 SERVER
taskkill /f /fi "status eq not responding" /im arma2oaserver.exe
taskkill /f /im arma3server.exe
timeout 1
::DOUBLE CHECK KILL
taskkill /f /fi "status eq not responding" /im arma2oaserver.exe
taskkill /f /im arma3server.exe
timeout 1
:: KILL BATTLEYE
taskkill /im Bec.exe
timeout 5
:: THIS STARTS THE RESTART SERVER BAT FILE 
set restartserverPath="C:\Program Files (x86)\Steam\steamapps\common\Arma 2 Operation Arrowhead\masterconfig"
cd /d %restartserverPath%
start restartserver.bat
::KILL SERVER MONITOR
::taskkill /f /im cmd.exe /fi "windowtitle eq servermonitor.bat"
::KILL ALL COMMAND.EXE THAT ARE OPEN
::taskkill /f /fi "status eq not responding" /im cmd.exe
::taskkill /f /im cmd.exe
::timeout 1
::DOUBLE TAP
::taskkill /f /fi "status eq not responding" /im cmd.exe
::taskkill /f /im cmd.exe
::timeout 1