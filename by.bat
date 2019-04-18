:_

@echo off



:_

set filep=* Shutdown the computer.

setlocal



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Usage: %0

exit/b



:_

:main_function

rem lu: Feb-5-2019

endlocal

echo.
echo %filep%

shutdown /s /t 1

exit/b



:_ (!rfsp) (mov-6)