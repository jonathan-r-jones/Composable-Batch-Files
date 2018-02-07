:_

@echo off



:_

set filep=* Application nickname dictionary that sets the full application name corresponding to a given unique nickname parameter.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

call n %1

goto exitb



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo %filep%

echo.
echo The filename stands for: Application Nicknames.

echo.
echo Last Updated: Jan-24-2018

echo.
echo Notes: This file and 3 others, viz. fn.bat, pn.bat and un.bat are not strictly necessary 
echo in that they could all be replaced be calls to nn.bat, nicknames source. However,
echo they are useful in the sense that by calling these, the code is more readable and
echo has more clarity of intent.

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



:_