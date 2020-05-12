:_

@echo off



:_

set filep=* Surf to the Confluence url of an alias.



:_

set fp=* Route callers.

if "%~1" == "" (
  call sf ht
  exit/b
)

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Confluence URL alias.

echo.
echo %parameter_1%

echo.
echo Entangled variable: cbf_conf

echo.
echo Pit of Success Strategy: If cb_conf is not found, the algorithm will look for cbf_url.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set cbf_conf=

call un %1

if %errorlevel% gtr 0 exit/b

if "%cbf_conf%" == "" (
  echo.
  echo * CBF Confluence url is not set, so use cbf_url.
  goto use_cbf_url
)

goto main_function



:_

:use_cbf_url

set cbf_conf=%cbf_url%

if "%cbf_url%" == "" (
  echo.
  echo * Error: Cbf_url is not defined.
  exit/b
)



:_

:main_function

rem echo.
rem echo * Main function of %0. Nov-15-2019 12:55 PM

set cbf_url=%cbf_conf%

call sf
echo.



:_ (!rfsp) (mov-7)
