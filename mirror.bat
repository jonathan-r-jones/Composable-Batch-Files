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
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:1

set fp=* You entered %1.

echo.
echo %fp%

exit/b



:_

:2

set fp=* You entered the number %1.

echo.
echo %fp%

exit/b



:_

:3

set fp=* %1 is what you typed.

echo.
echo %fp%

exit/b



:_
