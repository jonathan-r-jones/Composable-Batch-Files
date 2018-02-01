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

if "%1" == "shared_list" goto %1



:_

set fp=** Transform directory to . . .

echo %fp%

call pn %1

cd /d %cbf_path%

goto exitb



:_

:help

set fp=To transform/change your directory.

echo File purpose (fp): %fp%
echo.

echo Filename stands for: Transform Directory.
echo.

echo Last Updated (lu): Jan-24-2018
echo.

echo Usage: %0 [single parameter of a folder nickname]
echo.

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