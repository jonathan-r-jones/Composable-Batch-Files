:_

@echo off



:_

set filename_stands_for=* Use Multi-Edit to edit a batch file in the CBF folder.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto main_function



:_ (!rfsp) (mov-6)

:h

:help

echo Filename stands for: %filename_stands_for%

echo.
echo File purpose: Use Multi-Edit to edit a batch file in the CBF folder.

echo.
echo Last Updated: Jun-8-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

echo.
echo For example, typing "mx m" would edit the m.bat file in the Composable
echo. Batch Files folder.

exit/b



:_

:main_function

set fp=* Main function.

echo %filename_stands_for%

call n me

set cbf_filename=%composable_batch_files%\%~1.bat

set cbf_parameter=%cbf_filename%

if not exist "%cbf_filename%" (
  echo.
  echo * The file "%cbf_filename%" does not exist.
  exit/b
)

call r

exit/b



:_