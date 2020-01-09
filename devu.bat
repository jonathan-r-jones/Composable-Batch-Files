:_

@echo off



:_

set filep=* Dev University presentation on Jan-9-2020.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Function you with to execute.

echo.
echo %parameter_1%

echo.
echo Batch file style: Function routing.

echo.
echo Examples

echo.
echo Example 1: 

exit/b



:_ (!rfsp) (mov-7)