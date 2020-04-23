:_

@echo off



:_

set filep=* Cs.bat consumer.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

rem lu: Apr-7-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Group you are searching.

set parameter_2=Parameter 2: Search criterion. Double quotes must be used if spaces are present.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Function routing.

echo.
echo Examples:

echo.
echo cs_c caco restart

echo.
echo cs_c ma "search enrollee"

exit/b


  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:main_function

set cbf_cs=

call n %1

if "%cbf_cs%" == "" (
  echo.
  echo * Error: No cbf_cs is associated with "%1".
  exit/b
)

call cs %2 %cbf_cs%

exit/b



:_ (!rfsp) (mov-7)
