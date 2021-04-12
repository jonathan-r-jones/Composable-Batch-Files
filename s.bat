:_

@echo off



:_

set filep=* Git status batch file.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto preprocess



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Optional Parameter 1]

set parameter_1=Parameter 1: Path alias parameter. If left blank, current folder is used.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:preprocess

set fp=* preprocess.

if not "%~1" == "" call td %~1

if %errorlevel% gtr 0 exit/b



:_

call g status
echo.

rem (!rfsp) (mov-2)



:_
