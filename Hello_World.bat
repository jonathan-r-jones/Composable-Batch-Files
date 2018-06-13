:_

@echo off



:_

set filep=* Hello World batch file that demonstrates the basic structure concept behind Composable Batch Files.



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_ (!rfsp)

:h

:help

echo %filep%

echo.
echo Last Updated: Apr-25-2018

echo.
echo Usage: hello_world.bat [Parameter 1]

echo.
echo Parameter 1: Function you wish to execute.

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo        step_1  Function that does [blank].
echo        step_2  Function that does [blank].
echo        step_3  Function that does [blank].
echo    some_steps  Function that runs some functions.
echo     all_steps  Function that runs all functions.

exit /b



:_ Begin body. (!bb)



:_

:step_1

set fp=* Step 1. A call to this batch file.

rem lu: Jan-23-2018

echo.
echo %fp%

echo.
echo Put some code here.

exit /b



:_

:step_2

set fp=* Step 2. A call to this batch file.

rem lu: Jan-23-2018

call hello_world_2 step_2

exit /b



:_

:step_3

set fp=* Step 3.

rem lu: Jan-23-2018

echo.
echo %fp%

echo.
echo Put some code here.

exit /b



:_

:all_steps

set fp=* All steps.

rem lu: Jan-23-2018

echo.
echo %fp%

call %0 step_1

call hello_world_2 step_2

call %0 step_3

exit /b



:_

:some_steps

set fp=* Some steps.

rem lu: Jan-23-2018

echo.
echo %fp%

call %0 step_1

call hello_world_2 step_2

exit /b



:_

:all_steps_style_2

set fp=* All steps calling style 2.

rem lu: Jan-23-2018

echo %fp%

call :step_1

call hello_world_2 step_2

call :step_3

exit /b



:_