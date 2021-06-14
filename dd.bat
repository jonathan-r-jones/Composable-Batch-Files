:_

@echo off



:_

echo.
echo * Dir file for *.extensionname including subfolders.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename extension.

echo.
echo %parameter_1%

exit/b



:_

:main_function

set search_results_filename=%temp%\%~1_search_results.txt

dir *.%1* /s>"%search_results_filename%"

if %errorlevel% gtr 0 exit/b

set cbf-parameter=%search_results_filename%

call an ie

call r

exit/b



:_ (!rfsp) (mov-6)
