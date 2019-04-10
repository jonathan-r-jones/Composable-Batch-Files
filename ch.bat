:_

@echo off



:_

set filename_stands_for=* A wrapper around chef, a command line utility.



:_

set fp=* Route help callers.

if "%~1" == "" goto main_function

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
echo %filename_stands_for%

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



:_ (!rfsp) (mov-6)