:_

@echo off



:_

set filep=* Open a folder using a DCV.



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

rem lu: 

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf-fc_path

echo.
echo Pit of Success Strategy: If cb_conf is not, found the algorithm will look for cbf-url.

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias you wish to process.

set parameter_2=Parameter 2: Dynamically constructed cbf variable.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Example(s):

echo.
echo %0 2154 html

echo.
echo %0 csu forms

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

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf-%2" for the alias "%1".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf-expanded-variable%

if not exist "%cbf-expanded-variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf-expanded-variable%" does not exist.
  rem exit/b
)

call m convert_to_path %cbf-expanded-variable%

rem echo.
rem echo %cbf-pt%

cd /d "%cbf-pt%"

exit/b


Footnote
>< >< >< 



:_
