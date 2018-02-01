:_

@echo off



:_

set fp=* Copy file file from source to destination.

echo.
echo %fp%



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%2" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Detect a period in the first parameter and run.

echo %1 | find /i ".">nul

if %errorlevel% == 0 set cbf_filename=%1
if %errorlevel% == 1 call fn %1

call pn %2

xcopy %cbf_filename% %cbf_path%

goto exitb



:_

:help

set fp=* Copy file from source to destination.

echo File Purpose (fp): %fp%

echo.
echo Filename stands for: CopY file from Source to Destination.

echo.
echo Last Updated (lu): Feb-1-2018

echo.
echo Usage: %0 [Parameter 1] [Parameter 2]

echo.
echo Parameter 1: The filename nickname of the file to execute or filename of a file in the current folder.

echo.
echo Parameter 2: Destination path nickname.

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