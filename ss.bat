:_

@echo off



:_

set filep=* Do super status, that is status for all selected repositories.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filepr%

echo.
echo Usage: %0

exit/b



:_

:main_function

rem lu: Apr-18-2019

echo.
echo %filep%

set /a sum_of_error_levels=0


:community_path

call g evaluate_folders_git_status cbf

set /a sum_of_error_levels=%sum_of_error_levels%+%errorlevel%

call g evaluate_folders_git_status s
set /a sum_of_error_levels=%sum_of_error_levels%+%errorlevel%

echo %computername% | find /i "lipt">nul

if %errorlevel% == 0 goto gfe_path

goto nongfe_path


:gfe_path

rem Disabled for now. Jul-1-2019
rem call g evaluate_folders_git_status cade
rem set /a sum_of_error_levels=%sum_of_error_levels%+%errorlevel%

goto community_path_resumed


:nongfe_path

call g evaluate_folders_git_status drql
set /a sum_of_error_levels=%sum_of_error_levels%+%errorlevel%

goto community_path_resumed


:community_path_resumed

call td s>nul

if %sum_of_error_levels% == 0 (
  echo.
  echo * Sans souci.
  call m show_ascii_art_sans_souci
  echo.
) else (
  echo.
  echo * Number of dirty repositories = %sum_of_error_levels%
)

exit/b



:_ (!rfsp) (mov-9)