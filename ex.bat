:_

@echo off



:_

set filep=* Run excel with or without a filename alias parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto use_blank_document

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%

rem lu: Nov-11-2019

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

set cbf_ex=
set cbf_%1=

call n %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Jul-24-2020_1_18_PM
  exit/b 1
)

rem echo.
rem echo cbf_ex: %cbf_ex%

if "%cbf_ex%" == "" (
  echo.
  echo * The cbf_ex is not defined for "%1". Jul-24-2020_1_19_PM
  goto try_using_cbf_fn
)

set cbf_fn=%cbf_ex%

goto main_function



:try_using_cbf_fn

call fn %1>nul

if %errorlevel% gtr 0 exit/b

echo %cbf_ex% | find /i "xlsx">nul

if not %errorlevel% == 0 (
  echo.
  echo * cbf_fn does not contain an xlsx document. Aug-24-2020_11_03_AM
  exit/b
)

goto main_function



:_

:use_blank_document

call fn bed

goto main_function



:_

:main_function

call m associate_cbf_parameter_to_cbf_fn>nul

call an ex>nul

call r

exit/b



:_ (!rfsp) (mov-7)
