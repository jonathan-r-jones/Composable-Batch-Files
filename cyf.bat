:_

@echo off



:_

set filename_stands_for=* Copies file from a cbf_path nickname.



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
echo Last Updated: Sep-7-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Cbf_path nickame to use as the data source.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filename_stands_for%

call n %1

echo.
xcopy /d /h /r /s /y "%cbf_path%"

rem (!rfsp) (mov-2)

exit/b



:_