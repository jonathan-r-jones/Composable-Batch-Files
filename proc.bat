:_

@echo off



:_

set filep=* A batch file wrapper around the taskkill and tasklist commands that helps you
set filep=%filep% reuse and remember your commonly used commands.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo %filep%

echo.
echo Filename stands for: Process.

echo.
echo Last Updated: May-8-2018

echo.
rem qq-1
echo Usage: %0 [Parameter 1]

echo.
echo     Parameter  Description
echo -------------  --------------------------------------------------
echo        devenv  Kill all Visual Studio development environments.

m exitb



:_ Begin body. (!bb)



:_

:k

:kill

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

m exitb



:_

:dev

set fp=* Taskkill devenv.

echo %fp%
echo.

taskkill /f /im devenv.exe

m exitb



:_

:lex

set fp=* List running ex images.

echo %fp%
echo.

tasklist /v /fi "imagename eq ex*"

m exitb



:_

:l

set fp=* List running images.

echo %fp%
echo.

tasklist /fo table

m exitb



:x

set fp=* Tasklist examples.

TASKLIST
rem TASKLIST /M
rem TASKLIST /V /FO CSV
rem TASKLIST /SVC /FO LIST
rem TASKLIST /APPS /FI "STATUS eq RUNNING"
rem TASKLIST /M wbem*
rem TASKLIST /S system /FO LIST
rem TASKLIST /S system /U domain\username /FO CSV /NH
rem TASKLIST /S system /U username /P password /FO TABLE /NH
rem TASKLIST /FI "USERNAME ne NT AUTHORITY\SYSTEM" /FI "STATUS eq running"

m exitb



:_