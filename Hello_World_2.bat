:_

@echo off



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



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

exit/b



:_

:step_2

set fp=* Step 2. A call to another batch file.

rem lu: Jan-23-2018

echo.
echo %fp%

echo.
echo * From %0.bat. Put some code here.

exit/b



:_ (!rfsp) (mov-9)