:_

@echo off



:_

set filename_stands_for=* Use Sublime to edit a batch file in the CBF folder.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

echo.
echo File purpose: Use Sublime to edit a batch file in the CBF folder.

echo.
echo Last Updated: Aug-13-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

exit/b



:_

:main_function

set fp=* Main function.

echo %filename_stands_for%

call n sm

set cbf_filename=%composable_batch_files%\%~1.bat

set cbf_parameter=%cbf_filename%

call r

exit/b



:_ (!rfsp) (mov-6) 