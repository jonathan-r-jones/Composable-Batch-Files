:_

@echo off



:_

set filep=* Filename sapien. (In Beta.)

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~2" == "" goto help

goto validate_input



:_

:help

rem lu: Nov-21-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Application alias.

set parameter_2=Parameter 2: Filename or filename alias.

set parameter_3=Parameter 3 (Optional): -c or -e.

set parameter_4=Parameter 4 (Optional): -c or -e.

set parameter_4=Parameter 4 (Optional): -v Create file using clipboad contents.

set parameter_4=Parameter 4 (Optional): -d Delete file before opening it.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo %parameter_3%

echo.
echo %parameter_4%

echo.
echo Examples

echo.
echo Example: f no j1

echo.
echo Example: f sm j55.txt

echo.
echo Example: f sm j2

echo.
echo Example: f no j1 -c

echo.
echo Example: f no j7.txt -c

echo.
echo Example: f np jenkinsfile -e

rem ::   _/)    _/)    (!rfspbm)
rem ~~~~~~~~~~~~~~

echo.
echo Example: f np jenkinsfile -e -c

echo.
echo Example: f np jenkinsfile -e

echo.
echo Example: f np jenkinsfile -e

echo.
echo Example: f ty kb

echo.
echo Example: f np kb

echo.
echo Example: f np j1 -v

exit/b



:_

:validate_input

call set_cbf_filename %2 %3 %4

if %errorlevel% gtr 0 (
  exit/b
)

call an %1

if %errorlevel% gtr 0 (
  exit/b
)



:_

:main_function

set cbf_parameter=%cbf_filename%

call r

exit/b



:_ (!rfsp) (mov-7)