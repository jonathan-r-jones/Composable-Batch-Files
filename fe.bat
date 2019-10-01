:_

@echo off



:_

set filep=* Check for the existence of a file.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

rem lu: Sep-26-2019
echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Fliename alias to check the existence of.

echo.
echo %parameter_1%

exit/b



:_

:validate_user_input

if "%~1" == "" (
  echo.
  echo * Error: A parameter is required.
  goto help
)

call fn %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Batch file label "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)



:_

:main_function

if exist "%cbf_filename%" (
  echo.
  echo * File "%cbf_filename%" exists.
) else (
  echo.
  echo * File "%cbf_filename%" DOES NOT exist.
)

exit/b



:_ (!rfsp) (mov-7)