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
  call n rf_ma 
  goto main_function
)

set cbf_jf=

call fn %1

if %errorlevel% == 1 (
  echo.
  echo * Oct-17-2019 5:43 PM
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_jf%" == "" goto cbf_jf_is_not_set

goto finish_validation



:_

:cbf_jf_is_not_set

set cbf_jf=%cbf_filename%



:_

:finish_validation

if not exist "%cbf_jf%" (
  echo.
  echo * Error: Could not find "%cbf_jf%".
  exit/b
)



:_

:main_function

call e %cbf_jf% -e

exit/b



:_ (!rfsp) (mov-7)