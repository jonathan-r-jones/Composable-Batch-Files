:_

@echo off



:_

set filep=* Test parameters.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

echo.
echo 1: %~1

echo.
echo 2: "%~1"

rem if "%~1" == "/?" goto help

rem if "/?" == %1 goto help

rem if "%~1" == "help" goto help



:_

set fp=* Main function.



exit /b



:_ (!rfsp) (mov-6)

:h

:help

echo Filename stands for: .

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1 (Optional):

echo.
echo Parameter 2 (Optional):

exit /b



:_