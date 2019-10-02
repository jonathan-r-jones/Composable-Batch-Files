:_

@echo off



:_

set filep=* Nslookup wrapper

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: URL alias.

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

call un %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_url%" == "" (
  echo.
  echo * Error: cbf_url is unassigned.
  goto help
)



:_

:main_function

echo.
echo %filep%

set cbf_url=%cbf_url:https://=%

echo.
nslookup %cbf_url%

exit/b



:_ (!rfsp) (mov-7)