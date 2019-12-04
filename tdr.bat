:_

@echo off



:_

set filep=* Transform directory by appending a relative path onto a base path.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~2" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Base path alias.

set parameter_2=Parameter 2: Relative path alias. (cbf_relative_path)

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Example 1: tdr ma jwt

echo.
echo Example 2: tdr 1232 jwt

echo.
echo Example 3: tdr caco cius

echo.
echo Example 4: tdr cart cius

echo.
echo Example: td ui

echo.
echo Example: tdr m ui

echo.
echo Example: tdr 1070 ui

echo.
echo Example: td api

echo.
echo Example: tdr m api

echo.
echo Example: tdr 1070 api

exit/b



:_

:validate_input

set cbf_relative_path=

rem lu: Oct-30-2019

call pn %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. Oct-26-2019 11:02 AM
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_path%" (
  echo.
  echo * Error: Path "%cbf_path%" not found. Oct-30-2019 6:17 PM
  call m clear_errorlevel_silently 
  exit/b
)

set cbf_built_path=%cbf_path%

call pn %2

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. Oct-30-2019 6:18 PM
  call m clear_errorlevel_silently 
  exit/b
)

set cbf_built_path=%cbf_built_path%\%cbf_relative_path%

if not exist "%cbf_built_path%" (
  echo.
  echo * Error: Path "%cbf_built_path%" not found. Oct-30-2019 6:17 PM
  call m clear_errorlevel_silently 
  exit/b
)



:_

:main_function

cd /d "%cbf_built_path%"

exit/b



:_ (!rfsp) (mov-7)