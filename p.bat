:_

@echo off



:_

set fp=* Set title.

title = PowerShell Helper



:_

set fp=* Add echo.

echo.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:help

:toc

set fp=* Perform PowerShell-related tasks.

rem fcd: Dec-12-2017

echo.
echo %fp%

echo.
echo Usage: m [single parameter]

echo.
echo     Parameter  Description
echo -------------  ------------------------------------------------
echo           ver  PowerShell version

exit/b



:_ Glass Ceiling Rubric



:_

:ver

set fp=* Get PowerShell version.

rem lu: Dec-12-2017

echo %fp%

$PSVersionTable.PSVersion

exit/b



:_ (!sp) (mov-9)