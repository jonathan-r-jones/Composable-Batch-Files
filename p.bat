:_

@echo off



:_

set filep=* Add, commit and push Git changes with timestamp commit message.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Preprocessing.

rem lu: Jul-16-2018

if not "%~1" == "" call td %~1

goto main_function

exit/b



:_

:h

:help

echo.
echo Filename stands for: Add/Commit/Push.

echo.
echo Last Updated: Jul-16-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current folder is used.

exit/b



:_

:main_function

call g acp

rem (!rfsp) (mov-2)

exit/b



:_