:_

@echo off



:_

set filep=* Filename sapien. (In Beta.) Use any application to open any file in the current ^
folder or via alias, with extension or not, with spaces or not.

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

set parameter_2=Parameter 2: Filename, filename alias or batch file prefix for a batch file ^
that lives in either the CBF or Share-zone folder.

set parameter_3=Parameter 3 or greater (Optional): -e Filename without extension, e.g. Jenkinsfile. ^
-v Create file using clipboad contents. -d Delete file before opening it.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo %parameter_3%

echo.
echo Examples

echo.
echo Example: f no j1

echo.
echo Example: f sm j2

echo.
echo Example: f np .gitignore

echo.
echo Example: e .gitignore

echo.
echo Example: f np jenkinsfile -e

echo.
echo Example: f np set_cbf_filename

echo.
echo Example: f np kb

echo.
echo Example: f no j55.txt

echo.
echo Example: f no "the rain in spain.txt"

echo.
echo Example: f np "the rain in spain"

echo.
echo Example: f np not_an_alias

echo.
echo Example: f no j7.txt

echo.
echo Example: f np "the rain in spain"

echo.
echo Example: f np "the rain in spain.txt"

echo.
echo Example: f np jenkinsfile

echo.
echo Example: f np jenkinsfile -e

rem >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< file bookmark: skw qq3

echo.
echo Example: f ty kb

echo.
echo Example: f np j1 -d

echo.
echo Example: f np j55.txt -d

echo.
echo Example: f np j55.txt -v

echo.
echo Example: f np not_an_alias -v

echo.
echo Example: f np j1 -v

echo.
echo Example: f np j1 -d -e -v

exit/b



:_

:validate_input

call sfn "%~2" "%~3" "%~4"

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