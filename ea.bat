:_

@echo off



:_

set filep=* Application-centric way of running an application with an optional filename parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Detect a period in the first parameter and run.

rem lu: Feb-12-2019

echo %1 | find /i ".">nul

if %errorlevel% == 0 set cbf_application=%~1

if %errorlevel% == 1 call an %1

if %errorlevel% == 1 exit/b

if "%~2" == "" set cbf_parameter=

if not "%~2" == "" call fn %2

if not "%~2" == "" set cbf_parameter=%cbf_filename%

call r

exit/b



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo %filep%

echo.
echo Filename stands for: Execute application.

echo.
echo Last Updated: Aug-28-2018

echo.
echo Usage: %0 [space separated parameters]

echo.
echo Parameter 1: Application nickname.

echo.
echo Parameter 2 (Optional): Filename nickname.

exit/b



:_