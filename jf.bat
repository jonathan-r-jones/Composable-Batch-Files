:_

@echo off



:_

set filep=* Use Mutli-Edit to edit the Jenkinsfile of an alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" (
  call fx ma jf me
  exit/b
)

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the Jenkinsfile you wish to edit. If left blank, the ^
default Jenkisnfile is opened.

echo.
echo %parameter_1%

exit/b



:_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:validate_user_input

set cbf-jf=

call fn %1

if %errorlevel% gtr 0 exit/b

if "%cbf-jf%" == "" goto cbf-jf_is_not_set

goto finish_validation



:_

:cbf-jf_is_not_set

set cbf-jf=%cbf-fn%



:_

:finish_validation

if not exist "%cbf-jf%" (
  echo.
  echo * Error: Could not find "%cbf-jf%".
  exit/b
)



:_

:main_function

call e "%cbf-jf%" -e

exit/b



:_ (!rfsp) (mov-7)
