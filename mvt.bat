:_

@echo off



:_

set filep=* Moves file in the current directory to nickname-specified path.



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

set parameter_1=Parameter 1: Name of the file to copy. If spaces are present, double quotes
set parameter_1=%parameter_1% are required.

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Nickanme for destination path.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
echo %filep%

call n %2

echo.
move "%~1" "%cbf_path%"

td %2

exit/b



:_ (!rfsp) (mov-6)