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
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

rem lu: Jul-22-2019

echo.
echo * Push machine-appropriate repositories.

rem call de.bat multi-edit_conflicted_files

if "%machinename%"=="gfe" (
  call p cade
  call p wd
) else (
  call td mecfg_dr
  rem call de.bat concop
  call 8
  call cppp mecfg smecfg
  call p drql
  cd\
  call td ro
  copy oc.asc oc.txt
)

call p cbf

call m update_lu %0

call p s

call ss %0

exit/b (!rfsp) (mov-2)



:_
