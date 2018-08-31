:_

@echo off



:_

set filename_stands_for=* Make and navigate (cd) to a folder.



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

set parameter_1=Parameter 1: The name of the folder you wish to create and navigate to.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filename_stands_for%

md %1>nul
cd %1

rem (!rfsp) (mov-2)

exit/b



:_