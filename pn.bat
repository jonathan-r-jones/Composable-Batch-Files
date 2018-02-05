:_

@echo off



:_

set fp=* Look up path.

echo.
echo %fp%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

call n %1

goto exitb



:_

:help

set fp=* Path nickname dictionary that sets the full path corresponding to a given unique nickname parameter.

echo File purpose (fp) is to: %fp%

echo.
echo Filename stands for: Path Nicknames.

echo.
echo Last Updated (lu): Feb-2-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

goto exitb



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



::_

rem ******* End Exit Functions.



:_ (!rfsp) (mov-9)