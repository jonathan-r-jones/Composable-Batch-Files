:_

@echo off



:_

set filename_stands_for=* Open Notepad.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: Edit files in an editor.
set filep=%filep%

echo.
echo %filep%

echo.
echo Last Updated: Jun-8-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Nickname of the file you wish to edit.
set parameter_1=%parameter_1% If left blank, the application is simply started.

echo.
echo %parameter_1%

exit /b



:_

:main_function

set fp=* Main function.

echo %filename_stands_for%

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

set cbf_parameter=%cbf_filename%

call r

rem (!rfsp) (mov-2)

exit /b



:_