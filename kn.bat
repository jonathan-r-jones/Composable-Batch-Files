:_

@echo off



:_

echo.
echo * A wrapper around Knife, a Chef command line utility.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Last Updated: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function name to execute.

echo.
echo %parameter_1%

exit/b



:_

:parg

set fp=* Pargat's converge line.

rem lu: Mar-7-2019

echo.
echo %fp%

echo.
knife bootstrap --yes 10.0.2.20 -N chefclientone.natnetwork.home -x parxxx -P BaadaBxxx --json-attribut-file ./env.json --sudo -r 'recipe[Tomcat-ActiveMQ]'

rem 10.0.2.20: IP Address of the client
rem chefclientone.natnetwork.home: domain name from which it is identified
rem parxxx: username
rem BaadaBxxx: password
rem 'recipe[Tomcat-ActiveMQ]': a cookbook or a role

exit/b



:_

:ssl

set fp=* SSL fetch

rem lu: Apr-25-2019

echo.
echo %fp%

echo.
knife ssl fetch

exit/b



:_

:kc

set fp=* Kitchen create.

rem lu: Apr-30-2019

echo.
echo %fp%

call td cc

echo.
kitchen create --no-color

exit/b



:_

:kd

set fp=* Kitchen diagnose.

rem lu: Apr-30-2019

echo.
echo %fp%

call td cc

echo.
kitchen diagnose --all

exit/b



:_

:kv

set fp=* Kitchen verify.

rem lu: May-1-2019

echo.
echo %fp%

call td cc

echo.
kitchen verify

exit/b



:_+ Heartbeat commands.



::_

:kl

set fp=* Kitchen list. Heartbeat check.

rem lu: Apr-30-2019

echo.
echo %fp%

call td cc

echo.
kitchen list

exit/b



::_

:b

:nl

:noli

set fp=* Node list. Heartbeat check. Chef is breathing.

rem lu: Apr-25-2019

echo.
echo %fp%

call td cc

echo.
knife node list

exit/b



:_ (!rfsp) (mov-6)