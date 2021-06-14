:_

@echo off



:_

set filep=* Double-click on a file.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

cls

echo.
echo %filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename of the file you wish to double-click.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variables: cbf-application and cbf-parameter

echo.
echo Examples:

echo.
echo %0 dc c:\a\j1.txt

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

set cbf-application=%~1

set cbf-parameter=

call r

exit/b



:_ (!rfsp) (mov-7)
