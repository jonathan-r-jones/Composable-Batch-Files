:_

@echo off



:_

set filep=* Use type command to view nickname-specified file.

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

set parameter_1=Parameter 1: Alias of filename to view.

echo.
echo %parameter_1%

exit/b



:_

:main_function

call fn %1

echo.
type "%cbf_filename%"

echo.

exit/b



:_ (!rfsp) (mov-6)