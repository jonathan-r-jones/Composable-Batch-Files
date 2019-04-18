:_

@echo off



:_

set filep=* Google searcher.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Last Updated: Feb-14-2019 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Search criteria.

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filep%

set cbf_url=https://www.google.com/search?as_q=%~1

call sfcu

exit/b



:_ (!rfsp) (mov-6)