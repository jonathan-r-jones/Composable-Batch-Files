:_

@echo off



:_

set fp=* Execute application.

echo.
echo %fp%



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Detect a period in the first parameter and run.

rem lu: Feb-1-2018

echo %1 | find /i ".">nul

if %errorlevel% == 0 set cbf_application=%1
if %errorlevel% == 1 call an %1

set cbf_parameter=

call r

goto exitb



:_

:help

set fp=* Execute application.

echo File Purpose (fp): %fp%

echo.
echo Filename stands for: Execute application.

echo.
echo Last Updated (lu): Feb-1-2018

echo.
echo Usage: %0 [Parameter 1]
rem qq-1

echo.
echo Parameter 1: Application nickname.
rem qq-1

goto exitb



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



::_

rem ******* End Exit Functions.



:_

:code_execution_area

set fp=* Code below here runs.



:_ (!rfsp) (mov-9)