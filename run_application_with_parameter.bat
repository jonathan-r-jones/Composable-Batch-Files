:_

@echo off



:_

rem Metadata

rem File Purpose: Single source for applications that use a parameter.



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
if %errorlevel% == 0 goto run_application_with_current_folder_file

rem if %errorlevel% == 1 echo First parameter is NOT a filename so go get a filename.

call pm %1

goto run_application_with_looked_up_parameter



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



:_+ 2 Flavors of editing.



:_+ Edit Files Methods



::_

:run_application_with_looked_up_parameter

set fp=* Run application with "%cbf_parameter%".

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" "%cbf_application%" %cbf_parameter%

goto exitb



::_

:run_application_with_current_folder_file

set fp=* Run application with current directory file "%1".

rem lu: Nov-9-2017

echo.
echo %fp%

call start "my title" "%cbf_application%" %1

goto exitb



:_ (!sp) (mov-9)