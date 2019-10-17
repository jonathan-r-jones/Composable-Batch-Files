:_

@echo off



:_

set filep=* Build relative filename.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Path alias to use for appending.

set parameter_1=Parameter 1: Fliename alias to use for appending.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:validate_input



:_

:validate_path

call pn %1

if %errorlevel% == 1 (
  echo.
  echo * Oct-17-2019 5:36 PM
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_path%" (
  echo.
  echo * Error: The CBF_Path "%cbf_path%" could not be found.
  exit/b
)

set cbf_built_filename=%cbf_path%



:_

:validate_filename

call fn %2

if %errorlevel% == 1 (
  echo.
  echo * Oct-17-2019 5:35 PM
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The CBF_Filename "%cbf_filename%" could not be found.
  exit/b
)



:_

:main_function

rem Warning: This batch file is under construction as of Oct-16-2019. *********************

rem Seems like we would need a new cbf variable something like cbf_filename_without_path

exit/b

set cbf_built_filename=%cbf_built_filename%\%cbf_filename%

set cbf_filename=%cbf_built_filename%

exit/b



:_ (!rfsp) (mov-7)