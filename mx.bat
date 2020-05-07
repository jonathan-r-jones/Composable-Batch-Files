:_

@echo off



:_

set filep=* Use Multi-Edit to edit a batch file in the CBF folder.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

rem echo Percent 1: %1
rem exit/b

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_ (!rfsp) (mov-6)

:help

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

echo.
echo For example, typing "mx m" would edit the m.bat file in the Composable
echo Batch Files folder.

exit/b



:_

:edit_a_share_zone_file

set fp=* Edit a share-zone batch file.

rem lu: Apr-19-2019

rem echo.
rem echo %fp%

set cbf_fn=%share-zone%\%~1.bat

if not exist %cbf_fn% (
  rem echo.
  rem echo * The file "%cbf_fn%" does not exist.
  exit/b 1
)

set cbf_parameter=%cbf_fn%

call r

exit/b



:_

:main_function

set fp=* Main function.

call n me

set cbf_fn=%composable_batch_files%\%~1.bat

if not exist "%cbf_fn%" (
  goto edit_a_share_zone_file
  exit/b
)

set cbf_parameter=%cbf_fn%

call r

exit/b



:_