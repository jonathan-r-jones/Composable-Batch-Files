:_

@echo off



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

:help

set fp=To return the full website name corresponding to a given nickname.

echo This file purpose (fp) is to: %fp%
echo.

echo The filename stands for: Filename Nicknames.
echo.

echo Last Updated (lu): Jan-24-2018
echo.

echo Usage: %0 [single parameter]
echo.

echo Parm/Nickname  Target
echo -------------  -----------------------------------------------------------
echo           cnn  CNN

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

rem **************************** End Exit Functions.



:_

:cnn

set fp=* Cnn.

rem lu: Jan-24-2018

echo %fp%

set cbf_url=http://www.cnn.com

goto exitb



:_

:gp

set fp=* CBF GitHub pages.

rem lu: Jan-24-2018

echo %fp%

set cbf_url=https://jonathan-r-jones.github.io/Composable-Batch-Files/

goto exitb



:_

:cbf

set fp=* CBF on GitHub.

rem lu: Jan-24-2018

echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files

goto exitb



:_ (!rfsp) (mov-9)