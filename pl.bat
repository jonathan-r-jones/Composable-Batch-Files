:_

@echo off



:_

set filep=* Pull with path walker.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" goto pull_current_folder

call td %~1

if %errorlevel% == 1 (
  exit/b
)

goto pull_current_folder



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
the current folder is pulled.

exit/b



:_

:pull_current_folder

call g pull

exit/b



:_ (!rfsp) (mov-8)