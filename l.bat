:_

@echo off



:_

set filep=* Google searcher.

echo.
echo %filep%



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
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Search criteria.

set parameter_2=Parameter 2 (Optional): Alias for appended words.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

set cbf_appended_words=

if not "%~2" == "" call n %2

set cbf_url=https://www.google.com/search?as_q=%~1%cbf_appended_words%

call sfcu

exit/b



:_ (!rfsp) (mov-6)