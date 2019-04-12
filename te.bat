:_

@echo off



:_

set filename_stands_for=* .



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

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

set fp=* Main function of '%filename_stands_for%'

echo.
echo %fp%

echo.
echo lu: 


rem qq-1

exit/b



:_ (!rfsp) (mov-6)