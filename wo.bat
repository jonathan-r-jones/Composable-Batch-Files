:_

@echo off



:_

set filep=* Run Word with or without a filename alias parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto use_blank_document

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%

rem lu: Jul-10-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Filename alias to run. This file will try to open ^
the cbf_%0 first, and if that is not found, it will try to open the ^
cbf_fn. If left blank, Excel is opened.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf_%0

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set cbf_%1=

call n %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Jul-10-2020_12_53_PM
  exit/b 1
)

if not defined cbf_ex (
  echo.
  echo * The cbf_ex is not defined for "%1". Jul-10-2020_12_54_PM
  goto try_using_cbf_fn
)

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The cbf_fn "%cbf_fn%" could not be found. Jul-10-2020_12_55_PM
  goto try_using_cbf_fn
)

set cbf_fn=%cbf_wo%

goto main_function



:try_using_cbf_fn

call fn %1>nul

if %errorlevel% gtr 0 (
  echo.
  exit/b
)

goto main_function



:_

:use_blank_document

call fn wob

goto main_function



:_

:main_function

call m associate_cbf_parameter_to_cbf_fn>nul

call an wo>nul

call r

exit/b



:_ (!rfsp) (mov-7)
