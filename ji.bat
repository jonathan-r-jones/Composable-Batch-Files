:_

@echo off



:_

set filep=* Jira operations.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" sf ji

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [parameter 1)]

set parameter_1=Parameter 1 (Optional): Jira ticket number you wish to view.

echo.
echo %parameter_1% 

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

rem lu: Apr-12-2019

call ni jira_url

set cbf_url=%cbf_url%/browse/cart-%1

call sf

exit/b



:_ (!rfsp) (mov-9)
