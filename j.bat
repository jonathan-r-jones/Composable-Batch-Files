:_

@echo off



:_

set filep=* Using a default precedence of operation preferences or a dynamically constructed variable, simulate a double-click.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo. %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Alias of the cbf that you want to run or "double click" if you will.

echo.
echo Parameter 2 (Optional): Dynamically constructed variable you wish to use, which will 
echo override the default.

echo.
echo Think of %1 as command version of the GUI double-click.

echo.
echo Pit of Success Strategy: The algorithm will look many different cbf variables to ^
double-click on so you are not restricted to using a single cbf variable for this batch file.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set fp=* Validate input.

rem echo.
rem echo %fp%

echo %1 | c:\windows\system32\find.exe /i ".">nul

if %errorlevel% == 0 (
  echo.
  echo * Error: Aliases do not have periods. Was it necessary to use the "x" command?
  exit/b
)

call m clear_errorlevel_silently 

call m reset_cbf_variables

call n %~1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. - skw May-4-2020_7_57_PM
  call m clear_errorlevel_silently 
  exit/b
)

if not "%~2" == "" goto compose_dcv

goto main_function



:_

:compose_dcv

call m compose_variable %2

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf_%2" for the alias "%1".
  exit/b
)

call dc "%cbf_expanded_variable%"

exit/b



:_

:main_function

set fp=* This is a precedence hierarchy.

if not "%cbf_application%" == "" (
  rem echo.
  rem echo * cbf_application is non-blank.
  call ja %1>nul
  exit/b
)

if not "%cbf_wo%" == "" (
  if exist "%cbf_wo%" (
    set cbf_fn=%cbf_wo%
    call m double_click
    call r
    exit/b
  )
)

if not "%cbf_ex%" == "" (
  if exist "%cbf_ex%" (
    rem echo.
    rem echo * Double click Excel file "%cbf_ex%".
    set cbf_fn=%cbf_ex%
    call m double_click
    call r
    exit/b
  ) else (
    echo.
    echo Could not find cbf_ex.
    exit/b
  )
)

if not "%cbf_fn%" == "" (
  if exist "%cbf_fn%" (
    echo.
    echo * 1. File exists cbf_fn: %cbf_fn%.
    call xfn %1>nul
    exit/b
  ) else (
    echo.
    echo * Error: File "%cbf_fn%" does not exist.
    exit/b
  )
)

if not "%cbf_url%" == "" (
  call sf %1>nul
  exit/b
)

if not "%cbf_png%" == "" (
  if exist "%cbf_png%" (
    call dc %cbf_png%
    exit/b
  )
)

if not "%cbf_path%" == "" (
  if exist "%cbf_path%" (
    td %1>nul
  )
)

if not "%cbf_gh%" == "" (
  call sf %1>nul
  exit/b
)

if not "%cbf_conf%" == "" (
  call sf %1>nul
  exit/b
)

echo.
echo * Error: Could not find an executable CBF parameter.

rem (!rfsp) (mov-2)

exit/b



:_
