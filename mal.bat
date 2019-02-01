:_

@echo off



:_

set filename_stands_for=* Multi-edit abstraction layer.

echo.
echo %filename_stands_for%



:_

set fp=* Shift parameters.

shift /0



:_

set fp=* Set color.

call col yob



:_

set fp=* Preprocess.

rem lu: Jan-31-2019

rem echo %fp%

set cbf_filename=

call m initialize_environment_router



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function

exit/b



:_

:help

echo.
echo Last Updated: Jan-16-2019

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Batch file to call.
is merely started.

set parameter_2=Parameter 2 (otpional): First parameter to pass.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

set fp=* %0 batch file's main function.

rem lu: Feb-1-2019

echo.
echo %fp%

call %0.bat %1 %2 %3 %4 %5 %6

exit/b



:_