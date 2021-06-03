:_

@echo off



:_

set filep=* Open any file with any application using a DCV.



:_

set fp=* Route callers.

if "%~3" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

rem lu: Apr-2-2020

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias you wish to process.

set parameter_2=Parameter 2: DCV

set parameter_3=Parameter 3: Alias of your chosen application.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo %parameter_3%

echo.
echo Batch file style: Custom.

echo.
echo Examples:

echo.
echo %0 rp_1 xml me

echo.
echo %0 csc xml me

echo.
echo %0 wcf java vsc

echo.
echo %0 1964 java me

echo.
echo %0 1484 ts ij

echo.
echo %0 2154 java3 ij

rem This is a webpage!
echo.
echo %0 arte gh2 kr

echo.
echo %0 acis jira kr

echo.
echo %0 ksc fn ij

echo.
echo %0 cd pr kr

exit/b

(!rfsp) (mov-6)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

call m clear_errorlevel_silently>nul

call cv c>nul

call n %1

if %errorlevel% gtr 0 exit/b

call m compose_variable %2

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition for "cbf_%2" for the alias "%1".
  exit/b
)

call an %3>nul

if %errorlevel% gtr 0 (
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf_expanded_variable%

if not exist "%cbf_expanded_variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf_expanded_variable%" does not exist.
  rem exit/b
)

set cbf_parameter=%cbf_expanded_variable%

call r

exit/b



:_
