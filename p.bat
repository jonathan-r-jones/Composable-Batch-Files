:_

@echo off



:_

set filep=* Add, commit and push Git changes with timestamp commit message.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if "%~1" == "" goto push_prewired_folders

if "%~1" == "-c" goto current_folder

call td %~1

if %errorlevel% == 1 (
  echo.
  echo * There has been a folder error.
  exit/b
)

goto current_folder



:_

:h

:help

echo.
echo Filename stands for: Add/Commit/Push.

echo.
echo Last Updated: Dec-27-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
all prewired folders will be pushed. If "-c" is specified, the current folder is pushed.

exit/b



:_

:current_folder

call g acp

exit/b



:_

:push_prewired_folders

set fp=* Push prewired folders.

rem lu: Dec-27-2018

echo.
echo %fp%

cll g co_sf lu

call m lu %0

call de multi-edit_conflicted_files

if not "%machinename%"=="gfe" (
   call 8
   call cyft mecfg mecfg_s
   cd\
)

call p cbf

call p s

rem (!rfsp) (mov-2)

exit/b



:_