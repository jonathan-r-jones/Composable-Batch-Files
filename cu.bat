:_

@echo off



:_

set filename_stands_for=* Curl batch file.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

set filep=File purpose: This file is used to hook up Curl with n.bat entries.

echo.
echo %filep%

echo.
echo Last Updated: Aug-23-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: URL you wish to evaluate.
set parameter_1=%parameter_1% 

exit/b



:_

:main_function

echo.
echo %filename_stands_for%

call n %1

echo.
call curl %cbf_url%

rem (!rfsp) (mov-2)

exit/b



:_