:_

@echo off



:_

set filep=* Curl hooked up to the nicknames dictionary.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Server alias to test.

echo.
echo %parameter_1%

exit/b



:_

:main_function

rem lu: Oct-2-2019

call cusf t %1

exit/b



:_ (!rfsp) (mov-7)