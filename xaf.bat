:_

@echo off



:_

set filep=* Execute an application alias with a filename alias.

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

set parameter_2=Parameter 2: Filename alias.

set parameter_3=Parameter 3: Passing in "-c" forces the file creation.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo %parameter_3%

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
  echo * Data alias is required.
  exit/b
)

set cbf-fn=

call an %1

if %errorlevel% gtr 0 (
  exit/b
)

call fn %2

if %errorlevel% gtr 0 (
  exit/b
)

if "%3"=="-c" goto main_function

if not exist "%cbf-fn%" (
  echo.
  echo * Error: Cannot find the file named "%cbf-fn%".
  exit/b
)



:_

:main_function

rem lu: Aug-3-2019

call m associate_cbf-parameter_to_cbf-fn

call r

exit/b



:_ (!rfsp) (mov-7)