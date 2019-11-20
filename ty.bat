:_

@echo off



:_

set filep=* Use type command to view nickname-specified file.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto preprocessor



:_

:help

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Filename calculus to view in a read-only fashion.

echo.
echo %parameter_1%

exit/b



:_

:preprocessor

call set_filename %1

if %errorlevel% gtr 0 (
  exit/b
)



:_

:main_function

echo.>c:\a\type_results.txt
echo Contents of: "%cbf_filename%">>c:\a\type_results.txt
echo.>>c:\a\type_results.txt
type "%cbf_filename%">>c:\a\type_results.txt

set cbf_parameter=c:\a\type_results.txt

call an np

call r

echo.



:_ (!rfsp) (mov-6)