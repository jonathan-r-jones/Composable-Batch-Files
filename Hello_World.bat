:_

@echo off



:_

set fp=* Add echo.

echo.



:_

set Function_Purpose=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

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

set fp=* This file is used illustrate how Composable Batch Files work.

rem Last Updated (lu): Jan-23-2018

echo %fp%

echo.
echo Usage: hello_world.bat [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo        step_1  Function that does [blank].
echo        step_2  Function that does [blank].
echo        step_3  Function that does [blank].

goto exitb



:_

:step_1

set fp=* Step 1.

rem lu: Jan-23-2018

echo %fp%
echo.

echo Put some code here.

goto exitb



:_

:step_2

set fp=* Step 2.

rem lu: Jan-23-2018

echo %fp%
echo.

echo Put some code here.

goto exitb



:_

:step_3

set fp=* Step 3.

rem lu: Jan-23-2018

echo %fp%
echo.

echo Put some code here.

goto exitb



:_

:all_steps

set fp=* All steps.

rem lu: Jan-23-2018

echo %fp%

call %0 step_1

call %0 step_2

call %0 step_3

goto exitb



:_

:all_steps_style_2

set fp=* All steps calling style 2.

rem lu: Jan-23-2018

echo %fp%

call :step_1

call :step_2

call :step_3

goto exitb



:_ (!rfsp) (mov-9)