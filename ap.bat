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

goto validate_input



:_ (!rfsp) (mov-6)

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameters]

echo.
echo Parameter 1: Application nickname.

echo.
rem qq
echo Parameter 2 (Optional): Filename alias.

echo.
echo Entangled variable: cbf-application

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

call an %1

if %errorlevel% == 1 (
  echo.
  echo * Error: An application alias for "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf-application%" (
  echo.
  echo * Error: The application was not found at "%cbf-application%".
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

if not exist "%cbf-fn%" (
  echo.
  echo * Error: The cbf-fn was not found at "%cbf-parameter%".
  exit/b
)

set cbf-parameter=%cbf-fn%

goto main_function



:percent_2_is_blank

set cbf-parameter=



:_

:main_function

set fp=* Main function of %0.bat.

echo.
echo %fp%

call r

exit/b



:_
