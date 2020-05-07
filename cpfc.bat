:_

@echo off



:_

set filep=* Use filename alias to "save as" a file in the current folder.

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

set parameter_1=Parameter 1: Filename alias to use as a template for the new file.

set parameter_2=Parameter 2: Name of a new file in the current folder.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:validate_user_input

if "%~1" == "" (
  echo.
  echo * Percent 1 is a required field.
  exit/b
)

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

call n %1

if %errorlevel% == 1 (
  echo.
  echo * Oct-17-2019 5:42 PM
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_fn%" (
  echo.
  echo * Error: Cannot find the file "%cbf_fn%".
  exit/b
)



:_

:main_function

copy "%cbf_fn%" %2

start "bogus" "%~2"

exit/b



:_ (!rfsp) (mov-7)
