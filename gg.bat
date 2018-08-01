:_

@echo off



:_

set filep=* Run Git Gui.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Preprocessing.

if not "%~1" == "" call td %~1

goto main_function

exit/b



:_

:h

:help

echo.
echo Filename stands for: Run Git Gui.

echo.
echo Last Updated: Aug-1-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current folder is used.

exit/b



:_

:main_function

r gg

rem (!rfsp) (mov-2)

exit/b



:_