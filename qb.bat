:_

@echo off



:_

set filep=* Quickly back up any registered file.



:_

set fp=* Route callers.

if "%~2" == "" goto help

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

cls

echo.
echo %filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 2: Alias of the file you wish to backup.

set parameter_2=Parameter 1: Dynamically constructed cbf variable.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Single Task

echo.
echo Examples:

echo.
echo %0 fn rp_8

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

echo.
echo %filep%

call m reset

call n %1>nul

if %errorlevel% gtr 0 exit/b

call m compose_variable %2

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf_%1" for the alias "%2".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf_expanded_variable%

if not exist "%cbf_expanded_variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf_expanded_variable%" does not exist.
  rem exit/b
)

set cbf_source_fn=%cbf_expanded_variable%

rem echo.
rem echo cbf_fn: %cbf_fn%

call pn qb>nul

@echo on
copy "%cbf_source_fn%" "%cbf_path%"
@echo off

exit/b



:_ (!rfsp) (mov-7)
