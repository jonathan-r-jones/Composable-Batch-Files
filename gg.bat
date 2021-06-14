:_

@echo off



:_

set filep=* Run Git Gui.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if not "%~1" == "" call td %~1

goto main_function



:_

:help

echo.
echo Run Git Gui.

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current folder is used.

exit/b



:_

:main_function

set cbf-parameter=

r gg

rem (!rfsp) (mov-2)

exit/b



:_