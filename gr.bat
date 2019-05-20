:_

@echo off



:_

set filep=* Gradle-related tasks.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto w

if "%~1" == "/?" goto help

if not "%~2" == "" call td %~2

goto %1



:_

:help

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

:v

:vers

set fp=* Version.

rem lu: Jan-8-2019

echo.
echo %fp%

gradle -version

exit/b



:_

:task

:tasks

set fp=* List tasks.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle tasks

exit/b



:_



:_

:stat

set fp=* Status.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
call gradle --status

echo.

exit/b



:_

:buil

:build

set fp=* Build.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
call gradle build

col

echo.

exit/b



:_

:gr_dev

set fp=* Build CAPI for development.

rem color 60

rem lu: Jan-8-2019

echo.
echo %fp%

call %0 d

exit/b



:_

:help

set fp=* Help

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle help

exit/b



:_

:model

set fp=* Model.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle model

exit/b



:_

:br

set fp=* Bootrun from Sean. Notice that there is also a Maven version of this same command.

rem lu: Jan-9-2019

echo.
echo %fp%

gradle bootrun --debug-jvm

exit/b



:_

:prop

set fp=* Properties.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle properties

exit/b



:_

:scan

set fp=* Scan. Builds an online report.

rem lu: Jan-11-2019

echo.
echo %fp%

echo.
gradle --scan

exit/b



:_

:upli

set fp=* Update Liquibase.

rem lu: Jan-16-2019

echo.
echo %fp%

echo.
gradle liquibaseUpdate

exit/b



:_

:w

set fp=* Run gradlew.

rem color 60

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
gradlew

rem I noticed that ./gradlew doesn't work but .\gradlew does. So if you see ./gradlew, I
rem think that means you're looking at a non-Window environment.

exit/b



:_

:buildw

set fp=* Gradlew build.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradlew build

exit/b



:_

:test

set fp=* Test.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradlew test

exit/b



:_

:bp

set fp=* Build for production. This optimizes the cart-api application for production.

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
call gradlew -Pprod clean bootWar
echo.

exit/b



:_

:fqt

set fp=* FQT bootrun.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.
gradle -Pfqt bootrun

exit/b



:_

:pdev

set fp=* Pdev.

rem lu: May-20-2019

echo.
echo %fp%

echo.
Pdev -Pno-liquibase clean bootrun

exit/b



:_ (!rfsp) (mov-6)