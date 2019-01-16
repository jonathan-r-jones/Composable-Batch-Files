:_

@echo off



:_

set fp=* Shift parameters.

shift /0



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

set file_has_no_extension=0

if "%~2" == "-n" set file_has_no_extension=1

if "%~3" == "-n" set file_has_no_extension=1

if "%~2" == "-c" (
   if "%file_has_no_extension%" == "0" (
      goto c_switch_only
   )
)

if "%~3" == "-c" (
   if "%file_has_no_extension%" == "0" (
      echo 2
      goto c_switch_only
   )
)

if "%~2" == "-c" (
   if "%file_has_no_extension%" == "1" (
      goto c_and_n_switches
   )
)

if "%~3" == "-c" (
   if "%file_has_no_extension%" == "1" (
      goto c_and_n_switches
   )
)

if "%file_has_no_extension%" == "1" (
  goto n_switch_only
)

goto simple_workflow



:_

:help

echo.
echo Filename stands for: Editor abstraction layer.

echo.
echo Last Updated: Jun-8-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1 (optional): File alias or current folder filename. If current ^
folder filename has no extension then -n must be used also. If left blank, the application ^
is merely started.

set parameter_2=Parameter 2 or 3 (optional): Use -c to force file creation. Use -n to ^
specify a file with no extension.

rem Before merging the other editor batch files here, do file comparison for each one.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:c_switch_only

set fp=* C switch only.

rem lu: Jan-16-2019

echo.
echo %fp%

set cbf_filename=

call n %0

if "%~1" == "" (
  m open_application_without_a_parameter
)

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | find /i ".">nul

if %errorlevel% == 0 (
  set cbf_filename=%~1
) else (
  call n %1
)

if "%~2" == "-c" (
  echo.
  echo * Create the file. 
  set cbf_parameter=%cbf_filename%
  call r
  exit/b 1
)

if "%~3" == "-c" (
  echo.
  echo * Create the file. 
  set cbf_parameter=%cbf_filename%
  call r
  exit/b 1
)

if "%cbf_filename%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_filename defined for '%~1'. 
  exit/b 1
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The file "%cbf_filename%" does not exist.
  exit/b 1
)

set cbf_parameter=%cbf_filename%

call r

rem (!rfsp) (mov-2)

exit/b



:_

:n_switch_only

set fp=* N switch only.

rem lu: Jan-16-2019

echo.
echo %fp%

rem exit/b



:_

:c_and_n_switches

set fp=* C and N switches.

rem lu: Jan-16-2019

echo.
echo %fp%

rem exit/b



:_

:simple_workflow

set fp=* Simple workflow, i. e. no switches specified.

echo.
echo %fp%

set cbf_filename=

call n %0

if "%~1" == "" (
  m open_application_without_a_parameter
)

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | find /i ".">nul

if %errorlevel% == 0 (
  set cbf_filename=%~1
) else (
  call n %1
)

if "%~2" == "-c" (
  echo.
  echo * Create the file. 
  set cbf_parameter=%cbf_filename%
  call r
  exit/b 1
)

if "%~3" == "-c" (
  echo.
  echo * Create the file. 
  set cbf_parameter=%cbf_filename%
  call r
  exit/b 1
)

if "%cbf_filename%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_filename defined for '%~1'. 
  exit/b 1
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The file "%cbf_filename%" does not exist.
  exit/b 1
)

set cbf_parameter=%cbf_filename%

call r

rem (!rfsp) (mov-2)

exit/b



:_