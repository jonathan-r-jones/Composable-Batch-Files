:_

@echo off



:_

set filep=* Maven-related tasks.



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
echo Usage: g [Parameter 1]

echo.
echo Parameter 1: Function to execute.

echo.
echo Batch file style: Function routing.

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

:clean

set fp=* Clean, which removes the target folder.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
mvn clean

exit/b



:_+ Some Common commands.



::_

:c

set fp=* Compile.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
mvn compile

exit/b



::_

:t

set fp=* Test.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
mvn test

exit/b



::_

:p

set fp=* Package. Builds a jar, not a war file. Can be renamed to a zip in order to get access to files inside it.

rem lu: Jan-7-2019

echo.
echo %fp%

echo.
mvn package

exit/b



:_

:v

set fp=* Version.

rem lu: Jan-7-2019

echo.
echo %fp%

echo.
mvn -version

exit/b



:_

:sbc

set fp=* Spring-boot compile?

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
mvn spring-boot::compile

exit/b



:_

:br

:sbr

set fp=* Spring Bootrun.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
mvn spring-boot::run

exit/b



:_

:cp

set fp=* Clean package.

rem lu: Feb-14-2019

echo.
echo %fp%

echo.
mvn clean package

exit/b



:_+ CSC



::_

:csc

set fp=* Run Maven against Cart Swagger client.

rem lu: Apr-23-2020

rem You may need to disconnect from the VPN to get this to work.

cls

echo.
echo %fp%

call td csc>nul

cd build/swagger-code-cartApi

echo.
rem The jar will be installed to your local .m2. See configuration discussion below.
call mvn clean install -Dmaven.javadoc.skip=true

exit/b



::_

:csc2

set fp=* Try runing 'mvn clean package' instead of 'mvn clean install -Dmaven.javadoc.skip=true'.

rem lu: Apr-23-2020

rem You may need to disconnect from the VPN to get this to work. See Jenkinsfile runTest28.

cls

echo.
echo %fp%

call td csc>nul

cd build/swagger-code-cartApi

echo.
call mvn clean package

exit/b



:_ (!rfsp) (mov-6)
