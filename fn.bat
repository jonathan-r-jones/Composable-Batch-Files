:_

@echo off



:_

set filep=* Filename nickname dictionary that sets the full filename name corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_ (!rfsp) (mov-6)

:help

echo.
echo %filep%                         

echo.
echo Usage: %0 [single parameter]

exit/b



:_

:main_function

rem In order to promote freshness, clear the environment variable.
set cbf_filename=

call n %1

exit/b



:_