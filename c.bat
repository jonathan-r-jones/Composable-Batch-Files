:_

@echo off



:_

set filep=* Clear screen and reset color.

echo.
echo %filep%

title=CBF



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_ (!rfsp) (mov-6)

:help

echo.
echo Usage: %0

exit/b



:_

:main_function

set fp=* Clear screen and reset color.

call td root

cls

color

exit/b



:_