:_

@echo off



:_

set filep=* Run Code Compare using DCVs.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main-function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]


set parameter-1=Alias for first parameter.

echo.
echo %parameter-1%


set parameter-2=DCV for first parameter.

echo.
echo %parameter-2%


set parameter-3=Alias for second parameter.

echo.
echo %parameter-3%


set parameter-4=DCV for second parameter.

echo.
echo %parameter-4%


exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main-function

echo.
echo %filep%

call cv c>nul


rem File 1.
call n %1

if %errorlevel% gtr 0 exit/b

call m compose_variable %2

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition for "cbf-%2" for the alias "%1".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf-expanded-variable%

if not exist "%cbf-expanded-variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf-expanded-variable%" does not exist.
  rem exit/b
)

set cbf-file-1=%cbf-expanded-variable%


rem File 2.
call n %3

if %errorlevel% gtr 0 exit/b

call m compose_variable %4

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition for "cbf-%4" for the alias "%3".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf-expanded-variable%

if not exist "%cbf-expanded-variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf-expanded-variable%" does not exist.
  rem exit/b
)

set cbf-file-2=%cbf-expanded-variable%

call an coco

if %errorlevel% gtr 0 (
  exit/b
)

start  "Code Compare" "%cbf-application%" "%cbf-file-1%" "%cbf-file-2%"

exit/b



:_ (!rfsp) (mov-6)
