:_

@echo off



:_

set filename_stands_for=* Perennial filenames search.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Mar-6-2019

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

set cbf_filename=%temp%\conflicted copy report.txt

echo. > "%cbf_filename%"
echo %fp% >> "%cbf_filename%"

echo -------------------------------------------------------- >> "%cbf_filename%"

rem 1.
call td s
echo. >> "%cbf_filename%"
echo ******* Current folder: %cd% >> "%cbf_filename%"
echo. >> "%cbf_filename%"
dir "*conflict*.*" /s >> "%cbf_filename%"

rem 2.
call td mecfg
echo. >> "%cbf_filename%"
echo ******* Current folder: %cd% >> "%cbf_filename%"
echo. >> "%cbf_filename%"
dir "*conflict*.*" /s >> "%cbf_filename%"

rem 3.
call td mecfg_dr
echo. >> "%cbf_filename%"
echo ******* Current folder: %cd% >> "%cbf_filename%"
echo. >> "%cbf_filename%"
dir "*conflict*.*" /s >> "%cbf_filename%"

rem 4.
call td mecfg_s
echo. >> "%cbf_filename%"
echo ******* Current folder: %cd% >> "%cbf_filename%"
echo. >> "%cbf_filename%"
dir "*conflict*.*" /s >> "%cbf_filename%"

call an no

call m assoc_pf

call r

exit/b



:_ (!rfsp) (mov-6)