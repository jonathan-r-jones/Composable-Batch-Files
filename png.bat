:_

@echo off



:_

set filep=* Leverage cbf-png variable.



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

set parameter_1=Parameter 1: cbf-png alias to reference.

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

if "%cbf-png%" == "" (
  echo.
  echo * Error: cbf-png is not defined for %1.
  exit/b
)

set cbf-fn=%cbf-png%

call m double_click

call r

exit/b



:_ (!rfsp) (mov-7)