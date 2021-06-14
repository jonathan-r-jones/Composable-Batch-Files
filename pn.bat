:_

@echo off



:_

set filep=* Exclusively set the path for an alias.



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

set cbf-pt=

call n %1

if %errorlevel% gtr 0 (
  rem echo.
  rem echo * Error: Label not found. skw May-4-2020_8_14_PM
  call m clear_errorlevel_silently 
  exit/b 99
)

if "%cbf-pt%" == "" (
  echo.
  echo * The cbf-pt is not defined for "%1". skw Aug-18-2020_3_32_PM
  exit/b 1
)

if not exist "%cbf-pt%" (
  echo.
  echo * Error: The cbf-pt "%cbf-pt%" does not exist. skw May-4-2020_8_13_PM
  exit/b 1
)

set cbf-reserved-path=%cbf-pt%

call cv c>nul

set cbf-pt=%cbf-reserved-path%

exit/b



:_ (!rfsp) (mov-6)
