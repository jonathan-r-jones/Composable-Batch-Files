:_

@echo off



:_

set filep=* Path nickname dictionary that sets the full path corresponding to a given unique nickname parameter.



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

:validate_input

set cbf_path=

call n %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Nov-1-2019 8:32 PM
  call m clear_errorlevel_silently 
  exit/b 99
)

if not defined cbf_path (
  echo.
  echo * The cbf_path is not defined for "%1". Nov-1-2019 8:33 PM
  exit/b 1
)

if not exist "%cbf_path%" (
  echo.
  echo * Error: The CBF_Path "%cbf_path%" could not be found. Nov-1-2019 8:34 PM
  exit/b 1
)



:_ (!rfsp) (mov-6)