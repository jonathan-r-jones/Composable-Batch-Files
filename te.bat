:_

@echo off



:_

rem       qq1
set filep=* 



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

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Function routing.

echo.
echo Examples

echo.
echo Example 1: 

exit/b



:_

:main_function

set fp=* 

echo.
echo %fp%

echo.
rem qq1


exit/b



:_ (!rfsp) (mov-7)