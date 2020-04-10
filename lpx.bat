:_

@echo off



:_

set filep=* Use a dynamic variable to copy a cbf variable to the clipboard.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~2" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

rem lu: Apr-10-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: CBF suffix.

set parameter_2=Parameter 2: Target alias.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Single task.

echo.
echo Examples:

echo.
echo %0 hostname sr66

exit/b


  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______




:_

:main_function

call n %2>nul

if %errorlevel% gtr 0 exit/b

call m compose_variable %1>nul

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf_%1" for the alias "%2".
  exit/b
)

echo %cbf_expanded_variable% | clip

echo.
echo * "%cbf_expanded_variable%" has been copied to the clipboard.

exit/b



:_ (!rfsp) (mov-7)
