@echo off
::MAKE SURE ALL TASKS ARE REALLY STOPPED

taskkill /f /fi "status eq not responding" /im arma2oaserver.exe
taskkill /f /im arma2oaserver.exe
timeout 1

::IF YOU PLAY ON SAME PC AS SERVER, SOMETIMES RESTARTS GET HUNG UP BECAUSE OF IT SO MAKE SURE TO KILL CLIENTSIDE TOO, I DONT, BUT JUST IN CASE YOU DO

taskkill /f /fi "status eq not responding" /im arma2.exe
taskkill /f /im arma2.exe
timeout 1

:: KILL BATTLEYE IF IT ISN'T ALREADY
taskkill /im Bec.exe

::SHUTDOWN SERVERMONITOR IF IT IS ALREADY RUNNING - WE RESTART IT AT THE END OF THIS
:taskkill /f /im cmd.exe /fi "windowtitle eq servermonitor.bat"
:echo Make sure all is clear


::START BACKING UP DATABASE
::echo Backing Up Database...

:BE SURE TO EDIT THE PATHS TO YOUR SQL BACKUP BATCH FILE
:set BackupPath="C:\MySQLBackups\"
:cd /d %BackupPath%
:start "" "mysqlbackup.bat"
:timeout 1
:echo Database Backed up 100% 
:echo.
:echo Rotating RPT logs...

::I ROTATE MY RPT LOGS AS TO NOT GET ALL CLUTTERED IT WILL ROTATE PER DAY SO YOU WONT SEE YESTERDAYS
::I WILL ADD THE FILE IN HERE BUT NOT REQUIRED IF NOT USING, SIMPLY DELETE THIS BLOCK
:set RotatePath="D:\arma3serverconfig\"
:cd /d %RotatePath%
:start "" "rotate_logs.bat"
:timeout 1
:echo Logs Rotated.. Restarting Server

::RESTARTING THE ARMA 3 SERVER BE SURE TO EDIT THIS TO YOUR SERVER .EXE LOCATION -NOTE ALSO THIS IS WHERE YOU DEFINE WHERE YOU CONFIG.CFG IS
set arma2oaserverpath="C:\Program Files (x86)\Steam\steamapps\common\Arma 2 Operation Arrowhead"
cd /d %arma2oaserverpath%
timeout 3
::start arma2oaserver.exe -mod=@DayZ_Epoch;@DayZ_Epoch_Server; -noPause -noSound -name=ArmA2OAProfile -profiles=masterconfig\User -config=masterconfig\config.cfg -port=2302 -cfg=masterconfig\basic.cfg 
start arma2oaserver.exe -port=2302 "-config=masterconfig\config.cfg" "-cfg=masterconfig\basic.cfg" "-profiles=masterconfig" "-name=masterconfig" "-mod=@DayZ_Epoch;@DayZ_Epoch_Server;" -cpuCount=4 -exThreads=7 -malloc=tbb4malloc_bi
timeout 25
echo Epoch Server has started

::RESTARTING BATTLEYE
cd /D "C:\Users\Administrator\Desktop\Bec" & start bec.exe
timeout 5
echo Battleye has started.. 
exit

:: THIS RUNS THE SERVER MONITOR FOR YOU SO YOU DON'T FORGET
:set ServerMonitorPath="D:\SteamLibrary\steamapps\common\Arma 3 Server\arma3serverconfig\"
:cd /d %ServerMonitorPath%
:start "" "servermonitor.bat"
:echo Server Monitor has started. Have Fun
:timeout 2
:exit 