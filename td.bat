:_

@echo off



:_

set filep=* Transform/change directory.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if "%~1" == "shared_list" goto %1



:_

call pn %1

cd /d %cbf_path%

goto exitb



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: Transform Directory.

echo.
echo Last Updated: Jan-24-2018

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



:_