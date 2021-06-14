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

set cbf-wo=

call n %1

if %errorlevel% gtr 0 exit/b

if "%cbf-wo%" == "" (
  echo.
  echo * The cbf-wo is not defined for "%1". Jul-10-2020_12_54_PM
  goto try_using_cbf-fn
)

set cbf-fn=%cbf-wo%

if not exist "%cbf-wo%" (
  goto create_word_file
)

goto main_function



:_

:create_word_file

set fp=* Create new Word file.

call m distill_filename "%cbf-wo%"

call m distill_path "%cbf-wo%"

cd /d "%cbf-distilled_path%"

call cpfc wob "%cbf-distilled_filename%"

set cbf-fn=%cbf-distilled_filename%

goto main_function



:_

:try_using_cbf-fn

call fn %1>nul

if %errorlevel% gtr 0 exit/b

echo %cbf-ex% | find /i "docx">nul

if not %errorlevel% == 0 (
  echo.
  echo * cbf-fn does not contain a docx document. Aug-25-2020_11_05_AM
  exit/b
)

goto main_function



:_

:use_blank_document

call fn wob

goto main_function



:_

:main_function

call m associate_cbf-parameter_to_cbf-fn>nul

call an wo>nul

call r

exit/b



:_ (!rfsp) (mov-7)
