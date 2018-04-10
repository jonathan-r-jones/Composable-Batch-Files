:_

@echo off



:_

set filep=* Open folder.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Route other callers.

if "%~1"=="" goto open_folder_in_windows_explorer_at_current_directory

goto open_folder_in_windows_explorer



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: Open Folder.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: of [Parameter 1]

echo.
echo Parameter 1 (Optional): Path to walk before opening Windows Explorer. If left blank, the current folder is used.

echo.
echo Notes: This is a wrapper around td.bat and n.bat.

m exitb



:_

:open_folder_in_windows_explorer

set fp=* Open folder in Windows Explorer.

rem fcd: May-9-2017

call td %1 %2

rem echo Errorlevel: %errorlevel%

if "%errorlevel%"=="0" explorer %cd%

m exitb



:_

:open_folder_in_windows_explorer_at_current_directory

set fp=* At the current directory.

rem fcd: May-25-2017

echo.
echo %fp%

explorer %cd%

m exitb



:_ (!sp) (mov-9)