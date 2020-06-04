:_

@echo off



:_

set filep=* Basic Curl test of a URL.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

rem lu: Jun-4-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Server alias to test.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf_url

echo.
echo Example(s):

echo.
echo %0 fox

echo.
echo %0 dev

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

call cu t %1

exit/b



:_ (!rfsp) (mov-7)
