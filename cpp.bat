:_

@echo off



:_

set filep=* Copies file from a cbf-pt nickname.



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
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: cbf-pt nickame to use as the data source.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filep%

call n %1

echo.
xcopy /d /r /s /y "%cbf-pt%"

rem (!rfsp) (mov-2)

exit/b



:_