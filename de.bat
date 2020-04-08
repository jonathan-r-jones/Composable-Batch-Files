:_

@echo off



:_

set filep=* Delete function-routing style batch file.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function to run.

echo.
echo %parameter_1%

exit/b



:_

:macmecfg

set fp=* Delete conflicted copies in the mac folder.

rem lu: Feb-13-2019

echo.
echo %fp%

call td smecfg

cd mac

call %0 concop

exit/b



:_

:multi-edit_conflicted_files

set fp=* Delete conflicted copies in Mutli-Edit folders.

rem lu: Mar-6-2019

echo.
echo %fp%

rem 1.
call td s
call %0 concop

rem 2.
call td mecfg
call %0 concop

rem 3.
call td smecfg
call %0 concop

exit/b



:_

:concop

:cc

set fp=* Delete conflicted copies created by DropBox.

rem lu: Jan-2-2019

echo.
echo %fp%

del /s "*conflicted copy*.*"

rem Delete folder.
rem set folder_to_delete=*conflicted copy*.*
rem @echo on
rem rd /q /s "%folder_to_delete%"
rem @echo off



exit/b



:_

:renamed

:cc

set fp=* Delete renamed copies created by DropBox.

rem lu: Jan-2-2019

echo.
echo %fp%

del /s "*conflicted copy*.*"

rem Delete folder.
rem set folder_to_delete=*conflicted copy*.*
rem @echo on
rem rd /q /s "%folder_to_delete%"
rem @echo off



exit/b



:_

:concop_af

set fp=* Delete conflicted copies aggregate functions.

rem lu: Mar-14-2020

echo.
echo %fp%


call td s

call :concop


call td cbf

call :concop


exit/b



:_

:temp

:tmp

set fp=* Temp folder.

rem lu: Apr-8-2020

echo.
echo %fp%

td tmp>nul

del *.* /q /s

exit/b



:_ (!rfsp) (mov-6)
