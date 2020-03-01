:_

@echo off



:_

set filep=* Super pull, i.e. pull all chosen repositories.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0

exit/b



:_

:main_function

rem lu: Apr-10-2019

echo.
echo %filep%

if not "%machinename%"=="gfe" (
  call 8
  call cp.bat sv_dr_to_local
  call cp.bat cfg_dr_to_local
)

call pl cbf

call pl drql

call pl s

call cppp mecfg_s mecfg

call ss %0

exit/b



:_ (!rfsp) (mov-8)
