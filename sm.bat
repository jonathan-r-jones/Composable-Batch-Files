:_

@echo off



:_

rem Metadata

rem File Purpose: Use Sublime.

set application_name=C:\Program Files\Sublime Text 3\sublime_text.exe



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Detect a filename in the first parameter.

rem lu: Nov-9-2017

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



:_+ 2 Flavors of Notepad++ editing models.



:_+ Edit Files Methods



::_

:edit_file_with_name_lookup

set fp=* Run Notepad to edit "%file_to_edit%".

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" "%application_name%" %file_to_edit%

goto exitb



::_

:edit_file_in_current_directory

set fp=* Run Notepad to edit "%1".

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" "%application_name%" %1

goto exitb



:_

:help

set fp=* Help.

rem fcd: May-13-2017

call fn.bat shared_list

goto exitb



:_ (!sp) (mov-9)