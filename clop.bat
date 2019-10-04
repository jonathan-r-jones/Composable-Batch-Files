:_

@echo off



:_

set filep=* Copy CBF_Path to the clipboard.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

rem lu: Oct-4-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the path that you want to copy to the clipboard.

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

set cbf_path=
call n %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_path%" == "" (
  echo.
  echo * Error: CBF_path is undefined for the alias "%1".
  exit/b
)



:_

:main_function

:p

set fp= * CBF_Path "%cbf_path%" copied to clipboard.

echo.
echo %fp%


echo "%cbf_path%" | clip
rem qq-1

exit/b



:_ (!rfsp) (mov-7)