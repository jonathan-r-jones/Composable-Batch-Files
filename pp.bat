:_

@echo off



:_

set filep=* Run PowerPoint.



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
cbf-fn. If left blank, PowerPoint is opened.

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

set cbf-pp=
set cbf-%1=

call n %1

if %errorlevel% gtr 0 exit/b

if "%cbf-pp%" == "" (
  echo.
  echo * The cbf-pp is not defined for "%1". Jul-24-2020_1_19_PM
  goto try_using_cbf-fn
)

set cbf-fn=%cbf-pp%

if not exist "%cbf-pp%" (
  goto create_file
)

goto main_function



:_

:create_file

set fp=* Create file.

rem echo.
rem echo cbf-pp: "%cbf-pp%"

call m distill_filename "%cbf-pp%"

call m distill_path "%cbf-pp%"

cd /d "%cbf-distilled_path%"

call cpfc exb "%cbf-distilled_filename%"

rem echo.
rem echo cbf-distilled_filename: "%cbf-distilled_filename%"

set cbf-fn=%cbf-distilled_filename%

goto main_function



:try_using_cbf-fn

call fn %1>nul

if %errorlevel% gtr 0 exit/b

echo %cbf-pp% | find /i "xlsx">nul

if not %errorlevel% == 0 (
  echo.
  echo * cbf-fn does not contain an xlsx document. Aug-24-2020_11_03_AM
  exit/b
)

goto main_function



:_

:use_blank_document

call fn ppb

goto main_function



:_

:main_function

call m associate_cbf-parameter_to_cbf-fn>nul

call an pp>nul

call r

exit/b



:_ (!rfsp) (mov-7)
