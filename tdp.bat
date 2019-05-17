:_

@echo off



:_

set filep=* Trandform folder to parent folder.

setlocal


:_

set fp=* Route callers.

if "%~1" == "" goto emulate_cd

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Path parameter.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:emulate_cd

set fp=* Emulate "cd..".

echo.
echo %fp%

cd..

exit/b



:_

:main_function

call m clear_errorlevel_silently

call td %1

endlocal

echo.
echo %filep%

if %errorlevel% == 0 (
  cd..
) else (
  exit/b 1
)

rem (!rfsp) (mov-2)

exit/b



:_