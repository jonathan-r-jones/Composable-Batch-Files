:_

@echo off



:_

set filep=* Leverage cbf_png variable.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Cbf_png alias to reference.

echo.
echo %parameter_1%

exit/b



:_

:main_function

call m clear_errorlevel_silently

call n %1

if %errorlevel% gtr 0 (
  exit/b
)

if "%cbf_png%" == "" (
  echo.
  echo * Error: Cbf_png is not defined for %1.
  exit/b
)

set cbf_fn=%cbf_png%

call m double_click

call r

exit/b



:_ (!rfsp) (mov-7)