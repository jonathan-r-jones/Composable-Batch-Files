:_

@echo off



:_

set filename_stands_for=* Use type command to view nickname-specified file



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
echo %filename_stands_for%

call fn %1

echo.
type "%cbf_filename%"

echo.

exit/b



:_ (!rfsp) (mov-6)