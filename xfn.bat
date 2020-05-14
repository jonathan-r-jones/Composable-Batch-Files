:_

@echo off



:_

set filep=* Remote double-click equivalent way to run a file.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo. %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename alias that you want to run or "double click" if you will.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

echo.
echo %filep%

set cbf_application=
set cbf_fn=
set cbf_url=

call n %~1

rem qq
if %errorlevel% == 1 (
  echo.
  echo * Error: Cannot find label "%~1".
  exit/b
)

if "%cbf_fn%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_fn defined for '%~1'.
  exit/b 1
)

call m double_click

call r

rem (!rfsp) (mov-2)

exit/b



:_
