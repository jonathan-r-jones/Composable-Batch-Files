:_

@echo off



:_

set filename_stands_for=* Create dir *.war /s batch file.



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
echo Last Updated: Feb-14-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename extension.

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo %filename_stands_for%

dir *.%1 %2

exit/b



:_ (!rfsp) (mov-6)