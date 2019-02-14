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
echo Last Updated: Jan-31-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Function to execute.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

echo.
echo Menu of Available Functions

echo.
echo  File  Description
echo  ----  ------------------------------------------------------------------
echo     s  Show color values.


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

:default

set fp=* Default DOS window, i. e. white on black.

rem lu: Jan-22-2019

echo.
echo %fp%

color 0f

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

:whipur

set fp=* White on purple.

rem lu: Jan-31-2019

echo.
echo %fp%

color 5f

exit/b



:_

:flash

set fp=* Yellow on black.

rem lu: Jan-22-2019

echo.
echo %fp%

color 0e

exit/b



:_

:wog

set fp=* White on gray.

rem lu: Feb-1-2019

echo.
echo %fp%

color 8f

exit/b



:_

:yob

set fp=* Yellow on blue.

rem lu: Feb-1-2019

echo.
echo %fp%

color 1e

exit/b



:_

:grewhi

set fp=* Green on white.

rem lu: Feb-1-2019

echo.
echo %fp%

color f2

exit/b



:_

:whigre

set fp=* Green on white.

rem lu: Feb-1-2019

echo.
echo %fp%

color 2f

exit/b



:_ (!rfsp) (mov-6)