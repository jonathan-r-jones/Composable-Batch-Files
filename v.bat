:_

@echo off



:_

set filep=* Verify a nickname command's settings.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.



m exitb



:_ (!rfsp) (mov-6)

:h

:help

echo Filename stands for: Verify a nickname command's settings.

echo.
echo Last Updated: Mar-9-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Nickname you wish to verify.

m exitb



:_