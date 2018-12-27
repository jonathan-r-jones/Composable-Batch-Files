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

if "%~1" == "-a" goto push_prewired_folders

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
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current ^
folder is used. If "-a" is specified, all preswired folders will be pushed.
rem qq-1

exit/b



:_

:push_prewired_folders

set fp=* Push prewired folders.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.
call m p

exit/b



:_

:main_function

if not "%~1" == "" call td %~1

if %errorlevel% == 1 (
  echo * There's an error.
  exit/b
)

call g acp

rem (!rfsp) (mov-2)

exit/b



:_