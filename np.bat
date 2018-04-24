:_

@echo off



:_

set filep=* Perform NPM-related tasks.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "" goto install

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.

goto %1

rem (!rfsp) (mov-2)

m exitb



:_

:h

:help

echo Filename stands for: NPM stuff.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Nickname of command you wish to execute.

m exitb



:_

:insta

:install

set fp=* Install.

rem lu: Apr-24-2018

echo %fp%
echo.

npm install

m exitb



:_

:star

:start

set fp=* Run start script.

rem lu: Apr-24-2018

echo %fp%
echo.

npm start

m exitb



:_

:test

set fp=* Run tests.

rem lu: Apr-24-2018

echo %fp%
echo.

npm test

m exitb



:_

:npmhelp

set fp=* Run tests.

rem lu: Apr-24-2018

echo %fp%

npm -h

m exitb



:_

:nhs

set fp=* NPM help for a specific command.

rem lu: Apr-24-2018

echo %fp%

npm help %2

m exitb



:_