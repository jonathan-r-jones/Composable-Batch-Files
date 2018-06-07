:_

@echo off



:_

set filep=* Edit a file.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Detect a period in the first parameter and run.

rem lu: Feb-1-2018

echo %1 | find /i ".">nul

if %errorlevel% == 0 set cbf_filename=%~1

if %errorlevel% == 1 call fn %1

set cbf_parameter=%cbf_filename%

rem Set Default application.

if "%cbf_default_text_editor%" == "" (
  call m sde no
)

if "%~2" == "" (
  set cbf_application=%cbf_default_text_editor%
) else (
  call n %2
)

rem qq-1

call r

exit /b



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo %filep%

echo.
echo Filename stands for: Edit a file.

echo.
echo Last Updated: May-30-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: The filename nickname of the file to execute or filename of a file in the current folder.

echo.
echo Parameter 2 (Optional): The Application nickname to use to edit the file.

exit /b



:_