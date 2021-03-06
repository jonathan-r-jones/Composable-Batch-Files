:_

@echo off



:_

set filep=* Use a DCV to copy a cbf variable to the clipboard.



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

set parameter_2=Parameter 1: Target alias.

set parameter_1=Parameter 2: CBF suffix.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Single task.

echo.
echo Examples:

echo.
echo %0 sr66 hostname

echo.
echo %0 jjgh url

echo.
echo %0 je je

echo.
echo %0 fqma ip

echo.
echo %0 ma cron

exit/b


  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______




:_

:main_function

call n %1>nul

if %errorlevel% gtr 0 exit/b

call m compose_variable %2>nul

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf-%2" for the alias "%2".
  exit/b
)

echo %cbf-expanded-variable% | clip

echo.
echo * "%cbf-expanded-variable%" has been copied to the clipboard.

exit/b



:_ (!rfsp) (mov-7)
