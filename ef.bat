:_

@echo off



:_

set fp=* Route help callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Detect a filename in the first parameter.

rem lu: Nov-9-2017

echo %1 | find /i ".">nul

rem if %errorlevel% == 0 echo.
rem if %errorlevel% == 0 echo First parameter is a filename.
if %errorlevel% == 0 goto edit_file_with_current_folder_file

rem if %errorlevel% == 1 echo First parameter is NOT a filename so go get a filename.

call fn %1

goto edit_file_with_looked_up_parameter



:_

:help

set fp=Be used to edit files.

echo This file purpose (fp) is to: %fp%
echo.

echo The filename stands for: Edit File.
echo.

echo Last Updated (lu): Jan-24-2018
echo.

echo Usage: This is called by specific editors.
echo.

echo [filename verb, e.g. no (for Notepad) or npp (for Notepad++)] [first parameter = filename lookup code]

goto exitb



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



:_+ 2 Flavors of Running.



::_

:edit_file_with_looked_up_parameter

set fp=* Run "%cbf_application%" with "%cbf_filename%".

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" "%cbf_application%" "%cbf_filename%"

goto exitb



::_

:edit_file_with_current_folder_file

set fp=* Run "%cbf_application%" with current directory file "%1".

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" "%cbf_application%" "%1"

goto exitb



:_ (!sp) (mov-9)