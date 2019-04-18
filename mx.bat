:_

@echo off



:_

set filep=* Use Multi-Edit to edit a batch file in the CBF folder. Make mx.bat work for the n_ignore file too.

setlocal



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_ (!rfsp) (mov-6)

:help

echo.
echo File Purpose: %filep%

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

echo.
echo %filep%

call n me

set cbf_filename=%composable_batch_files%\%~1.bat

rem echo Mar-11-2019.1

if not exist "%cbf_filename%" (
  goto make_max_work
  exit/b
)

rem echo Mar-11-2019.2

set cbf_parameter=%cbf_filename%

call r

exit/b



:_

:make_max_work

rem lu: Jan-8-2019

endlocal

echo.
echo %filep%

rem echo Mar-11-2019.3

set cbf_filename=%share-zone%\%~1.bat

if not exist %cbf_filename% (
  echo.
  echo * The file "%cbf_filename%" does not exist.
  exit/b 1
)

rem echo Mar-11-2019.4

set cbf_parameter=%cbf_filename%

call r

exit/b



:_