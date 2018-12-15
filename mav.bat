:_

@echo off



:_

set filename_stands_for=* Maven batch file.



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

echo Filename stands for: Maven-related tasks.

echo.
echo Last Updated: Dec-14-2018

echo.
echo Usage: g [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_

:build_applet

set fp=* Build the Applet.

rem I successfully built the applet on Mar-16-2017 after I put the Keystore under the
rem Netbeans folder.

echo %fp%

cd \projects\netbeans\mercury6\Mercury-applet

rem May need Ikjae's -Pserver command.
mvn clean install

rem I was only able to successfully do this after I copied David's .m2 folder 
rem into my %homedrive%%homepath% folder.

exit/b



:_

:build_ejb

set fp=* Build Ejb file.

rem fcd: Mar-21-2017

echo %fp%

cd \projects\netbeans\mercury6\mercury-ejb

rem May need Ikjae's -Pserver command.
mvn clean install

exit/b



:_

:build_s

:build_war_file_for_server

set fp=* Build War file for server.

rem build a war file: skw

rem To avoid a sharing violation, you may want to close applications that are looking at the
rem target folder.

rem fcd: Feb-17-2017

echo %fp%
echo.

cd \projects\netbeans\mercury6

call mvn clean install -Pserver

rem call of targ

rem echo.
rem echo You are in the target folder where you should see your freshly built War file.

exit/b



:_

:build_war_file_for_local

set fp=* Build War file for deployment to local drive. Ikjae said that "local" is the default.

rem fcd: Jul-26-2017

echo %fp%
echo.

cd \projects\netbeans\mercury6

call mvn clean install -Plocal

exit/b



:_

:c

set fp=* Maven compile sbt.

rem lu: Dec-14-2018

echo.
echo %fp%

call td sbt

echo.
mvn compile

exit/b



:_

:t

set fp=* Test sbt.

rem lu: Dec-14-2018

echo.
echo %fp%

call td sbt

echo.
mvn test

exit/b



:_

:clean

set fp=* Clean.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
mvn clean

exit/b



:_ (!rfsp) (mov-6)