:_

@echo off



:_

set filep=* Perennial filenames search.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Nickname function to execute.

echo.
echo %parameter_1%

exit/b



:_

:concop

set fp=* Conflicted Copy Report

rem lu: Feb-15-2019

echo.
echo %fp%

set cbf_fn=%temp%\conflicted copy report.txt

echo. > "%cbf_fn%"
echo %fp% >> "%cbf_fn%"

echo -------------------------------------------------------- >> "%cbf_fn%"

rem 1.
call td s
echo. >> "%cbf_fn%"
echo ******* Current folder: %cd% >> "%cbf_fn%"
echo. >> "%cbf_fn%"
dir "*conflict*.*" /s >> "%cbf_fn%"

rem 2.
call td mecfg
echo. >> "%cbf_fn%"
echo ******* Current folder: %cd% >> "%cbf_fn%"
echo. >> "%cbf_fn%"
dir "*conflict*.*" /s >> "%cbf_fn%"

rem 3.
call td drmecfg
echo. >> "%cbf_fn%"
echo ******* Current folder: %cd% >> "%cbf_fn%"
echo. >> "%cbf_fn%"
dir "*conflict*.*" /s >> "%cbf_fn%"

rem 4.
call td smecfg
echo. >> "%cbf_fn%"
echo ******* Current folder: %cd% >> "%cbf_fn%"
echo. >> "%cbf_fn%"
dir "*conflict*.*" /s >> "%cbf_fn%"

call an no

call m assoc_pf

call r

exit/b



:_ (!rfsp) (mov-6)
