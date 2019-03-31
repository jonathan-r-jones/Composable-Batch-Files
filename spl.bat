:_

@echo off



:_

set filename_stands_for=* Super pull, i.e. push all selected repositories.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if "%~1" == "" goto main_function

if "%~1" == "" goto pull_current_folder

call td %~1

if %errorlevel% == 1 (
  exit/b
)

goto pull_current_folder



:_

:h

:help

echo.
echo Filename stands for: %filep%

echo.
echo Last Updated: Jul-16-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
the current folder is pulled.

exit/b



:_

:main_function

set fp=* Main function of "%filep%.

rem lu: Mar-31-2019

echo.
echo %fp%

if not "%machinename%"=="gfe" (
   cd\
   call 8
   call cypn mecfg mecfg_s
)

call td cbf

call g pl

call td s

call g pl

if "%machinename%"=="gfe" call cypn mecfg_s mecfg

if "%machinename%"=="gfe" cd\

exit/b



:_ (!rfsp) (mov-8)