:_

@echo off



:_

set filep=* Application nickname dictionary that sets the full application name corresponding to a given unique nickname parameter.



:_

set fp=* In order to promote freshness, clear the environment variable.

set cbf-application=



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_ (!rfsp) (mov-6)

:help

echo.
echo Notes: This file and 3 others, viz. fn.bat, pn.bat and un.bat are not strictly necessary 
echo in that they could all be replaced be calls to nn.bat, nicknames source. However,
echo they are useful in the sense that by calling these, the code is more readable and
echo has more clarity of intent.

echo.
echo Usage: %0 [single parameter]

exit/b



:_

:validate_input

set cbf-application=

call n %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Jun-28-2021_2_52_PM
  call m clear_errorlevel_silently 
  exit/b 1
)

if not defined cbf-application (
  echo.
  echo * The cbf-application is not defined for "%1". Jun-28-2021_2_53_PM
  exit/b 1
)

if "%cbf-application%" == "microsoft-edge" exit/b 0

if not exist "%cbf-application%" (
  echo.
  echo * Error: The cbf-Application "%cbf-application%" could not be found. Jun-28-2021_2_54_PM
  exit/b 1
)



:_
