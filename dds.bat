:_

@echo off



:_

set filep=* Dir filename extension searcher including subfolders.



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
echo Last Updated: Mar-18-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: File extension you wish to search.

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filep%

call dd %1 /s

exit/b



:_ (!rfsp) (mov-6)