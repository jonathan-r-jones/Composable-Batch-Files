:_

@echo off



:_

set filep=* Double-click equivalent way to execute a file with optional application nickname parameter.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "?" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Detect a period in the first parameter and run.

echo %1 | find /i ".">nul
rem qq-1

if %errorlevel% == 0 set cbf_filename=%1
if %errorlevel% == 1 call fn %1

set cbf_parameter=%cbf_filename%

if "%~2" == "" call an dc
if not "%~2" == "" call an %2

call r

goto exitb



:_ (!sp) (mov-6)

:h

:help

echo.
echo Filename stands for: eXecute file.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: ef [Parameter 1] [Parameter 2]

echo.
echo Parameter 1: The filename nickname of the file to execute or filename of a file in the current folder.

echo.
echo Parameter 2 (Optional): The application nickname of the application used to execute the file. If left blank, a simulated double click of the file will occur.

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