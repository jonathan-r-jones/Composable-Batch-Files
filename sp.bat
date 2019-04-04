:_

@echo off



:_

set filep=* Super push, i.e. push all selected repositories

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

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

set fp=* Main function of "%filep%".

rem lu: Mar-31-2019

echo.
echo %fp%

rem
rem call g co_sf lu

call m update_lu %0

call de multi-edit_conflicted_files

if not "%machinename%"=="gfe" (
   call 8
   call cypn mecfg mecfg_s
   call p ql
   call p ro
   cd\
)

call p cbf

call p s

call ss Push

exit/b (!rfsp) (mov-2)



:_