:_

@echo off



:_

set filename_stands_for=* Simple calculator.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~2" == "+" goto addition

if "%~2" == "-" goto subtraction

if "%~2" == "*" goto multiplication

if "%~2" == "/" goto division

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: Performs 4 basic math functions.

echo.
echo %filep%

echo.
echo Last Updated: 

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: First number
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Operator (+, -, * or /)

echo.
echo %parameter_2%

set parameter_3=Parameter 3: Second number

echo.
echo %parameter_3%

exit/b



:_

:main_function

echo %filename_stands_for%



rem (!rfsp) (mov-2)

exit/b



:_

:addition

set fp=* Addition.

echo %fp%

set /a addition=%1+%3

echo.
echo %addition%

exit/b



:_

:subtraction

set fp=* Subtraction.

echo %fp%

set /a subtraction=%1-%3

echo.
echo %subtraction%

exit/b



:_

:multiplication

set fp=* Multiplication.

echo %fp%

set /a multiplication=%1*%3

echo.
echo %multiplication%

exit/b



:_

:division

set fp=* Division.

echo %fp%

set /a division=%1/%3

echo.
echo %division%

exit/b



:_