:_

@echo off



:_

set filep=* Open folder using a DCV.



:_

set fp=* Route callers.

if -%~1- == -- goto help

if -%~1- == -/?- goto help

goto main_function



:_

:help

cls

echo.
echo %filep%

rem skw:

rem lu: 

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: dcv

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Batch file label.

set parameter_2=Parameter 2: DCV of the target folder.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Example(s):

echo.
echo %0 obx ex

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

call m clear_errorlevel_silently>nul

call m reset

call n %1

if %errorlevel% gtr 0 exit/b

call m compose_variable %2

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf_%2" for the alias "%1".
  exit/b
)

call an %3>nul

if %errorlevel% gtr 0 (
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf_expanded_variable%

if not exist "%cbf_expanded_variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf_expanded_variable%" does not exist.
  rem exit/b
)

call m convert_to_path %cbf_expanded_variable%

rem echo.
rem echo CBF Path: %cbf_path%

cd /d "%cbf_path%"

set cbf_parameter=%cbf_expanded_variable%

rem call r

exit/b


Footnote
>< >< >< 



:_
