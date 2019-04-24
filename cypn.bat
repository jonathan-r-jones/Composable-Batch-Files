:_

@echo off



:_

set filep=* Copy files from nickname parameter 1 to nickname parameter 2.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Nickname of the source folder.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Nickname of the destination folder.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
echo Copy files from pathname alias 1 (%1) to pathname alias 2 (%2).

call td %1

if %errorlevel% == 1 (
  exit/b
)

call td %2

if %errorlevel% == 1 (
  exit/b
)

call cyf %1

exit/b



:_ (!rfsp) (mov-6)