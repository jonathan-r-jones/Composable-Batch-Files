:_

@echo off



:_

set filep=* Quick backup and restore.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

cls

echo.
echo %filep%

rem lu: May-18-2020

echo.
echo Usage: %0 [space separated parameter(s)]. Copies or restores your chosen file to and from
echo the Quick Code Backup folder.

set parameter_1=Parameter 1: CBF alias you wish to process.

set parameter_2=Parameter 2: DCV you wish to use.

set parameter_3=Parameter 3 (Optional): If "r" or "-r" is used, a restore instead of a save is performed.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo %parameter_3%

echo.
echo Batch file style: Single Purpose

echo.
echo Examples:

echo.
echo %0 j1 fn

echo.
echo %0 j1 fn r

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

echo.
echo %filep%

call m reset

call n %1>nul

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

if "%~3" == "r" goto restore_file
if "%~3" == "-r" goto restore_file

goto save_file



:_

:save_file

set fp=* Save file.

set cbf-source_fn=%cbf-expanded-variable%

rem echo.
rem echo cbf-fn: %cbf-fn%

call pn x>nul

if %errorlevel% gtr 0 exit/b

if not exist "%cbf-source_fn%" (
  echo.
  echo * Error: The source file "%cbf-source_fn%" could not be found.
  exit/b
)

call m distill_filename %cbf-source_fn%

set cbf-destination_fn=%cbf-pt%\%cbf-distilled_filename%

goto main_function



:_

:restore_file

set fp=* Restore file.

echo.
echo %fp%

set cbf-destination_fn=%cbf-expanded-variable%

echo.
echo cbf-fn: %cbf-fn%

call pn x>nul

if %errorlevel% gtr 0 exit/b

call m distill_filename %cbf-destination_fn%

set cbf-source_fn=%cbf-pt%\%cbf-distilled_filename%

if not exist "%cbf-source_fn%" (
  echo.
  echo * Error: The source file "%cbf-source_fn%" could not be found.
  exit/b
)

if not exist "%cbf-destination_fn%" (
  echo.
  echo * Error: The destination file "%cbf-destination_fn%" could not be found.
  exit/b
)

goto main_function



:_

:main_function

rem lu: May-18-2020

@echo on
copy "%cbf-source_fn%" "%cbf-destination_fn%"
@echo off

exit/b



:_ (!rfsp) (mov-7)
