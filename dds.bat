:_

@echo off



:_

set filename_stands_for=* Dir filename extension searcher including subfolders.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Mar-18-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: File extension you wish to search.

echo.
echo %parameter_1%

exit/b



:_

:main_function

set fp=* Main function of %0.

echo.
echo %fp%

call dd %1 /s

exit/b



:_ (!rfsp) (mov-6)