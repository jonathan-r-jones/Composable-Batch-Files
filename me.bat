:_

@echo off



:_

set filep=* Edit file with Multi-Edit.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

if "%1" == "" call ea me
if not "%1" == "" call ed %1 me

goto exitb



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: Multi-Edit.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The filename nickname of the file to execute or filename of a file in the current folder.

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