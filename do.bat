:_ (!do)

@echo off



:_

set filep=* Docker functions accessed via function routing.



:_

set fp=* Route callers.

if "%~1" == "" (
  docker
  exit/b
)

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo lu: Feb-28-2020

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

:de

set fp=* Delete devlibrary image.

rem lu: Mar-27-2020

echo.
echo %fp%

echo.
docker rmi devlibrary

exit/b



:_

:vers

:version

set fp=* Version.

rem lu: Apr-2-2020

echo.
echo %fp%

echo.
docker version

exit/b



:_

:i

:info

set fp=* Info.

rem lu: Apr-2-2020

echo.
echo %fp%

echo.
docker info

exit/b



:_

:li

:list

set fp=* List images.

rem lu: Mar-27-2020

echo.
echo %fp%

echo.
docker images

exit/b



:_

:lc

:ps

set fp=* List containers. Kurt used this a lot.

rem lu: Apr-2-2020

echo.
echo %fp%

echo.
docker ps

exit/b



:_

:lic

set fp=* List images and containers.

rem lu: Apr-2-2020

echo.
echo %fp%

call %0 li

call %0 lc

exit/b



:_

:kps

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

:hw

set fp=* Hello world.

rem lu: Apr-2-2020

echo.
echo %fp%

echo.
docker run hello-world

exit/b



:_

:rwsc

set fp=* Run a Windows Server container.

rem lu: Apr-2-2020

echo.
echo %fp%

echo.
docker run -it mcr.microsoft.com/windows/servercore powershell

exit/b



:_

:coup

set fp=* Compose up.

rem lu: Feb-27-2020

cls

echo.
echo %fp%

call td deli

@echo on
docker-compose -f src/main/docker/app.yml up
@echo off

exit/b



:_ (!efdo, !rfsp) (mov-7)