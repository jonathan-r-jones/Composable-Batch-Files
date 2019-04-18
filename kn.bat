:_

@echo off



:_

set filep=* A wrapper around Knife, a Chef command line utility.



:_

set fp=* Route help callers.

if "%~1" == "" goto main_function

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

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
echo %filep%

echo.
knife

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



:_ (!rfsp) (mov-6)