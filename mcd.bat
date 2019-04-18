:_

@echo off



:_

set filep=* Make and navigate (cd) to a folder.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo File purpose: %filep%

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
echo %filep%

md %1>nul
cd %1

rem (!rfsp) (mov-2)

exit/b



:_