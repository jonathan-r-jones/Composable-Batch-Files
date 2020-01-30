:_

@echo off



:_

set filep=* Delete batch file.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Formula function to run.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:mecfg_mac

set fp=* Delete conflicted copies in the mac folder.

rem lu: Feb-13-2019

echo.
echo %fp%

call td mecfg_s

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
call td mecfg_s
call %0 concop

exit/b



:_

:concop

:cc

set fp=* Delete conflicted copies created by DropBox.

rem lu: Jan-2-2019

echo.
echo %fp%

if exist "*conflicted copy*.*" del /s "*conflicted copy*.*"

exit/b



:_ (!rfsp) (mov-6)
