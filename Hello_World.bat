:_

@echo off



:_

set filep=* Hello World batch file that demonstrates the basic structure concept behind Composable Batch Files.

echo.
echo %filep%



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_ (!rfsp)

:h

:help

echo.
echo Last Updated: Feb-6-2018

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
echo           ghp  Surf to this repository's GitHub pages site.

m exitb



:_

:step_1

set fp=* Step 1. A call to this batch file.

rem lu: Jan-23-2018

echo %fp%
echo.

echo Put some code here.

m exitb



:_

:step_3

set fp=* Step 3.

rem lu: Jan-23-2018

echo %fp%
echo.

echo Put some code here.

m exitb



:_

:all_steps

set fp=* All steps.

rem lu: Jan-23-2018

echo %fp%

call %0 step_1

call hello_world_2 step_2

call %0 step_3

m exitb



:_

:some_steps

set fp=* Some steps.

rem lu: Jan-23-2018

echo %fp%

call %0 step_1

call hello_world_2 step_2

m exitb



:_

:all_steps_style_2

set fp=* All steps calling style 2.

rem lu: Jan-23-2018

echo %fp%

call :step_1

call hello_world_2 step_2

call :step_3

m exitb



:_

:gp

:ghp

set fp=* Surf to this repository's GitHub pages.

rem lu: Jan-5-2018

echo %fp%
start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://jonathan-r-jones.github.io/Composable-Batch-Files/

m exitb



:_