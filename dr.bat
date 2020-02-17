:_

@echo off



:_

set filep=* Dir using function routing.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias function to go to.

echo.
echo %parameter_1%

exit/b



:_

:concop

dir "*conflicted copy*.*" /s

exit/b



:_

:renamed

dir "*renamed*.*" /s

exit/b



:_ (!rfsp) (mov-6)
