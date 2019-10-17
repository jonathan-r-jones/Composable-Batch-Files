:_

@echo off



:_

set filep=* Angular-related tasks.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

rem lu: Oct-15-2019

echo.
echo Usage: %0 [Parameter 1] (where parameter one is the atomic function you wish to call)

exit/b



:_

:validate_input

goto %1



:_

:build_fqt

:ngf

:build_for_fqt

set fp=* Build for FQT.

rem lu: Sep-17-2019

echo.
echo %fp%

echo.
ng build --configuration=fqt

exit/b



:_

:build_prod

:ngp

set fp=* Complie and start Angular for production. Used this for version 1.3.

rem lu: Oct-7-2019

echo.
echo %fp%

echo.
ng build --configuration=prod

exit/b



:_

:ngp_old

set fp=* Complie and start Angular for production - old. Not sure this works..

rem lu: Feb-12-2019

echo.
echo %fp%

echo.
ng build --prod

exit/b



:_

:build

set fp=* Build angular.

rem lu: Mar-19-2019

echo.
echo %fp%

echo.
ng build

exit/b



:_

:test

:ng_test

set fp=* Test angular.

rem lu: Sep-16-2019

echo.
echo %fp%

echo.
ng test

exit/b



:_

:serve

:srv

set fp=* Compile and start Angular.

rem lu: Feb-11-2019

echo.
echo %fp%

echo.
ng serve

exit/b



:_

:lhp

set fp=* Run the Admin Portal on localhost.

rem lu: Feb-11-2019

echo.
echo %fp%

call sf 4200 krm

call td port

echo.
ng serve

exit/b



:_ (!rfsp) (mov-7)