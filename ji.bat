:_

@echo off



:_

set filep=* Jira operations.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "b" goto view_backlog

if "%~1" == "" sf cusp

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [parameter 1)]

set parameter_1=Parameter 1 (Optional): Jira ticket number you wish to view. Or pass in "b" to ^
view the backlog.

echo.
echo %parameter_1% 

echo.
echo Batch File Style: One-off

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:view_backlog

set fp=* View Jira backlog.

rem lu: May-18-2020

echo.
echo %fp%

call sf backlog>nul

exit/b

Outcome: This doesn't work. I can't seem to figure out the how to "escape" the ampersand character.



:_

:main_function

rem lu: Apr-12-2019

call ni jira_url

call dc %cbf_url%/browse/cart-%1

exit/b



:_ (!rfsp) (mov-9)
