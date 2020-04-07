:_

@echo off



:_

set filep=* Connect to servers.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of server you'd like to connect to.

echo.
echo %parameter_1%

echo.
echo Examples:

echo.
echo k dema

exit/b


  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______




:_

:main_function

call k cnc %1

exit/b



:_ (!rfsp) (mov-7)
