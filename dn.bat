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

set fp=* Run.

echo.
echo %fp%

echo.
dotnet run

rem (!rfsp) (mov-2)

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