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

set cbf-application=
set cbf-expanded-variable=
set cbf-%2=

call n %1

if "%2" == "" (
  echo.
  echo * Error: Percent is required.
  exit/b
)

call m compose_variable %2

if "%cbf-expanded-variable%" == "" (
  echo.
  echo * Error: cbf-Expanded variable is required.
  exit/b
)

set cbf-application=%cbf-expanded-variable%

set cbf-parameter=

call r

exit/b



:_ (!rfsp) (mov-7)