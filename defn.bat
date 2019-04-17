:_

@echo off



:_

set filename_stands_for=* Delete file based on nickname.



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
echo Last Updated: Mar-21-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename alias.

echo.
echo %parameter_1%

exit/b



:_

:main_function

set fp=* Main function of '%filename_stands_for%'.

echo.
echo %fp%

call n %1

del %cbf_filename%

exit/b



:_ (!rfsp) (mov-6)