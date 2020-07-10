:_

@echo off



:_

set filep=* Filename nickname dictionary that sets the full filename name corresponding to a given unique nickname parameter.



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
echo Usage: %0 [single parameter]

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set cbf_fn=

call n %1

rem The label is not found.
if %errorlevel% gtr 0 exit/b(

if defined cbf_fn (
  rem echo.
  rem echo * cbf_fn definition found.
  goto check_existence
)

if defined cbf_java (
  echo.
  echo * Using Java as cbf_fn.
  set cbf_fn=%cbf_java%
  goto check_existence
)

exit/b



:_

:check_existence

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The cbf_fn "%cbf_fn%" could not be found. Apr-10-2020_4_29_PM
  exit/b 2
)



:_
