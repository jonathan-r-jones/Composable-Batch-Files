:_

@echo off



:_

set filename_stands_for=* Contents search with td paramater.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

call td %3

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameters: First 2 parameters are the same as cs.bat.

set parameter_3=Parameter 3: Folder alias to switch to.

echo.
echo %parameter_1%

echo.
echo %parameter_3%

exit/b



:_

:main_function

echo.
echo %fp%

call cs %1 %2
rem qq-1

exit/b



:_ (!rfsp) (mov-6)