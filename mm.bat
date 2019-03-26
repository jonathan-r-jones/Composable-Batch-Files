:_

@echo off



:_

set filename_stands_for=* Uses mx.bat then me.bat to decipher which file to edit.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

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

set fp=* Main function of '%filename_stands_for%'

echo.
echo %fp%

call m clear_errorlevel_silently

call mx.bat %1

rem echo EL: %errorlevel%

if %errorlevel% == 1 (
  call me %1
  exit/b
)

exit/b



:_ (!rfsp) (mov-6)