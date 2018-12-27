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

if "%~1" == "-a" goto pull_prewired_folders

goto preprocessing



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
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current ^
folder is used. If "-a" is specified, all preswired folders will be pulled.

exit/b



:_

:pull_prewired_folders

set fp=* Pull prewired folders.

rem lu: Dec-27-2018

echo.
echo %fp%

call m pl

exit/b



:_

:preprocessing

set fp=* Preprocessing.

rem lu: Dec-7-2018

if not "%~1" == "" call td %~1

goto main_function

exit/b



:_

:main_function

call g pull

rem (!rfsp) (mov-2)

exit/b



:_