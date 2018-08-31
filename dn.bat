:_

@echo off



:_

set filename_stands_for=* Perform .NET Core functions.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Aug-31-2018

echo.
echo Usage: %0 [Parameter 1]

exit/b



:_

:main_function

echo.
echo %filename_stands_for%



rem (!rfsp) (mov-2)

exit/b



:_