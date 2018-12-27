:_

@echo off



:_

set filep=* Add, commit and push Git changes with timestamp commit message.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: Add/Commit/Push.

echo.
echo Last Updated: Dec-20-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current 
echo folder is used.

exit/b



:_

:main_function

if not "%~1" == "" call td %~1

echo.
echo Error level: %errorlevel%
rem qq-1

call g acp

rem (!rfsp) (mov-2)

exit/b



:_