:_

@echo off



:_

set filep=* This file is used to illustrate how Composable Batch Files work.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: hello_world_2.bat [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo    function_3  Function that does [blank].

exit/b



:_

:function_3

set fp=* Function 3. Code from another batch file.

echo.
echo %fp%

rem echo * From %0.bat. Put some code here.

exit/b



:_ (!rfsp) (mov-9)