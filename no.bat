:_

@echo off



:_

set filename_stands_for=* Open Notepad.



:_

set fp=* Route help callers.

if "%~1" == "/?" m editor_help

if "%~1" == "help" m editor_help



:_

:main_function

set fp=* Main function.

rem echo %filename_stands_for%

set cbf_filename=

call n %0

if %errorlevel% == 1 (
  echo Dec-28-2018.2
  exit/b
)

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

set cbf_parameter=%cbf_filename%

call r

rem (!rfsp) (mov-2)

exit/b



:_