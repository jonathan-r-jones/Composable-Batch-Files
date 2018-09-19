:_

@echo off



:_

set filename_stands_for=* Perform .NET Core functions.



:_

set fp=* Route help callers.

if "%~1" == "" goto run

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
echo Last Updated: Aug-31-2018

echo.
echo Usage: %0 [Parameter 1]

exit/b



:_

:run

set fp=* Run DotNetCore web server.

echo.
echo %fp%

echo.
dotnet run

exit/b




:_

:rest

set fp=* Restore Nuget packages.

echo.
echo %fp%

echo.
dotnet restore

exit/b




:_

:b

:build

set fp=* Build.

echo.
echo %fp%

echo.
dotnet build

exit/b




:_

:db_up

:up_db

set fp=* Create a database based on the current project's DbContext.

rem lu: Sep-17-2018

echo.
echo %fp%

echo.
dotnet ef database update

exit/b



:_

:ef_mig

set fp=* Use EF migragions

rem lu: Sep-18-2018

echo.
echo %fp%

echo.
dotnet ef migrations add initialdb

exit/b



:_

:se_mig

set fp=* Seed migration.

rem lu: Sep-18-2018

echo.
echo %fp%

echo.
dotnet ef migrations add SeeData

exit/b



:_

:dev

set fp=* Set environment to development. This is helpful to see debugging messages when running at the command line.

rem lu: Sep-19-2018

echo.
echo %fp%

set ASPNETCORE_ENVIRONMENT=Development

exit/b



:_ (!rfsp) (mov-6)