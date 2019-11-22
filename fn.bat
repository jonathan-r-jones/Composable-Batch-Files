:_

@echo off



:_

set filep=* Filename nickname dictionary that sets the full filename name corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_ (!rfsp) (mov-6)

:help

echo.
echo %filep%                         

echo.
echo Usage: %0 [single parameter]

exit/b



:_

:validate_input

set cbf_filename=

call n %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Nov-1-2019 8:55 PM
  call m clear_errorlevel_silently 
  exit/b 1
)

if not defined cbf_filename (
  echo.
  echo * The cbf_filename is not defined for "%1". Nov-1-2019 8:58 PM
  exit/b 1
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The CBF_Filename "%cbf_filename%" could not be found. Nov-1-2019 8:59 PM
  exit/b 2
)



:_