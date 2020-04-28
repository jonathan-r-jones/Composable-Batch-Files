:_

@echo off



:_

set filep=* Cs.bat consumer.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~2" == "" goto help

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

echo.
echo %filep%

rem lu: Apr-7-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_2=Parameter 1: Search criterion. Double quotes must be used if spaces are present.

set parameter_1=Parameter 2: Group you are searching.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Single task

echo.
echo Entangled variable: cbf_cs

echo.
echo Examples:

echo.
echo cs_c restart caco

echo.
echo %0 "search enrollee" ma

echo.
echo 50 1.1.3 ma

echo.
echo call td r
echo %0 mvn jf

echo.
echo td ma
echo %0 fqt ma

echo.
echo This is important because it search multiple words and subfolders.
echo td cs
echo %0 "test source" cs

exit/b

(!rfsp) (mov-7)



;_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:validate_user_input

set cbf_cs=

call n %2>nul

if %errorlevel% gtr 0 exit/b

if "%cbf_cs%" == "" (
  echo.
  echo * Error: No cbf_cs is associated with "%2".
  exit/b
)



:_

:main_function

call cs "%~1" "%cbf_cs%"

rem echo.
rem echo * cbf_cs=%cbf_cs%

exit/b



:_
