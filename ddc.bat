:_

@echo off



:_

set filep=* Dir filename extension searcher, current folder only.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: File extension you wish to search. Don't include the "*".

echo.
echo %parameter_1%

exit/b



:_

:main_function

dir *.%1*

exit/b



:_ (!rfsp) (mov-6)