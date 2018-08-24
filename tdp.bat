:_

@echo off



:_

set filename_stands_for=* Trandform folder to parent folder.



:_

set fp=* Route help callers.

if "%~1" == "" goto emulate_cd

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
echo Last Updated: Jul-16-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Path parameter.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:emulate_cd

set fp=* Emulate cd..

echo.
echo %fp%

cd..

exit/b



:_

:main_function

call td %1

set fp=* Trandform folder to parent folder.

echo.
echo %fp%

if %errorlevel% == 0 (
  cd..
) else (
  exit/b 1
)

rem (!rfsp) (mov-2)

exit/b



:_