:_

@echo off



:_

set filep=* URL nickname dictionary that sets the full URL name corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto preprocess



:_ (!rfsp) (mov-6)

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: URL Nickname contained in the Nickname Source file, viz. n.bat.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:preprocess

set fp=* In order to promote freshness, clear the environment variable.

set cbf_url=



:_

call n %1

if "%cbf_url%" == "" (
  echo.
  echo * Error: The cbf_url variable is not set.
  exit/b 1
)

exit/b



:_
