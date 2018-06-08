:_

@echo off



:_

set Filename_stands_for=* Edit a file using NotePad.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

set filep=File purpose: This template file can be used as a "Save As" to create a new 
set filep=%filep% composable batch file.

echo.
echo %filep%

echo.
echo Last Updated: Jun-8-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1 (Optional): The filename nickname of the file to execute
set parameter_1=%parameter_1% or filename of a file in the current folder.

echo.
echo %parameter_1%

exit /b



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: NOtepad.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The filename nickname of the file to execute or filename of a file in the current folder.

exit /b



:_

:main_function

set fp=* Main function.

if "%~1" == "" (
  echo Percent 1 nothing.
  call ea no
rem qq-1
) else (
  echo Percent 1 is something.
  call ed "%~1" %0
)



rem (!rfsp) (mov-2)

exit /b



:_