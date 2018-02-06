:_

@echo off



:_

set filep=* Application nickname dictionary that sets the full application name corresponding to a given unique nickname parameter.

rem echo.
rem echo %filep%



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

:h

:help

echo %filep%

echo.
echo The filename stands for: Filename Nicknames.

echo.
echo Last Updated: Jan-24-2018

echo.
echo Usage: %0 [single parameter]

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