:_

@echo off



:_

set filep=* List of CBF Helper Batch files updated on Apr-9-2018.



:_

set fp=* Route callers.

if "%~1" == "" m list

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_ (!rfsp) (mov-9)

:h

:help

echo.
echo %filep%

echo.
echo Filename stands for: Composed Batch Files

echo.
echo Last Updated (lu): Apr-10-2018

echo.
echo Usage: %0

m exitb



:_