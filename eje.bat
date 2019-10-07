:_

@echo off



:_

set filep=* Edit the Jenkinsfile of an alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the setting file you wish to edit.

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

set cbf_jenkinsfile=

call fn %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_jenkinsfile%" == "" goto cbf_jenkinsfile_is_not_set

goto finish_validation



:_

:cbf_jenkinsfile_is_not_set

set cbf_jenkinsfile=%cbf_filename%



:_

:finish_validation

if not exist "%cbf_jenkinsfile%" (
  echo.
  echo * Error: Could not find "%cbf_jenkinsfile%".
  exit/b
)



:_

:main_function

call e %cbf_jenkinsfile% -e

exit/b



:_ (!rfsp) (mov-7)