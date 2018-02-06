:_

@echo off



:_

set filep=* A filename-centric way of editing a file.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Detect a period in the first parameter and run.

rem lu: Feb-1-2018

echo %1 | find /i ".">nul

if %errorlevel% == 0 set cbf_filename=%1
if %errorlevel% == 1 call fn %1

set cbf_parameter=%cbf_filename%

rem Set Default application.
if "%2" == "" call an me

if not "%2" == "" call an %2

call r


goto exitb



:_

:h

:help

echo.
echo %filep%

echo.
echo Filename stands for: Edit File.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: The filename nickname of the file to execute or filename of a file in the current folder.

echo.
echo Parameter 2 (Optional): The Application nickname to use to edit the file.

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