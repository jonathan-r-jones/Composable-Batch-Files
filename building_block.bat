:_

@echo off



:_

set filep=* 



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto hello_world



:_

:help

echo.
echo %filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Function routing.

echo.
echo Examples:

echo.
echo 

exit/b


  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______




:_

:function_1

rem Do something.

exit/b



:_

:hello_world

set function_purpose=* Say hello to the world.

echo.
echo %function_purpose%

echo.
echo * Hello world.

exit/b



:_

:function_3

rem Do something else.

exit/b



:_ (!rfsp) (mov-7)
