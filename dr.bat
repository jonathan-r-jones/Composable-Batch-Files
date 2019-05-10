:_

@echo off



:_

set filep=* Remote dir search.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto preprocess



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Folder alias to switch to.

set parameter_2=Parameter 2: Same parameter as asked for by d.bat.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:preprocess

call m save_location

call td %1



:_

:main_function

call d %2

call m restore_location

exit/b



:_ (!rfsp) (mov-6)