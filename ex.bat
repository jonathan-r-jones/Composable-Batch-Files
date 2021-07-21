:_

@echo off



:_

set filep=* Run Excel.



:_

set fp=* Route callers.

if "%~1" == "" goto use_blank_document

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%

rem lu: Aug-31-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Filename alias to run. This file will try to open ^
the cbf-%0 first, and if that is not found, it will try to open the ^
cbf-fn. If left blank, Excel is opened.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf-%0

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set cbf-ex=
set cbf-%1=

call m cel

call n %1

if %errorlevel% gtr 0 exit/b

if "%cbf-ex%" == "" (
  echo.
  echo * The cbf-ex is not defined for "%1". Jul-24-2020_1_19_PM
  goto try_using_cbf-fn
)

set cbf-fn=%cbf-ex%

if not exist "%cbf-ex%" (
  goto create_excel_file
)

goto main_function



:_

:create_excel_file

set fp=* Create Excel file.

rem echo.
rem echo cbf-ex: "%cbf-ex%"

call m distill_filename "%cbf-ex%"

call m distill_path "%cbf-ex%"

cd /d "%cbf-distilled_path%"

call cpfc exb "%cbf-distilled_filename%"

rem echo.
rem echo cbf-distilled_filename: "%cbf-distilled_filename%"

set cbf-fn=%cbf-distilled_filename%

goto main_function



:try_using_cbf-fn

call m cel

call fn %1>nul

if %errorlevel% gtr 0 exit/b

echo %cbf-ex% | find /i "xlsx">nul

if not %errorlevel% == 0 (
  echo.
  echo * cbf-fn does not contain an xlsx document. Aug-24-2020_11_03_AM
  exit/b
)

goto main_function



:_

:use_blank_document

call fn bed

goto main_function



:_

:main_function

call m associate_cbf-parameter_to_cbf-fn>nul

call an ex>nul

call r

exit/b



:_ (!rfsp) (mov-7)
