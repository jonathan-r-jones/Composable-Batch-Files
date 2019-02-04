:_

@echo off



:_

set filep=* Remote double-click equivalent way to run a file.

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
echo Last Updated: May-22-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Nickname for file to double click. If you wish to "double click" a file in ^
current folder, simply type the filename itself and hit enter.

exit/b



:_

:main_function

set fp=* Main function for "%0.bat".

set cbf_filename=

set cbf_application=

if not "%~1" == "" call n %~1

if %errorlevel% == 1 (
  echo.
  echo There was an error finding the alias for "%~1".
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