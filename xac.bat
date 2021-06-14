:_

@echo off



:_

set filep=* Execute an application alias with a filename in the current folder.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_data



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Application alias.

set parameter_2=Parameter 2: Filename in the current folder.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:validate_data

if "%~1" == "" (
  echo.
  echo * Application alias is required.
  exit/b
)

if "%~2" == "" (
  echo.
  echo * Filename is required.
  exit/b
)

call an %1

if %errorlevel% == 1 (
  echo.
  echo * Oct-17-2019 5:56 PM
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf-application%" (
  echo.
  echo * Error: Cannot find the alias "%cbf-application%".
  exit/b
)

set cbf-fn=%~2

if not exist "%cbf-fn%" (
  echo.
  echo * Creating file "%cbf-fn%". Nov-11-2019 1:11 PM
)



:_

:main_function

rem lu: Aug-3-2019

call m associate_cbf-parameter_to_cbf-fn

call r

exit/b



:_ (!rfsp) (mov-7)