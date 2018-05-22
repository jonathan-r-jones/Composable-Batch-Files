:_

@echo off



:_

set filep=* Double-click equivalent way to run a file that contains a period.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Detect a period in the first parameter.

echo %1 | find /i ".">nul

rem There is a period in the first parameter.
if %errorlevel% == 0 (
  set cbf_filename=%1
  r
rem qq-1
)

rem No period found.
if %errorlevel% == 1 exit /b



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: J, an easy to type batch file.

echo.
echo Last Updated: May-22-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename that contains a period.

exit /b



:_