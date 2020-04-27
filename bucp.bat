:_

@echo off



:_

set filep=* Back up current file to code quick backup folder.



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

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename of file in the current folder.

set parameter_2=Parameter 2: Path alias of where you want to move the file to.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Single task

echo.
echo Entangled variable: cbf_path

echo.
echo Examples:

echo.
echo 

exit/b

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:validate_user_input

call n %2

if %errorlevel% gtr 0 exit/b

if not exist "%~1" (
  echo.
  echo * Error: Percent 1 does not exist.
  exit/b
)



:_

:main_function

xcopy "%~1" "%cbf_path%"

call td cqbu

exit/b



:_ (!rfsp) (mov-7)
