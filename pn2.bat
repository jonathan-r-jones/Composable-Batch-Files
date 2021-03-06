:_

@echo off



:_

set filep=* Exclusively set the path 2 for an alias.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set cbf-pt2=

call n %1

if %errorlevel% gtr 0 (
  rem echo.
  rem echo * Error: Label not found. skw Jun-18-2021_2_52_PM
  call m clear_errorlevel_silently 
  exit/b 99
)

if "%cbf-pt%" == "" (
  echo.
  echo * The cbf-pt is not defined for "%1". skw Jun-18-2021_2_52_PM
  exit/b 1
)

if not exist "%cbf-pt%" (
  echo.
  echo * Error: The cbf-pt "%cbf-pt%" does not exist. skw Jun-18-2021_2_52_PM
  exit/b 1
)

set cbf-pt2=%cbf-pt%

exit/b



:_ (!rfsp) (mov-6)
