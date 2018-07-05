:_

@echo off



:_

set filename_stands_for=* Copy file to nickname.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help



:_

set fp=* Data validation.

if "%~2" == "" (
  echo * Destination path nickname is required.
  exit/b
)
  
goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: Copies a file in the current directory to a nickname-specified path.

echo.
echo %filep%

echo.
echo Last Updated: Jun-13-2018

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Name of the file to copy. If spaces are present, double quotes
set parameter_1=%parameter_1% are required.

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Nickanme for destination path.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo %filename_stands_for%

call n %2

echo.
xcopy %~1 %cbf_path%

rem (!rfsp) (mov-2)

exit/b



:_