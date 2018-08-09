:_

@echo off



:_

set filep=* Hello World batch file that demonstrates the basic structure concept behind Composable Batch Files.



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto function_2



:_ (!rfsp)

:h

:help

echo.
echo %filep%

echo.
echo Last Updated: Aug-8-2018

echo.
echo Usage: hello_world.bat [Parameter 1]

echo.
echo Parameter 1: Function you wish to execute.

echo.
echo       Parameter  Description
echo ---------------  -----------------------------------------------------
echo      function_1  Function that does [blank].
echo      function_2  Function that does [blank].
echo      function_3  Function in ANOTHER batch file that does [blank].
echo  some_functions  Function that runs some functions.
echo   all_functions  Function that runs all functions.

exit/b




:_

:some_functions

set fp=* Some functions.

echo.
echo %fp%

call :function_1

call hello_world_2 function_3

exit/b



:_

:all_functions

set fp=* All functions.

echo.
echo %fp%

call :function_1

call :function_2

call hello_world_2 function_3

exit/b



:_

:function_1

set fp=* Function 1. A call to this batch file.

echo.
echo %fp%

rem echo * Put some code here.

exit/b



:_

:function_2

set fp=* Function 2. Another call to this batch file.

echo.
echo %fp%

rem echo * Put some code here.

exit/b



:_

:function_3

set fp=* Function 3. A call to another batch file.

call hello_world_2 function_3

exit/b


:_