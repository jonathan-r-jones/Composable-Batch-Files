:_

@echo off



:_

set filename_stands_for=* Delete batch file.



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

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Jan-2-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Nickname function to run.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:mecfg

set fp=* Delete conflicted copies.

rem lu: Jan-2-2019

echo.
echo %fp%

del "*conflicted copy*.*"

exit/b



:_ (!rfsp) (mov-6)