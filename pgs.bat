:_

@echo off



:_

set filename_stands_for=* PostgreSQL-related commands.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

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

:i

set fp=* Initialize a new database.

echo.
echo %fp%

initdb -D c:\aa\pgdata
rem qq-1

exit/b



:_

:s

:start

set fp=* Start the database server.

rem lu: Mar-5-2019

echo.
echo %fp%

echo.
pg_ctl -D ^"c^:^\aa^\pgdata^" -l logfile start

exit/b



:_

:stop

set fp=* Stop the database server.

rem lu: Mar-5-2019

echo.
echo %fp%

echo.
pg_ctl -D ^"c^:^\aa^\pgdata^" -l logfile stop

exit/b



:_ (!rfsp) (mov-6)