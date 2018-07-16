:_

@echo off



:_

set filename_stands_for=* Delete folder.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Jul-16-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Path parameter of folder to delete. USE WITH CAUTION as the 
set parameter_1=%parameter_1%folder will be deleted!

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo %filename_stands_for%

call tdp %1

if %errorlevel% == 1 (
  exit/b
)

echo.
rd /s %cbf_path%

rem (!rfsp) (mov-2)

exit/b



:_