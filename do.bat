:_

@echo off



:_

set filep=* Docker functions accessed via function routing.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

rem lu: Feb-28-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Function routing.

echo.
echo Examples

echo.
echo Example 1: 

exit/b



:_

:comp

set fp=* Compose.

rem lu: Feb-27-2020

echo.
echo %fp%

echo.

docker-compose -f src/main/docker/app.yml up
exit/b



:_

:down

set fp=* Down.

rem lu: Feb-27-2020

echo.
echo %fp%

echo.
docker-compose down

exit/b



:_

:up

set fp=* Get docker updated.

rem lu: Feb-27-2020

echo.
echo %fp%

echo.
docker-compose up

exit/b



:_ (!rfsp) (mov-7)
