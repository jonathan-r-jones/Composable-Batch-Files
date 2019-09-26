:_

@echo off



:_

set filep=* Delete a file based on a passed in filename alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of filename you wish to delete.

echo.
echo %parameter_1%

exit/b



:_

:validate_user_input

call n %1

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The file you are trying to delete doesn't exist.
  exit/b
)



:_

:main_function

rem lu: 

del "%cbf_filename%"

exit/b



:_ (!rfsp) (mov-7)