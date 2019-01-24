:_

@echo off



:_

set filename_stands_for=* Search helper batch file.



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

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo %filep%

echo.
echo Last Updated: Dec-5-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Desired search function.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Search criteria.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:dfw

set fp=* Download for windows.

rem lu: Dec-5-2018

echo.
echo %fp%

set cbf_url=https://www.google.com/search?as_q=%~2+download+for+windows

call sfcu

rem qq-1

exit/b



:_

:s

set fp=* Standard Google search.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_url=https://www.google.com/search?as_q=%~2

call sfcu

exit/b



:_ (!rfsp) (mov-6)