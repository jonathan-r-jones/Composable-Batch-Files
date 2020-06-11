:_

@echo off



:_

set filep=* Application-centric way of running an application with an optional filename parameter.

echo.
echo %filep% Jun-9-2020_3_28_PM



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_user_input



:_ (!rfsp) (mov-6)

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameters]

echo.
echo Parameter 1: Application nickname.

echo.
echo Parameter 2 (Optional): Filename alias.

exit/b



:_

:validate_user_input

call an %1

if %errorlevel% == 1 (
  echo.
  echo * Error: An application alias for "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_application%" (
  echo.
  echo * Error: The application was not found at "%cbf_application%".
  exit/b
)

if "%~2" == "" goto percent_2_is_blank

call fn %2

if %errorlevel% == 1 (
  echo.
  echo * Error: An filename alias for "%2" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The cbf_fn was not found at "%cbf_parameter%".
  exit/b
)

set cbf_parameter=%cbf_fn%

goto main_function



:percent_2_is_blank

set cbf_parameter=



:_

:main_function

set fp=* Main function of %0.bat.

echo.
echo %fp%

call r

exit/b



:_
