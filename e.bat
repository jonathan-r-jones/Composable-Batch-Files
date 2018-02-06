:_

@echo off



:_

set filep=* Exit command window.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

exit

goto exitb



:_ (!rfsp)

:h

:help

echo Filename stands for: Exit.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

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



:_