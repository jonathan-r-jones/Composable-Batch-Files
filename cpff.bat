:_

@echo off



:_

set filep=* Use filename alias 1 to "save as" filename alias 2.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

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

call fn %1

if %errorlevel% gtr 0 (
  exit/b
)

set cbf_source_filename=%cbf_fn%

call fn %2

if %errorlevel% gtr 0 (
  exit/b
)

echo.
copy "%cbf_source_filename%" "%cbf_fn%"

exit/b



:_ (!rfsp) (mov-6)
