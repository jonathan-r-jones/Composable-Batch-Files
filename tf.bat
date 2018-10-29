:_

@echo off



:_

set filename_stands_for=* Perform Terraform-related tasks.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "" goto help s

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Oct-29-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): 
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:ver

:vers

set fp=* Get the Terraform version number.

rem lu: Oct-29-2018

echo %fp%

echo.
terraform version

exit/b



:_