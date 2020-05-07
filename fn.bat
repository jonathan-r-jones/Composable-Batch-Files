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

:validate_input

set cbf_fn=

call n %1

if %errorlevel% gtr 0 exit/b(

if not defined cbf_fn (
  echo.
  echo * The cbf_fn is not defined for "%1". Apr-10-2020_4_30_PM
  exit/b 1
)

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The cbf_fn "%cbf_fn%" could not be found. Apr-10-2020_4_29_PM
  exit/b 2
)



:_
