:_

@echo off



:_

rem Metadata

rem File Purpose: This batch file is used mostly as a wrapper around fn.bat.

rem title=Open Folder Helper



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Set Notepad++ installation path.

rem lu: Jan-3-2018

rem echo %fp%

set npp_installation_path=

if exist "c:\program files\notepad++\notepad++.exe" set npp_installation_path="c:\program files\notepad++\notepad++.exe"
if exist "c:\program files (x86)\notepad++\notepad++.exe" set npp_installation_path="c:\program files (x86)\notepad++\notepad++.exe"

if %npp_installation_path%=="" echo Notepad++ is not installed.

rem echo %npp_installation_path%

rem qq-1



:_

set fp=* Detect a filename in the first parameter.

rem lu: Nov-9-2017

rem echo.
rem echo %fp%

echo %1 | find /i ".">nul

rem if %errorlevel% == 0 echo.
rem if %errorlevel% == 0 echo First parameter is a filename.

if %errorlevel% == 0 goto edit_file_in_current_directory

rem if %errorlevel% == 1 echo First parameter is NOT a filename so go get a filename.

call fn %1

goto edit_file_with_name_lookup



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

:help

set fp=* Help.

rem fcd: May-13-2017

rem echo.
rem echo %fp%

call fn.bat shared_list

goto exitb



:_+ 2 Flavors of Notepad++ editing models.



::_

:edit_file_with_name_lookup

set fp=* Run Notepad++ to edit "%cbf_parameter%".

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" %npp_installation_path% %cbf_parameter%

goto exitb



::_

:edit_file_in_current_directory

set fp=* Run Notepad++ to edit "%1" in the current folder.

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" %npp_installation_path% %1

goto exitb



:_ (!sp) (mov-9)