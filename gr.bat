:_ (!gr)

@echo off



:_

set filep=* Gradle-related tasks.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto bfp_wtd

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

:rgw

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

:bfpw

set fp=* Build for production, war file. This optimizes the cart-api application for production.

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
call gradlew -Pprod clean bootWar
echo.

exit/b



:_

:bfp_wtd

:build_for_production_with_td

set fp=* Build for production, jar file with td alias.

rem lu: Oct-15-2019

echo.
echo %fp%

call td rf_ma

call %0 bfp

exit/b



:_

:bfp

set fp=* Build for production, jar file.

rem lu: Oct-15-2019

echo.
echo %fp%

echo.
call gradlew -Pprod clean bootJar
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

:bapi

set fp=* Daily build per Sean.

rem lu: Jun-20-2019

echo.
echo %fp%

call tdc cart

call pl

call %0 bj

exit/b



:_

:br

set fp=* Bootrun from Sean. Notice that there is also a Maven version of this same command.

rem lu: Jan-9-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

gradle bootrun --debug-jvm

exit/b



:_

:b4d

:build_jar

set fp=* Build for dev environment.

rem lu: Aug-14-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle -Pdev clean bootJar

exit/b



:_

:build_jar_for_fqt

set fp=* Build for FQT environment.

rem lu: Sep-17-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle -Pfqt clean bootJar

exit/b



:_+ Gradle commands that Edward and Matt use.



::_

:ed

set fp=* Edward's gradle command.

rem lu: Jun-21-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle -Plocal -Pno-liquibase clean bootrun

rem I usually just run "clean ; ./gradlew &"

exit/b



::_

:matt1

set fp=* Bootrun from Matt.

rem lu: Aug-12-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

gradle clean bootRun --debug-jvm

exit/b



::_

:run

:run_api

set fp=* Run the API using Matt's gradle command.

rem lu: Nov-8-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradlew -Pno-liquibase clean bootrun

exit/b



::_

:run_fqt

set fp=* Run the API using Matt's gradle command with the FQT option too.

rem lu: Nov-8-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle -Pno-liquibase,fqt clean bootrun

exit/b



:_

:bj

:bootjar

set fp=* Bootjar command.

rem This worked on Jun-20-2019 but only after I fixed the PKIX issue.

rem lu: Jun-20-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle -Pdev bootJar

exit/b



:_

:debu

set fp=* Gradlew Debug. You should only use gradlew, not gradle.

rem lu: Nov-12-2019

echo.
echo %fp%

echo.
gradlew --debug

exit/b



:_ (!rfsp) (mov-6)