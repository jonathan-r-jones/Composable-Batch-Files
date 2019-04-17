:_

@echo off



:_

set filename_stands_for=* Status batch file.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help



:_

set fp=* Preprocessing.

if not "%~1" == "" call td %~1

goto main_function

exit/b



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

set filep=File purpose: Goes to a path, then call the status function.

echo.
echo %filep%

echo.
echo Last Updated: Dec-19-2018

echo.
echo Usage: %0 [Optional Parameter 1]

set parameter_1=Parameter 1: Path parameter. If left blank, current folder is used.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:main_function

call g status

rem (!rfsp) (mov-2)

exit/b



:_