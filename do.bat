:_ (!do)

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

:ps

set fp=* Kurt's PS command.

rem lu: Mar-6-2020

echo.
echo %fp%

echo.
docker ps

exit/b



:_

:ps

set fp=* Kurt's docker-compose commands. I'm not sure what they all do.

rem lu: Mar-6-2020

echo.
echo %fp%

echo.
docker-compose -f src/main/docker/app.yml up -d
rem docker-compose up -d devpresidentiallibrary-postgresql
rem docker-compose -f src/main/docker/app.yml logs devlibrary-app
rem docker-compose -f src/main/docker/app.yml up -d devlibrary-app
rem docker-compose -f src/main/docker/app.yml logs -f devlibrary-app

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



:_

:coup

set fp=* Compose up.

rem lu: Feb-27-2020

cls

echo.
echo %fp%

@echo on
docker-compose -f src/main/docker/app.yml up
@echo off

exit/b



:_

:codo

set fp=* Compose down.

rem lu: Mar-27-2020

cls

echo.
echo %fp%

@echo on
docker-compose -f src/main/docker/app.yml down
@echo off

exit/b



:_

:list

set fp=* List images.

rem lu: Mar-27-2020

echo.
echo %fp%

echo.
docker images

exit/b



:_

:de

set fp=* Delete devlibrary image.

rem lu: Mar-27-2020

echo.
echo %fp%

echo.
docker rmi devlibrary

exit/b



:_ (!efdo, !rfsp) (mov-7)