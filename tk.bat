:_

@echo off



:_

set filep=* A batch file wrapper around the taskkill commands that helps you
set filep=%filep% reuse and remember your commonly used commands.



:_

set fp=* Route help callers.

if "%~1" == "" goto kill

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo %filep%

echo.
echo Filename stands for: Taskkill.

echo.
echo Last Updated: May-8-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): Function to execute. If left blank, the default task kill list is killed.

echo.
echo     Parameter  Description
echo -------------  --------------------------------------------------
echo           dev  Kill all Visual Studio development environments.

exit/b



:_ Begin body. (!bb)



:_

:kill

set fp=* Taskkill all nonessential processes. My current essential process are ME and CBF window.

echo %fp%
echo.

taskkill /f /im chrome.exe
taskkill /f /im devenv.exe
taskkill /f /im iexplore.exe

rem Kills all Explorers except the main system one.
taskkill /fi "imagename eq explorer.exe" /fi "windowtitle ne N/A" /fi "windowtitle ne Tortoise" 

taskkill /f /im firefox.exe
taskkill /f /im notepad.exe
taskkill /f /im opera.exe

exit/b



:_

:kill_old

set fp=* Taskkill all nonessential processes. My current essential process are ME, Visual Studio and TMT.

echo.
echo %fp%
echo.

taskkill /f /im anb.exe 
taskkill /f /im arcmap.exe 
taskkill /f /im chrome.exe
taskkill /f /im iexplore.exe
rem Kills all Explorers except the main system one.
taskkill /fi "imagename eq explorer.exe" /fi "windowtitle ne N/A" /fi "windowtitle ne Tortoise" 
taskkill /f /im firefox.exe
taskkill /f /im notepad.exe
taskkill /f /im opera.exe
rem taskkill /f /im outlook.exe
taskkill /f /im safari.exe
taskkill /f /im torch.exe
taskkill /f /im tortoiseproc.exe

rem taskkill /f /im ccsa.exe 
rem taskkill /f /im googlecrashhandler.exe
rem taskkill /f /im googlecrashhandler64.exe
rem taskkill /f /im ipoverusbsvc.exe
rem taskkill /f /im jusched.exe
rem taskkill /f /im pythonw.exe
rem taskkill /f /im sansadispatch.exe
rem taskkill /f /im sansaupdater.exe
rem taskkill /f /im SCNotification.exe
rem taskkill /f /im taskeng.exe

exit/b



:_

:dev

set fp=* Taskkill devenv.

echo %fp%
echo.

taskkill /f /im devenv.exe

exit/b



:_

:ex

:we

set fp=* Taskkill Explorer windows.

echo.
echo %fp%

echo.

rem taskkill /fi "imagename eq explorer.exe" /fi "windowtitle ne N/A"
rem taskkill /fi "imagename eq explorer.exe" /fi "session name eq console"

rem Warning: Do not use the below command, which forced me to reboot.
rem taskkill /fi "username ne nt authority\system" /fi "status eq running" /fi "imagename eq explorer.exe" /f /im explorer.exe 
rem taskkill /f /im explorer.exe /fi "username ne nt authority\system" /fi "status eq running" /fi "imagename eq explorer.exe"
rem taskkill /f /im explorer.exe

exit/b



:_