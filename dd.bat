:_

@echo off



:_

echo.
echo * Dir file for *.extensionname uses including subfolders.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename extension.

set parameter_2=Parameter 2 (Optional): '/s' e.g. means to search subfolders.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
dir *.%1* %2

exit/b



:_ (!rfsp) (mov-6)