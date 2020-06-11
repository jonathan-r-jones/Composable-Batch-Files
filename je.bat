:_

@echo off



:_

set filep=* Surf to the Jenkins url of an alias.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Jenkins URL alias.

echo.
echo %parameter_1%

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

set cbf_je=

if "%~1" == "" (
  call sf je
) else (
  call sf %1
)

echo.



:_ (!rfsp) (mov-7)
