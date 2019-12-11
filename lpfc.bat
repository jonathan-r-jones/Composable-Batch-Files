:_

@echo off



:_

set filep=* Copy a file's content to the clipboard.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the file you wish to copy.

echo.
echo %parameter_1%

exit/b



:_

:validate_input

call fn %1

if %errorlevel% gtr 0 (
  exit/b
)



:_

:main_function

clip < "%cbf_filename%"

exit/b



:_ (!rfsp) (mov-7)