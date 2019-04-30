:_

@echo off



:_

set filep=* A wrapper around chef, a command line utility.



:_

set fp=* Route callers.

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
eccheho %parameter_2%

exit/b



:_

:main_function

echo.
echo %filep%

echo.
chef

exit/b



:_

:gen_repo

:gero

set fp=* Generate repo.

rem lu: Mar-4-2019

echo.
echo %fp%

echo.
chef generate repo %2

exit/b



:_

:gen_cook

:gc

set fp=* Generate cookbook.

rem lu: Mar-4-2019

echo.
echo %fp%

echo.
chef generate cookbook %2

exit/b



:_

:rspec

set fp=* ChefSpec/Rspec tests resources and recipes as part of a simulated chef-client run.

rem Results are compared to defined expectations.

rem lu: Mar-5-2019

echo.
echo %fp%

echo.
chef exec rspec

exit/b



:_

:vers

set fp=* Version.

rem lu: Apr-10-2019

echo.
echo %fp%

echo.
chef -v

exit/b



:_

:kl

set fp=* Kitchen list.

rem lu: Apr-30-2019

echo.
echo %fp%

echo.
kitchen list

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

echo.
kitchen diagnose --all
rem qq-1

exit/b



:_ (!rfsp) (mov-6)