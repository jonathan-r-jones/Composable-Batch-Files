:_

@echo off



:_

set filep=* Remove folder of the specified CBF path nickname. WARNING: Powerful batch file. Exercise caution.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

echo.
echo Example: "rf fgt" would remove the For-Git-Testing folder at the "%%cbf-pt%%" location.

exit/b



:_

:main_function

echo.
echo %filep%

if not "%~1" == "" call pn %1

if %errorlevel% == 1 (
  call m clear_errorlevel_silently
  exit/b
)

if "%cbf-pt%" == "" (
  echo.
  echo Input Error: There is no cbf-pt defined for '%~1'. 
  exit/b
)

call tdp %1

echo.
rd /s %cbf-pt%

rem (!rfsp) (mov-2)

exit/b



:_