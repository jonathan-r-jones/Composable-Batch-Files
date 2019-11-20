:_

@echo off



:_

set filep=* 

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_input



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
echo Examples

echo.
echo Example 1: 

exit/b



:_

:validate_input

if "%~1" == "" (
  echo.
  echo 
)



:_

:main_function



exit/b



:_ (!rfsp) (mov-7)