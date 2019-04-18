:_

@echo off



:_

set filep=* Status batch file.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto preprocessing



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Usage: %0 [Optional Parameter 1]

set parameter_1=Parameter 1: Path parameter. If left blank, current folder is used.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:preprocessing

set fp=* Preprocessing.

if not "%~1" == "" call td %~1

exit/b



:_

call g status

rem (!rfsp) (mov-2)

exit/b



:_