:_

@echo off



:_

set filep=* Filename nickname dictionary that sets the full filename name corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

call n %1

m exitb



:_ (!rfsp) (mov-6)

:h

:help

echo %filep%                         

echo.
echo The filename stands for: Filename Nicknames.

echo.
echo Last Updated: Jan-24-2018

echo.
echo Usage: %0 [single parameter]

m exitb



:_