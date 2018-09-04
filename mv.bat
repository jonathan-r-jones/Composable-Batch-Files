:_

@echo off



:_

set filename_stands_for=* Wrapper around the Move command.



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

echo Filename stands for: %filename_stands_for%

echo.
echo %filep%

echo.
echo Last Updated: Sep-4-2018

echo.
echo Usage: %0 [Parameter 1]

exit/b



:_

:tc

:move_all_files_in_current_folder_to_cbf_path

set fp=* Move all files in current folder to cbf path.

echo.
echo %fp% (%cbf_path%)

call m folder_is_empty %cd%

if %errorlevel% == 1 (
  exit/b
)

call m clear_errorlevel_silently

move *.* %cbf_path%

rem qq-1

rem (!rfsp) (mov-2)

exit/b



:_