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

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
dir *.%1* /s

exit/b



:_ (!rfsp) (mov-6)