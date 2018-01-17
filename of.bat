:_

@echo off



:_

rem Metadata

rem File Purpose: This Open Folder (of) batch file is used mostly as a wrapper around td.bat.

rem title=Open Folder Helper



:_

set fp=* Add echo.

echo.



:_

set fp=* Route help callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Route other callers.

if "%1"=="" goto open_folder_in_windows_explorer_at_current_directory

echo ** Open folder in Windows Explorer at . . .

goto open_folder_in_windows_explorer



:_

:exit

set fp= * Exit.

echo.
rem echo %fp%

(!exit)

exit



:_

:exitb

set fp= * Exit batch file but not command window.

rem echo %fp%

exit /b



:_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



:_

Metadata: Track Size (!tsof)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: May-9-2017     342      3,355       22



:_

:open_folder_in_windows_explorer

set fp=* Open folder in Windows Explorer.

rem fcd: May-9-2017

call td %1

rem echo Errorlevel: %errorlevel%

if "%errorlevel%"=="0" explorer %cd%

goto exitb



:_

:open_folder_in_windows_explorer_at_current_directory

set fp=* Open folder in Windows Explorer at current directory.

rem fcd: May-25-2017

echo %fp%

explorer %cd%

goto exitb



:_

:help

set fp=* Open folder.

rem fcd: May-13-2017

echo %fp%

echo.
echo Usage: of [single parameter]

call td.bat shared_list

goto exitb



:_ (!sp) (mov-9)