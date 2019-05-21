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
echo Parameter 1: Nickname for file to double click. If you wish to "double click" a file in ^
current folder, simply type the filename itself and hit enter.

exit/b



:_

:main_function

echo.
echo %filep%

set cbf_filename=

set cbf_application=

if not "%~1" == "" call n %~1

if %errorlevel% == 1 (
  echo.
  echo * There was an error executing the alias for "%~1".
  exit/b
)

if "%cbf_filename%" == "" (
  call m set_feta 
)

if "%cbf_filename%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_filename defined for '%~1'.
  exit/b 1
)

call m double_click

call r

rem (!rfsp) (mov-2)

exit/b



:_