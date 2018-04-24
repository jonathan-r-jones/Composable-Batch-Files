:_

@echo off



:_

set filep=* Edit file with Sublime.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

if "%~1" == "" call ea sm
if not "%~1" == "" call ed %1 sm

m exitb



:_ (!rfsp) (mov-6)

:h

:help

echo Filename stands for: SubliMe.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The filename nickname of the file to execute or filename of a file in the current folder.

m exitb



:_