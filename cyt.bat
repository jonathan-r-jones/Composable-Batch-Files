:_

@echo off



:_

set filep=* Copy file to nickname.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto proprocessor



:_

:help

echo.
echo File purpose: %filep%

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

:preprocessor

set fp=* Data validation.

if "%~2" == "" (
  echo * Destination path nickname is required.
  exit/b
)
  


:_

echo.
echo %filep%

call n %2

echo.
xcopy "%~1" "%cbf_path%"

td %2

rem (!rfsp) (mov-2)

exit/b



:_