:_

@echo off



:_

set filep=* Surf to the Jenkins url of an alias.



:_

set fp=* Route callers.

if "%~1" == "" (
  call je ma
  exit/b
)

if "%~1" == "/?" goto help

goto use_default_browser



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Jenkins URL alias.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf_je

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:use_default_browser

set fp=* Use default browser.

rem echo.
rem echo %fp%

set cbf_application=%cbf_default_browser%



:_

:main_function

set cbf_je=

call n %1

if "%cbf_je%" == "" (
  echo.
  echo * Error: cbf_je is not defined for %1.
  exit/b  
)

set cbf_parameter=%cbf_je%

call r

echo.



:_ (!rfsp) (mov-7)
