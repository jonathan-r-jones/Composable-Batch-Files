:_

@echo off



:_

set filep=* Trandform folder to parent folder.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

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

rem lu: May-20-2019

call tdp %1

call of

exit/b



:_ (!rfsp) (mov-7)