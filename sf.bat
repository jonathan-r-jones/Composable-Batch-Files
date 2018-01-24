:_

@echo off



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Set default browser.

call fn kr



:_

set fp=* Set browser.

if not "%2" == "" call fn %2



:_

set fp=* Set URL.

call fn %2



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



:_

:help

set fp=* This file is used to 

rem Last Updated (lu): Jan-23-2018

echo %fp%

echo.
echo Usage: %0 [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo          
echo.          

goto exitb



:_ (!rfsp) (mov-9)