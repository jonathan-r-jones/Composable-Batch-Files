:_

@echo off



:_

set filep=* Surf to the Confluence url of an alias.



:_

set fp=* Route callers.

if "%~1" == "" sf ht conf

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Confluence URL alias.

echo.
echo %parameter_1%

echo.
echo Entangled variable: cbf_conf

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

set cbf_conf=

call sf %1 conf

echo.



:_ (!rfsp) (mov-7)
