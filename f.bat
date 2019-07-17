:_

@echo off



:_

set filep=* Use the default application to open a file based on its alias and filename ^
extension.

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

set parameter_1=Parameter 1: Alias of the file you wish to edit.

set parameter_2=Parameter 2: Filename extension of the file you wish to run.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

rem lu: May-15-2019

set cbf_application=
set cbf_expanded_variable=
set cbf_%2=

call n %1

if "%2" == "" (
  echo.
  echo * Error: Percent is required.
  exit/b
)

call m compose_variable %2

if "%cbf_expanded_variable%" == "" (
  echo.
  echo * Error: CBF_Expanded variable is required.
  exit/b
)

set cbf_application=%cbf_expanded_variable%

set cbf_parameter=

call r

exit/b



:_ (!rfsp) (mov-7)