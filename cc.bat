:_

@echo off



:_

set filep=* Run code compare with j1 and j2.



:_

set fp=* Route callers.

if "%~1" == "" goto main_function

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo Usage: %0

exit/b



:_

:main_function

echo.
echo %filep%

call ccff j1 j2

exit/b



:_ (!rfsp) (mov-6)