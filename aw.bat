:_

@echo off



:_

set filename_stands_for=* AWS-related tasks.



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
echo Last Updated: Nov-1-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:vers

set fp=* Version

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --version
rem       qq-1

exit/b



:_ (!rfsp) (mov-6)