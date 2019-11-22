:_

@echo off



:_

set filep=* Query if a file exists based on its passed in alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename alias to check the existence of.

echo.
echo %parameter_1%

echo.
echo Examples

echo.
echo Example 1: qfn j1

exit/b



:_

:main_function

call fn %1

if %errorlevel% gtr 0 exit/b

echo.
echo * "%1" exists.

exit/b



:_ (!rfsp) (mov-7)