:_

@echo off



:_

set filep=* The batch file is a mirror of sorts for the command line.
set filep=%filep% This file attempts to demonostrate how it's easy to see what command
set filep=%filep% you are running. This can help you build easy and cool scripts.




:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

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

echo.
echo %fp%

exit/b



:_

:tuesday

set fp=* Say Tuesday.

echo.
echo %fp%

exit/b



:_

:wednesday

set fp=* Say Wednesday.

echo.
echo %fp%

exit/b



:_

:everyday

set fp=* Say Everyday.

echo.
echo %fp%

call %0 monday

call %0 tuesday

call %0 wednesday

exit/b



:_