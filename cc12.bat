:_

@echo off



:_

set filename_stands_for=* Run code compare with j1 and j2.



:_

set fp=* Route help callers.

if "%~1" == "" goto main_function

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
echo Usage: %0

exit/b



:_

:main_function

echo.
echo filename_stands_for

call ccfn j1 j2

exit/b



:_ (!rfsp) (mov-6)