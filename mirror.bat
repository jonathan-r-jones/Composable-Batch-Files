:_

@echo off



:_

set filename_stands_for=* The batch file is a mirror of sorts for the command line.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: This file attempts to demonostrate how it's easy to see what command
set filep=%filep% you are running. This can help you build easy and cool scripts.

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_

:monday

set fp=* Say Monday.

echo %fp%

exit/b



:_

:tuesday

set fp=* Say Tuesday.

echo %fp%

exit/b



:_

:wednesday

set fp=* Say Wednesday.

echo %fp%

exit/b



:_

:everyday

set fp=* Say Everyday.

echo %fp%

call %0 monday

call %0 tuesday

call %0 wednesday

exit/b



:_