:_

@echo off



:_

set filename_stands_for=* Edit a file.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: Edit files.

echo.
echo %filep%

echo.
echo Last Updated: Jun-8-2018

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): The filename nickname of the file to execute
set parameter_1=%parameter_1% or filename of a file in the current folder.

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): The Application nickname to use to edit the file.
set parameter_2=%parameter_2% If left blank, the default text editor is used.

echo.
echo %parameter_2%

set parameter_3=Parameter 3 (Optional): If "x", parameter 1 is assumed to be an
set parameter_3=%parameter_3% extensionless filename rather than a nickname.

echo.
echo %parameter_3%

exit/b



:_

:main_function

echo %filename_stands_for%

if "%~3" == "x" (
  set cbf_filename=%~1
  goto final_phase
)

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | find /i ".">nul

if %errorlevel% == 0 (
  set cbf_filename=%~1
) else (
  call n %1
)

if "%~2" == "" (
  rem Set statements aren't allowed inside if blocks, so this is the workaround.
  call m set_cbf_application
) else (
  call n %2
)



:final_phase

set cbf_parameter=%cbf_filename%

call r

rem (!rfsp) (mov-2)

exit/b



:_