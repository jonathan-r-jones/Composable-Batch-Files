:_

@echo off



:_

set filep=* Super push, i.e. push all selected repositories

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Last Updated: Mar-31-2019

echo.
echo Usage: %0

exit/b



:_

:main_function

rem lu: Mar-31-2019

echo.
echo %filep%

call de multi-edit_conflicted_files

if "%machinename%"=="gfe" (
  call p cade
rem qq-1
) else (
  call 8
  call cypn mecfg mecfg_s
  call p ql
  call p ro
  cd\
)

call p cbf

call m update_lu %0

call p s

call ss %0

exit/b (!rfsp) (mov-2)



:_