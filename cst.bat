:_

@echo off



:_

set filep=* Contents search with td paramater.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

call td %3

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameters 1 amd 2: Same as cs.bat.

set parameter_3=Parameter 3: Folder alias to switch to.

echo.
echo %parameter_1%

echo.
echo %parameter_3%

exit/b



:_

:main_function

echo.
echo %filep%

call cs %1 %2

exit/b



:_ (!rfsp) (mov-6)