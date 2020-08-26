:_

@echo off



:_

set filep=* Add, commit and push Git changes with timestamp commit message.



:_

set fp=* Route callers.

if "%~1" == "" goto main_function

if "%~1" == "/?" goto help

goto switch_folder



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
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:switch_folder

call td %~1

if %errorlevel% gtr 0 exit/b



:_

:main_function

call g acp

exit/b



:_
