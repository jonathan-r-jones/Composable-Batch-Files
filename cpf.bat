:_

@echo off



:_

set filep=* Copy file contents to clipboard.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the file the contents of you wish you want to copy to the clipboard.

echo.
echo %parameter_1%

exit/b



:_

:validate_user_input

if "%~1" == "" (
  echo.
  echo * Error: A parameter is required.
  goto help
)

call fn %1

if "%cbf_filename%" == "" (
  echo.
  echo * Error: CBF_Filename is unassigned.
  exit/b
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: CBF_Filename does not exist.
  exit/b
)



:_

:main_function

clip < "%cbf_filename%"

echo.
echo * Contents of "%cbf_filename%" copied to clipboard.

exit/b



:_ (!rfsp) (mov-7)