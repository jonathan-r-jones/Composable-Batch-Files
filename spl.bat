:_

@echo off



:_

set filep=* Super pull, i.e. pull all chosen repositories.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" goto main_function

if "%~1" == "" goto pull_current_folder

call td %~1

if %errorlevel% == 1 (
  exit/b
)

goto pull_current_folder



:_

:help

echo.
echo File purpose for: %filep%

echo.
echo Last Updated: Apr-18-2019

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
the current folder is pulled.

exit/b



:_

:main_function

rem lu: Apr-10-2019

echo.
echo %filep%

if not "%machinename%"=="gfe" (
   cd\
   call 8
   call cypn mecfg mecfg_s
)

call pl cbf

call pl s

if "%machinename%"=="gfe" call cypn mecfg_s mecfg
if "%machinename%"=="gfe" cd\

call ss

exit/b



:_ (!rfsp) (mov-8)