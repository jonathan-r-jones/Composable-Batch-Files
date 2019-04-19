:_

@echo off



:_

set filep=* Use Multi-Edit to edit a batch file in the CBF folder.



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
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

echo.
echo For example, typing "mx m" would edit the m.bat file in the Composable
echo. Batch Files folder.

exit/b



:_

:edit_a_share_zone_file

set fp=* Edit a share-zone batch file.

rem lu: Apr-19-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\%~1.bat

if not exist %cbf_filename% (
  echo.
  echo * The file "%cbf_filename%" does not exist.
  exit/b 1
)

set cbf_parameter=%cbf_filename%

call r

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
  goto edit_a_share_zone_file
  exit/b
)

set cbf_parameter=%cbf_filename%

call r

exit/b



:_