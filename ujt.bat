:_

@echo off



:_

set filep=* Run uj command.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

rem lu: Oct-26-2019

echo.
echo Usage: %0

exit/b



:_

:main_function

call tdc ujwt

call uj

exit/b



:_ (!rfsp) (mov-7)