:_

@echo off



:_

set filep=* Filename sapien. Use any application to open any file in the current ^
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
echo Examples:

echo.
echo f no j1

echo.
echo f sm j2

echo.
echo f np .gitignore

echo.
echo f .gitignore

echo.
echo f np jenkinsfile -e

echo.
echo f np set_cbf_fn

echo.
echo f np kb

echo.
echo f no "the rain in spain.txt"

echo.
echo f np "the rain in spain"

echo.
echo f np not_an_alias

echo.
echo f no j7.txt

echo.
echo f np "the rain in spain"

echo.
echo f np "the rain in spain.txt"

echo.
echo f np "rain in spain"

echo.
echo f no "rain in spain.txt"

echo.
echo f sm j1

echo.
echo f sm j1 -d

echo.
echo f np jenkinsfile

echo.
echo f np jenkinsfile -e

echo.
echo f no j55.txt

echo.
echo f np j55.txt -d

echo.
echo f me "rain in spain" -d

echo.
echo %0 winz cart-rest-client-0.0.3-RELEASE.jar

echo.
echo %0 ie ma

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

call sfn "%~2" "%~3" "%~4" "%~5" "%~6"

if %errorlevel% gtr 0 (
  exit/b
)

call an %1

if %errorlevel% gtr 0 (
  exit/b
)



:_

:main_function

set cbf_parameter=%cbf_fn%

call r

exit/b



:_ (!rfsp) (mov-7)
