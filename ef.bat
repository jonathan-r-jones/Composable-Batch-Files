:_

@echo off



:_

set fp=* Execute file . . .

echo.
echo %fp%
echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

if not "%2" == "" call an %2



:_

set fp=* Detect a filename in the first parameter.

rem lu: Nov-9-2017

echo %1 | find /i ".">nul

rem if %errorlevel% == 0 echo.
rem if %errorlevel% == 0 echo First parameter is a filename.
if %errorlevel% == 0 goto edit_file_with_current_folder_file

rem if %errorlevel% == 1 echo First parameter is NOT a filename so look up the filename.

call fn %1

goto edit_file_with_looked_up_parameter



:_

:help

set fp=* Execute file.

echo File purpose (fp): %fp%

echo.
echo Filename stands for: Execute File.

echo.
echo Last Updated (lu): Feb-1-2018

echo.
echo Usage: ef [Parameter 1] [Parameter 2]

echo.
echo Parameter 1: The filename nickname of the file to execute or filename of a file in the current folder.

echo.
echo Parameter 2: The application nickname of the application used to execute the file.

echo.
echo Notes: The main feature provided by this batch file is to detect a period in the filename of a file in the current folder.

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