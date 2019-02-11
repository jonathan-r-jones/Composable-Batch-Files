:_

@echo off



:_

set filep=* URL nickname dictionary that sets the full URL name corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* In order to promote freshness, clear the environment variable.

set cbf_url=



:_

call n %1 %2

exit/b



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo %filep%

echo.
echo Filename stands for: URL Nicknames.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: URL Nickname contained in the Nickname Source file, viz. n.bat.

exit/b



:_