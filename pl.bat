:_

@echo off



:_

set filep=* Pull with path walker.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if "%~1" == "" goto main_function

if "%~1" == "-c" goto pull_current_folder

call td %~1

if %errorlevel% == 1 (
  echo.
  echo * There has been a folder error.
  exit/b
)

goto main_function



:_

:h

:help

echo.
echo Filename stands for: Git pull.

echo.
echo Last Updated: Jul-16-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
all prewired folders will be pulled. If "-c" is specified, the current folder is pulled.

exit/b



:_

:pull_current_folder

call g pull

rem (!rfsp) (mov-2)

exit/b



:_

:main_function

set fp=* Pull prewired folders.

rem lu: Mar-6-2019

echo.
echo %fp%

call td cbf

call g pl

call td s

call g pl
rem qq-1

if "%machinename%"=="gfe" call cyft mecfg_s mecfg

if "%machinename%"=="gfe" cd\

if not "%machinename%"=="gfe" (
   call 8
   call cyft mecfg mecfg_s
   cd\
)

exit/b



:_