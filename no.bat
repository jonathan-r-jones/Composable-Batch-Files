:_

@echo off



:_

set filep=* Run NotePad.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

if "%~1" == "" call ea no
if not "%~1" == "" call ed "%~1" no

m exitb



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: NOtepad.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The filename nickname of the file to execute or filename of a file in the current folder.

m exitb



:_