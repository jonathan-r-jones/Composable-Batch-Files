:_

@echo off



:_

set filep=* Path nickname dictionary that sets the full path corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help



:_

:preprocessor

set fp=* In order to promote freshness, clear the environment variable.

set cbf_path=

goto main_function



:_ (!rfsp) (mov-6)

:help

set fp=* Path nickname dictionary that sets the full path corresponding to a given unique nickname parameter.

echo %filep%

echo.
echo File purpose: Path Nicknames.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

exit/b



:_

:main_function

echo.
echo %filep%

set cbf_path=

call n %1

exit/b



:_