@echo off
title Sleeptimer

:Start
set /p minutes="Set sleeptimer in minutes: "
set /a seconds=minutes*60
shutdown -s -t %seconds% -c Sleeptimer

:Running
cls
echo Sleeptimer set to %minutes% minutes.
echo Press A to abort. You can close this window.
choice /c ac /n
if %errorlevel%==1 goto Finished

:Finished
shutdown /a
echo Sleeptimer stopped.
goto Start