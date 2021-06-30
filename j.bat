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
echo %0 max xml

echo.
echo %0 2446 png2

echo.
echo %0 ng pptm

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
  echo * Error: Aliases do not have periods. Was it necessary to use the "%0" command?
  exit/b
)

call m clear_errorlevel_silently 

call m reset_cbf-variables

call n %~1

if %errorlevel% gtr 0 exit/b

if not "%~2" == "" goto compose_dcv

goto main_function



:_

:compose_dcv

call m compose_variable %2

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf-%2" for the alias "%1".
  exit/b
)

call dc "%cbf-expanded-variable%"

exit/b



:_

:create_new_excel_file

set fp=* Create new Excel file.

rem echo.
rem echo cbf-ex: "%cbf-ex%"

call m distill_filename "%cbf-ex%"

call m distill_path "%cbf-ex%"

cd /d "%cbf-distilled_path%"

call cpfc exb "%cbf-distilled_filename%"

exit/b



:_

:create_new_word_file

set fp=* Create new Word file.

call m distill_filename "%cbf-wo%"

call m distill_path "%cbf-wo%"

cd /d "%cbf-distilled_path%"

call cpfc wob "%cbf-distilled_filename%"

exit/b



:_

:main_function

set fp=* Below here is the order of operations.



:_

if not "%cbf-application%" == "" (
  rem echo.
  rem echo * cbf-application is non-blank. Jun-9-2020_3_28_PM
  call ap %1>nul
  exit/b
)



:_

if not "%cbf-wo%" == "" (
  if exist "%cbf-wo%" (
    set cbf-fn=%cbf-wo%
    call m double_click
    call r
    exit/b
  ) else (
    echo.
    echo * Could not find the file "%cbf-wo%" so create it.
    goto create_new_word_file
    exit/b
  )
)



:_

if not "%cbf-ex%" == "" (
  if exist "%cbf-ex%" (
    rem echo.
    rem echo * Double click Excel file "%cbf-ex%".
    set cbf-fn=%cbf-ex%
    call m double_click
    call r
    exit/b
  ) else (
    echo.
    echo * Could not find the file "%cbf-ex%" so create it.
    goto create_new_excel_file
    exit/b
  )
)



:_

if not "%cbf-pptx%" == "" (
  if exist "%cbf-pptx%" (
    rem echo.
    rem echo * Double click Powerpoint file "%cbf-pptx%".
    set cbf-fn=%cbf-pptx%
    call m double_click
    call r
    exit/b
  )
)



:_

if not "%cbf-fn%" == "" (
  if exist "%cbf-fn%" (
    rem echo.
    rem echo * File exists cbf-fn: %cbf-fn%.
    call xfn %1>nul
    exit/b
  ) else (
    echo.
    echo * Error: File "%cbf-fn%" does not exist.
    exit/b
  )
)



:_

if not "%cbf-url%" == "" (
  call sf %1>nul
  exit/b
)



:_

if not "%cbf-png%" == "" (
  if exist "%cbf-png%" (
    call dc "%cbf-png%"
    exit/b
  )
)



:_

if not "%cbf-pt%" == "" (
  if exist "%cbf-pt%" (
    td %1>nul
  )
)



:_

if not "%cbf-gh%" == "" (
  call sf %1>nul
  exit/b
)



:_

if not "%cbf-cf%" == "" (
  call sf %1>nul
  exit/b
)



:_

echo.
echo * Error: Could not find an executable CBF parameter.

rem (!rfsp) (mov-2)

exit/b



:_
