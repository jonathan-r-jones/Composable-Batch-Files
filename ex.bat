:_

@echo off



:_

set filep=* Exit command window.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

exit



:_ (!rfsp)

:help

echo.
echo %filep%

echo.
echo Last Updated: Apr-18-2019

echo.
echo Usage: %0 [Parameter 1]

exit/b



:_