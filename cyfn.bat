:_

@echo off



:_

set filep=* Copy files from nickname parameter 1 to nickname parameter 2.



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
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Nickname of the source filename.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Nickname of the destination filename.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
echo Copy files from filename alias 1 (%1) to filename alias 2 (%2).

call fn %1

if %errorlevel% == 1 (
  exit/b
)

set cbf_source_filename=%cbf_filename%

call fn %2

if %errorlevel% == 1 (
  exit/b
)

echo.
xcopy /y "%cbf_source_filename%" "%cbf_filename%"

exit/b



:_ (!rfsp) (mov-6)