:_

@echo off



:_

set filep=* Uses mx.bat and then maybe me.bat to decipher which file to edit.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Last Updated: Mar-22-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias.

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filep%

call m clear_errorlevel_silently

call mx.bat %1

rem echo EL: %errorlevel%

if %errorlevel% == 1 (
  call me %1
  exit/b
)

exit/b



:_ (!rfsp) (mov-6)