:_

@echo off



:_

set filep=* Use mx.bat and then maybe me.bat to decipher which file to edit.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Usage: %0 [space separated parameter 1]

set parameter_1=Parameter 1: Alias of filename you wish to edit.

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filep%

call m clear_errorlevel_silently

call mx.bat %1

if %errorlevel% == 1 (
  call me %1 %2 %3
  exit/b
)

exit/b



:_ (!rfsp) (mov-6)