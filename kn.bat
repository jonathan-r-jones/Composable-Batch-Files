:_

@echo off



:_

set filename_stands_for=* A wrapper around Knife, a Chef command line utility.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

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
echo %filename_stands_for%

echo.
knife

exit/b



:_

:

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