:_

@echo off



:_

set filep=* This file is used to hook up Ping with n.bat entries.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Usage: %0 [space separated parameters]

set parameter_1=Parameter 1: URL nickname you wish to ping.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Ping switches.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
echo %filep%

call n %1

set cbf_url=%cbf_url:http://=%
set cbf_url=%cbf_url:https://=%
set cbf_url=%cbf_url:www.=%

call ping %2 %cbf_url%

rem (!rfsp) (mov-2)

exit/b



:_