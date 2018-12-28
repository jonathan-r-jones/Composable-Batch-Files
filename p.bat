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

if "%~1" == "" goto push_prewired_folders

if "%~1" == "-c" goto main_function

call td %~1

if %errorlevel% == 1 (
  echo.
  echo * There has been a folder error.
  exit/b
)

goto main_function



:_

:h

:help

echo.
echo Filename stands for: Add/Commit/Push.

echo.
echo Last Updated: Dec-27-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
all prewired folders will be pushed. If "-c" is specified, the current folder is pushed.

exit/b



:_

:push_prewired_folders

set fp=* Push prewired folders.

rem lu: Dec-27-2018

echo.
echo %fp%

call m p

exit/b



:_

:main_function

call g acp

rem (!rfsp) (mov-2)

exit/b



:_