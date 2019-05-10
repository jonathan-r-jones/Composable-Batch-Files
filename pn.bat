:_

@echo off



:_

set filep=* Path nickname dictionary that sets the full path corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto preprocess



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

exit/b



:_

:preprocess

set fp=* In order to promote freshness, clear the environment variable.

set cbf_path=



:_

:main_function

echo.
echo %filep%

set cbf_path=

call n %1

exit/b



:_ (!rfsp) (mov-6)