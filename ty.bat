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

call fn %1

if %errorlevel% gtr 0 (
  exit/b
)



:_

:main_function

set test_results_filename=%temp%\%~1_type_results.txt

echo.>%test_results_filename%
echo Contents of: "%cbf_filename%">>%test_results_filename%
echo.>>%test_results_filename%
type "%cbf_filename%">>%test_results_filename%

set cbf_parameter=%test_results_filename%

call an np

call r

echo.



:_ (!rfsp) (mov-6)