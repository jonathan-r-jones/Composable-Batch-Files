:_

@echo off



:_

set filep=* Open folder.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1"=="" goto open_folder_in_win_explorer_cd

goto open_folder_in_windows_explorer



:_ (!rfsp) (mov-6)

:help

echo.
echo %filep%

echo.
echo Usage: of [Parameter 1]

echo.
echo Parameter 1 (Optional): Path to walk before opening Windows Explorer. If left blank, the current folder is used.

echo.
echo Notes: This is a wrapper around td.bat and n.bat.

exit/b



:_

:open_folder_in_windows_explorer

set fp=* Open folder in Windows Explorer.

rem fcd: May-9-2017

set cbf-pt=

call td %1 %2

rem echo * Errorlevel from OF: %errorlevel%

if "%errorlevel%"=="0" (
  goto open_folder_in_win_explorer_cd
) else (
  call m clear_errorlevel_silently
)

exit/b



:_

:open_folder_in_win_explorer_cd

set fp=* At the current directory.

echo.
echo %fp%

explorer %cd%

exit/b



:_ (!sp) (mov-9)