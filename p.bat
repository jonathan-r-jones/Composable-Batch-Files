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

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

:exit

set fp= * Exit.

rem echo.
rem echo %fp%

exit



:_

:exitb

rem set fp= * Exit batch file but not command window.

rem echo.
rem echo %fp%

exit /b



:_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

title Done! - . . . paused . . . Press any key to continue

pause

exit



:_

:exitpb

set fp= * Pause then exit the batch file but not the command window.

rem echo.
rem echo %fp%

pause

exit /b



:_

:help

:toc

set fp=* Perform PowerShell-related tasks.
rem qq-1

rem fcd: Dec-12-2017

echo.
echo %fp%

echo.
echo Usage: m [single parameter]

echo.
echo     Parameter  Description
echo -------------  ------------------------------------------------
echo           ver  PowerShell version

goto exitb



:_ Glass Ceiling Rubric



:_

:ver

set fp=* Get PowerShell version.

rem lu: Dec-12-2017

echo %fp%

$PSVersionTable.PSVersion

goto exitb



:_ (!sp) (mov-9)