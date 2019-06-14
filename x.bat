:_

@echo off



:_

set filep=* Remote double-click equivalent way to run an alias.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo. %filep%

echo.
echo Usage: %0 [Parameter 1]

rem User case: x rl
rem User case: x cnn
rem User case: x xc
rem User case: x ex

echo.
echo Parameter 1: Alias that you want to run or "double click" if you will.

echo.
echo Precedence of execution:
echo.
echo If filename isn't blank, execute it.
echo If URL isn't blank, execute it.
echo If application isn't blank, execute it.
echo.
echo If all of the above are blank, raise an error.

exit/b



:_

:main_function

echo.
echo %filep%

set cbf_application=
set cbf_filename=
set cbf_url=

call n %~1

if %errorlevel% == 1 (
  echo.
  echo * Error: Cannot find label "%~1".
  exit/b
)

if not "%cbf_filename%" == "" (
  if exist "%cbf_filename%" (
    xfn %1>nul
  )
)

if not "%cbf_url%" == "" (
  sf %1>nul
)

if not "%cbf_application%" == "" (
  xa %1>nul
)

if not "%cbf_path%" == "" (
  if exist "%cbf_path%" (
    td %1>nul
  )
)

echo.
echo * Error: CBF parameters for filename, url and application are all blank.

rem (!rfsp) (mov-2)

exit/b



:_