:_

@echo off



:_

set filep=* Simulate a double-click using a default precedence of operation preferences or a dynamically constructed variable.



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
echo Parameter 2 (Optional): Dynamically constructed variable you wish to use, which will ^
override the default.

echo.
echo Think of %1 as command version of the GUI double-click.

echo.
echo Pit of Success Strategy: The algorithm will look many different cbf variables to ^
double-click on so you are not restricted to using a single cbf variable for this batch file.

echo.
echo Batch File Style: Single Purpose

echo.
echo Example(s):

echo.
echo %0 j max xml

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

if %errorlevel% gtr 0 exit/b

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

:create_new_excel_file

set fp=* Create new Excel file.

rem echo.
rem echo cbf_ex: "%cbf_ex%"

call m distill_filename "%cbf_ex%"

call m distill_path "%cbf_ex%"

cd /d "%cbf_distilled_path%"

call cpfc exb "%cbf_distilled_filename%"

exit/b



:_

:create_new_word_file

set fp=* Create new Word file.

call m distill_filename "%cbf_wo%"

call m distill_path "%cbf_wo%"

cd /d "%cbf_distilled_path%"

call cpfc wob "%cbf_distilled_filename%"

exit/b



:_

:main_function

set fp=* This is the order of operations.



:_

if not "%cbf_application%" == "" (
  rem echo.
  rem echo * Cbf_application is non-blank. Jun-9-2020_3_28_PM
  call ja %1>nul
  exit/b
)



:_

if not "%cbf_wo%" == "" (
  if exist "%cbf_wo%" (
    set cbf_fn=%cbf_wo%
    call m double_click
    call r
    exit/b
  ) else (
    echo.
    echo * Could not find the file "%cbf_wo%" so create it.
    goto create_new_word_file
    exit/b
  )
)



:_

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
    echo * Could not find the file "%cbf_ex%" so create it.
    goto create_new_excel_file
    exit/b
  )
)



:_

if not "%cbf_fn%" == "" (
  if exist "%cbf_fn%" (
    rem echo.
    rem echo * File exists cbf_fn: %cbf_fn%.
    call xfn %1>nul
    exit/b
  ) else (
    echo.
    echo * Error: File "%cbf_fn%" does not exist.
    exit/b
  )
)



:_

if not "%cbf_url%" == "" (
  call sf %1>nul
  exit/b
)



:_

if not "%cbf_png%" == "" (
  if exist "%cbf_png%" (
    call dc %cbf_png%
    exit/b
  )
)



:_

if not "%cbf_path%" == "" (
  if exist "%cbf_path%" (
    td %1>nul
  )
)



:_

if not "%cbf_gh%" == "" (
  call sf %1>nul
  exit/b
)



:_

if not "%cbf_conf%" == "" (
  call sf %1>nul
  exit/b
)



:_

echo.
echo * Error: Could not find an executable CBF parameter.

rem (!rfsp) (mov-2)

exit/b



:_
