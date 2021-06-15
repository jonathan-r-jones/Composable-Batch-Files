:_

@echo off



:_

set filep=* Jira operations.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "c" goto view-cart-ticket
if "%~1" == "l" goto view-lbm-ticket

rem if "%~1" == "b" goto view_backlog

if "%~1" == "" sf cusp

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [parameter 1)]

set parameter-1=Parameter 1 (Optional): If equal to c, view a cart ticket. If equal to l, ^
view an lbm ticket. Else, run an alias with the DCV of ji.

set parameter-2=Parameter 2 (Optional): Ticket number you wish to view.

echo.
echo %parameter-1% 

echo.
echo %parameter-2% 

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

:view-cart-ticket

set fp=* View a CART ticket.

echo.
echo %fp%

call ni jira_url>nul

call dc %cbf-url%/browse/CART-%2

exit/b



:_

:view-lbm-ticket

set fp=* View an LBM ticket.

echo.
echo %fp%

call ni jira_url>nul

call dc %cbf-url%/browse/LBM-%2

exit/b



:_

:main_function

set fp=* Main function.

rem lu: Jun-14-2021

call fx %~1 %~0 kr

exit/b



:_ (!rfsp) (mov-9)
