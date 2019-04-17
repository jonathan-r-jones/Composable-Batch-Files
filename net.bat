:_

@echo off



:_

set filename_stands_for=* A wrapper around the netstat command.



:_

set fp=* Route help callers.

if "%~1" == "" goto find_5432

if "%~1" == "/?" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:find_5432

set fp=* Find 5432.

echo.
echo %filename_stands_for%

rem netstat -ano | findstr :<yourPortNumber>

echo.
netstat -a -n -o | findstr :5432

exit/b



:_

:pl

set fp=* Plain.

echo.
echo %fp%

echo.
netstat -a -n -o

exit/b



:_

:s

set fp=* Search for string.

echo.
echo %fp%

netstat -ano | findstr :%1

exit/b



:_

:merc1

set fp=* Netstat used by Mercury version 1.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.
netstat -a -n>%temp%\j1.txt

exit/b



:_

:merc2

set fp=* Netstat used by Mercury version 2.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.
netstat -an>%temp%\j2.txt

exit/b



:_ (!rfsp) (mov-6)