:_

@echo off



:_

set filep=* Run excel with or without a filename alias parameter.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_input



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): filename alias to run. This file will try to open ^
  the cbf_excel_filename first, and if that is not found, it will try to open the ^
  ^cbf_filename. If left blank, Excel is opened.

echo.
echo %parameter_1%

exit/b



:_

:validate_input

set cbf_excel_filename=

call n %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if not defined cbf_excel_filename (
  echo.
  echo * The cbf_excel_filename is not defined for "%1". Use cbf_filename.
  set cbf_excel_filename=%cbf_filename%
)

if not defined cbf_filename (
  echo.
  echo * The cbf_filename is not defined for "%1".
  exit/b
)

if not exist "%cbf_excel_filename%" (
  echo.
  echo * Error: The CBF_Excel_Filename "%cbf_excel_filename%" could not be found.
  exit/b
)



:_

:main_function

call an ex
call r

exit/b



:_ (!rfsp) (mov-7)