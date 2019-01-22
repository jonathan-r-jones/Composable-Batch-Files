:_

@echo off



:_

set filename_stands_for=* Performs shell color-related operations.



:_

set fp=* Route help callers.

if "%~1" == "" goto main_function

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

set filep=File purpose: This template file can be used as a "Save As" to create a new 
set filep=%filep% composable batch file.

echo.
echo Last Updated: 

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

:main_function

set fp=* Reset color to original value.

echo.
echo %fp%

color

exit/b



:_

:s

:show

set fp=* Show values.

rem lu: Jan-22-2019

echo.
echo %fp%

color/?

exit/b



:_

:sail

:sailboat

set fp=* Sailboat.

rem lu: Jan-22-2019

echo.
echo %fp%

color 4f

exit/b



:_

:default

set fp=* Default DOS window.

rem lu: Jan-22-2019

echo.
echo %fp%

color 0f

exit/b



:_

:flash

set fp=* Flash.

rem lu: Jan-22-2019

echo.
echo %fp%

color 36
rem qq-1

exit/b



:_ (!rfsp) (mov-6)