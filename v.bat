:_

@echo off



:_

set filep=* Verify a nickname command's settings.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.



goto exitb



:_ (!rfsp) (mov-6)

:h

:help

echo Filename stands for: Verify a nickname command's settings.

echo.
echo Last Updated: Mar-9-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Nickname you wish to verify.

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