:_

@echo off



:_

set filep=* Clear screen and reset color.



:_

set fp=* Set title.

echo.
echo %fp%

title=Composable Batch Files



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



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

exit/b



:_

:main_function

set filep=* Clear screen and reset color.

call td o

cls
color

exit/b



:_