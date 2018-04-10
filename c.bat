:_

@echo off



:_

set filep=* Clear screen and reset color.

rem echo.
rem echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set filep=* Clear screen and reset color.

cls
color

m exitb



:_ (!rfsp) (mov-6)

:h

:help

set fp=%filep%

echo File Purpose (fp): %fp%

echo.
echo Filename stands for: Clear screen.

echo.
echo Last Updated (lu): Feb-6-2018

echo.
echo Usage: %0

m exitb



:_