:_

@echo off



:_

set filep=* Edit file in Multi-edit.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" exit

if "%~1" == "/?" sfn /?

goto validate_input



:_

:help

rem lu: Nov-27-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Application alias.

set parameter_2=Parameter 2: Filename, filename alias or batch file prefix for a batch file ^
that lives in either the CBF or Share-zone folder.

set parameter_3=Parameter 3 or greater (Optional): -e Filename without extension, e.g. Jenkinsfile. ^
-v Create file using clipboad contents. -d Delete file before opening it.

exit/b



:_

:validate_input

call sfn %*

if %errorlevel% gtr 0 (
  exit/b
)

call an me

if %errorlevel% gtr 0 (
  exit/b
)



:_

:main_function

set cbf_parameter=%cbf_filename%

call r

exit/b



:_ (!rfsp) (mov-7)