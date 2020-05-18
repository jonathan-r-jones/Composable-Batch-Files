:_

@echo off



:_

set filep=* Use Multi-Edit to edit DCV ASCII files.



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

set parameter_1=Parameter 1: Alias

set parameter_2=Parameter 2: DCV.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Single Purpose

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

call fx %1 %2 me

exit/b



:_ (!rfsp) (mov-7)
