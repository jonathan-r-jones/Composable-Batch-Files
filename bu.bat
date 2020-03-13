:_

@echo off



:_

set filep=* Back up using function routing.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

rem lu: Mar-13-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function name you wish to execute.

echo.
echo %parameter_1%

exit/b



:_

:mecfg

set fp=* Back up Mutli-edit config files.

echo.
echo %fp%

Get_JDate>%tmp%\JDate.txt
set /p JDate=<%tmp%\JDate.txt
set Current_JDate=%JDate%

echo.
echo * Current JDate = %Current_JDate%

call td bumecfg

if %errorlevel% gtr 0 (
  exit/b
)

echo.
if /i not exist "%Current_JDate%" md "%Current_JDate%"

cd %Current_JDate%

xcopy /s /y "%appdata%\Multi Edit Software\Multi-Edit\11\Config.04"

exit/b



:_ (!rfsp) (mov-7)