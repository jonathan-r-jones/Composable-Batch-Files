:_

@echo off



:_

set filep=* Delete file based on nickname.



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

set parameter_1=Parameter 1: Filename alias.

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filep%

call n %1

del %cbf_filename%

exit/b



:_ (!rfsp) (mov-6)