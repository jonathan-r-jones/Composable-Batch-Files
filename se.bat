:_

@echo off



:_

set filep=* Search helper batch file.



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

exit/b



:_

:s

set fp=* Standard Google search.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_url=https://www.google.com/search?as_q=%~1

call sfcu

exit/b



:_ (!rfsp) (mov-6)