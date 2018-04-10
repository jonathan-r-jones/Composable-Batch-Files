:_

@echo off



:_

set filep=* Path nickname dictionary that sets the full path corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.

set cbf_path=

call n %1

m exitb



:_ (!rfsp) (mov-6)

:h

:help

set fp=* Path nickname dictionary that sets the full path corresponding to a given unique nickname parameter.

echo %filep%

echo.
echo Filename stands for: Path Nicknames.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

m exitb



:_