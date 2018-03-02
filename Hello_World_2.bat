:_

@echo off



:_

set fp=* Add echo.

echo.



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



:_

:help

set fp=* This file is used to illustrate how Composable Batch Files work.

rem Last Updated (lu): Jan-23-2018

echo %fp%

echo.
echo Usage: hello_world.bat [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo        step_2  Function that does [blank].

goto exitb



:_

:step_2

set fp=* Step 2. A call to another batch file.

rem lu: Jan-23-2018

echo %fp%
echo.

echo Put some code here.

goto exitb



:_ (!rfsp) (mov-9)