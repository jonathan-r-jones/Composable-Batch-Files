:_

@echo off



:_

set fp=* Shift parameters.

shift /0



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_

:help

echo.
echo Filename stands for: Editor helper.

echo.
echo Last Updated: Jun-8-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1 (Optional): Nickname of the file you wish to edit.
set parameter_1=%parameter_1% or the name of a filename in the current folder.
set parameter_1=%parameter_1% If left blank, the application is simply started.

echo.
echo %parameter_1%

exit/b



:_

:main_function

rem echo %filename_stands_for%

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