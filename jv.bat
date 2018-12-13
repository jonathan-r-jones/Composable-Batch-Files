:_

@echo off



:_

set filename_stands_for=* Perform Java-related operations.



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
echo Last Updated: Nov-19-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_

:je

set fp=* Run Jenkins.

echo.
echo %fp%

call td dn

call m file_type_presence war

if %errorlevel% == 1 (
 exit/b
)

color 60

echo.
java -jar jenkins.war

exit/b



:_

:ver

set fp=* Display Java version currently in use.

echo.
echo %fp%

echo.
java -version

exit/b



:_ (!rfsp) (mov-6)