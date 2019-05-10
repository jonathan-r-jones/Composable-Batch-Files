:_

@echo off



:_

set filep=* Add, commit and push Git changes with timestamp commit message.



:_

set fp=* Route callers.

if "%~1" == "" goto current_folder

if "%~1" == "/?" goto help

call td %~1

if %errorlevel% == 1 (
  exit/b
)

goto current_folder



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
the current folder is pushed.

exit/b



:_

:current_folder

call g acp

exit/b



:_