:_

@echo off



:_

set filename_stands_for=* Gradle-related tasks.



:_

set fp=* Route help callers.

if "%~1" == "" goto gr_dev

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

if not "%~2" == "" call td %~2

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

set filep=File purpose: This template file can be used as a "Save As" to create a new 
set filep=%filep% composable batch file.

echo.
echo Last Updated: Jan-8-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function to perform.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): Nickname path to walk first.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:bp

set fp=* Build for production. This optimizes the cart-api application for production.

rem lu: Jan-8-2019

echo.
echo %fp%

echo.

gradlew -Pprod clean bootWar

exit/b



:_

:v

:vers

set fp=* Version.

rem lu: Jan-8-2019

echo.
echo %fp%

gradle -version

exit/b



:_

:b

:bd

:d

set fp=* Build for development.

color 60

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
gradlew

exit/b



:_

:gr_dev

set fp=* Build CAPI for development.

color 60

rem lu: Jan-8-2019

echo.
echo %fp%

call td dev

call %0 d

exit/b



:_

:tasks

set fp=* List tasks.

rem lu: Jan-9-2019

echo.
echo %fp%

gradle tasks

exit/b



:_

:br

set fp=* Bootrun from Sean. Notice that there is also a Maven version of this same command.

rem lu: Jan-9-2019

echo.
echo %fp%

gradle bootrun --debug-jvm

exit/b



:_ (!rfsp) (mov-6)