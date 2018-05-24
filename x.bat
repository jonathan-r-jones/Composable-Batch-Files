:_

@echo off



:_

set filep=* Double-click equivalent way to run a file.

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
  set cbf_filename=%~1
  call m double_click
  r
)
else
(
  // Do a remote double click.
rem qq-1
)

exit /b



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: X marks the spot. An easy to type batch file.

echo.
echo Last Updated: May-22-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: If parameter 1 contains a period, then it will simulate the double-click on 
echo that file which is in the current folder. Or else, it will do a remote double click on
echo on the filename specified by the nickname.

exit /b



:_