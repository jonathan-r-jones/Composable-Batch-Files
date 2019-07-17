:_

@echo off



:_

set filep=* Edit the log file of an alias.

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

set parameter_1=Parameter 1: Alias of the setting file you wish to edit.

echo.
echo %parameter_1%

exit/b



:_

:main_function

rem lu: May-15-2019

set cbf_log_file=

call n %1

if "%cbf_log_file%" == "" (
  echo.
  echo * Error: CBF Log file is not set.
  exit/b
)

call e %cbf_log_file%

exit/b



:_ (!rfsp) (mov-7)