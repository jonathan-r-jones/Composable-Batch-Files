:_

@echo off



:_

set filep=* Run excel with or without a filename alias parameter.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto use_blank_excel_document

if "%~1" == "/?" goto help

goto validate_input



:_

:help

rem lu: Nov-11-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Filename alias to run. This file will try to open ^
the cbf_excel_filename first, and if that is not found, it will try to open the ^
cbf_filename. If left blank, Excel is opened.

echo.
echo %parameter_1%

exit/b



:_

:validate_input

set cbf_excel_filename=

call fn %1

if %errorlevel% gtr 0 (
  echo.
  exit/b
)

if not exist "%cbf_excel_filename%" (
  echo.
  echo * Error: Could not find "%cbf_excel_filename%". Nov-11-2019 1:35 PM
  exit/b
)

set cbf_filename=%cbf_excel_filename%

goto main_function



:_

:use_blank_excel_document

call fn bed



:_

:main_function

call m associate_cbf_parameter_to_cbf_filename

call an ex

call r

exit/b



:_ (!rfsp) (mov-7)