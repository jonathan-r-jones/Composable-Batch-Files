:_

@echo off



:_

set filep=* Chef converge with a path parameter.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" (
  goto main_function  
) else (
  call td %1
)

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias path parameter of the branch you want to converge.

echo.
echo %parameter_1%

exit/b



:_

:main_function

rem lu: 

call ch cv

exit/b



:_ (!rfsp) (mov-7)