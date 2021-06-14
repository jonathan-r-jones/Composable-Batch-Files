:_

@echo off



:_

set filep=* Edit an alias' log file.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the log file you wish to edit.

echo.
echo %parameter_1%

exit/b



:_

:main_function

rem lu: May-17-2019

set cbf-log_file=

call n %1

if "%cbf-log_file%" == "" (
  echo.
  echo * Error: CBF log file is not set.
  exit/b
)

call e %cbf-log_file%

exit/b



:_ (!rfsp) (mov-7)