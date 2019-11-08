:_

@echo off



:_

set filep=* Copy CBF_Path to the clipboard.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" goto copy_cd_to_clipboard

goto validate_user_input



:_

:help

rem lu: Oct-4-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Alias of the path that you want to copy to the ^
clipboard. If no parameter is passed, the current folder's path is copied to the clipboard.

echo.
echo %parameter_1%

exit/b



:_

:validate_user_input

set cbf_path=
call pn %1

if %errorlevel% == 99 (
  exit/b 99
)

if %errorlevel% gtr 0 (
  goto try_filename_path
)

goto main_function



:_

:try_filename_path

set fp=* So try getting the path from a filename.

echo.
echo %fp%

call fn %1

if %errorlevel% gtr 0 (
  exit/b
)

call m expand_to_path_only %cbf_filename%

goto main_function



:_

:copy_cd_to_clipboard

set fp=* Copy current folder path to the clipboard.

echo.
echo %fp%

echo %cd% | clip

exit/b



:_

:main_function

:p

set fp=* CBF_Path "%cbf_path%" was copied to the clipboard.

echo.
echo %fp%

echo %cbf_path% | clip

exit/b



:_ (!rfsp) (mov-7)