:_

@echo off



:_

set filep=* Edit file.

rem Use mx.bat and then maybe me.bat to decipher which file to edit.

echo.
echo %filep%


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

call m clear_errorlevel_silently

echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  call me %1 %2 %3
  exit/b
)

call mx.bat %1>nul

if %errorlevel% == 1 (
  call me %1 %2 %3>nul
  exit/b
)

exit/b



:_ (!rfsp) (mov-6)