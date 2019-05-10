:_

@echo off



:_

set filep=* Shutdown the computer.

setlocal

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0

exit/b



:_

:main_function

rem lu: Feb-5-2019

endlocal

shutdown /s /t 1

exit/b



:_ (!rfsp) (mov-6)