:_

@echo off



:_

set filep=* Surf to the jenkins url of an alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" sf je

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Jenkins URL alias.

echo.
echo %parameter_1%

exit/b



:_

:validate_input

set cbf_jenkins_url=

call n %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias not found. (skw Oct-18-2019 1:54 PM)
  call m clear_errorlevel_silently 
)

if "%cbf_jenkins_url%" == "" (
  echo * Error: CBF Jenkins url is not set.
  exit/b
)



:_

:main_function

set cbf_url=%cbf_jenkins_url%

call sf



:_ (!rfsp) (mov-7)