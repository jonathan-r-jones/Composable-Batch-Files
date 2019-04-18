:_

@echo off



:_

set filep=* Multi-edit abstraction layer.

echo.
echo %filep%



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

if "%~0" == "/?" goto help

goto main_function

exit/b



:_

:help

echo.
echo Last Updated: Jan-16-2019

echo.
echo Usage: rzr (space separated parameters)

set parameter_1=Parameter 1: Batch file to call.

set parameter_2=Parameters (optional): Parameters to pass to the batch file named in parameter 1.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

set fp=* Rzr batch file's main function.

rem lu: Feb-1-2019

echo.
echo %fp%

cd\

call %0 %1 %2 %3 %4 %5 %6

echo.
pause

exit



:_