:_

@echo off



:_

set filep=* Remove folder of the specified CBF path nickname. WARNING: Powerful batch file. Exercise caution.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: Remove folder.

echo.
echo Last Updated: Aug-9-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

echo.
echo Example: "rf fgt" would remove the For-Git-Testing folder at the "%%CBF_Path%%" location.

exit/b



:_

:main_function

set fp=* Main function.

if not "%~1" == "" call pn %1

if %errorlevel% == 1 (
  call m clear_errorlevel_silently
  exit/b
)

if "%cbf_path%" == "" (
  echo.
  echo Input Error: There is no cbf_path defined for '%~1'. 
  exit/b
)

call tdp %1

echo.
rd /s %cbf_path%

rem (!rfsp) (mov-2)

exit/b



:_