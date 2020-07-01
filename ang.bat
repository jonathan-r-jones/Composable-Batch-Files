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

:run_ui

:serve

:srv

set fp=* Compile and start Angular.

rem lu: Feb-11-2019

echo.
echo %fp%

echo %cd% | find /i "\icecart-portal-client">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the icecart-portal-client folder for this command to work.
  exit/b 1
)

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



:_+ Build for Production family



::_

:bfp

:build_for_production

set fp=* Build for production, zip file with td alias.

rem lu: Nov-21-2019

echo.
echo %fp%

call td rf_ma

cd icecart-portal-client

call %0 build_ui

exit/b



::_

:build_ui

:build_prod

:ngp

set fp=* Compile and start Angular for production. I have used this since version 1.3.

rem lu: Mar-3-2020

echo.
echo %fp%

echo.
ng build --configuration=prod

exit/b



:_

:run_tests

:run_unit_tests

:rut

:test

set fp=* Run Angular unit tests.

rem skw run tests, run unit tests

rem lu: Jun-30-2020

echo.
echo %fp%

call td ui

echo.
ng test

exit/b

>< >< Footnote:

As of Mar-5-2020 there are 428 API tests



:_ (!efang, !rfsp) (mov-9)
