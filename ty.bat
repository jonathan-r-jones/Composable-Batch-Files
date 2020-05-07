:_

@echo off



:_

set filep=* Use type command to view nickname-specified file.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

echo %1| C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %1| C:\Windows\System32\find.exe /i " ">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %~1 %~2 %~3 %~4 %~5| C:\Windows\System32\find.exe /i "-e">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

goto use_alias_or_batch_file



:_

:help

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Filename calculus to view in a read-only fashion.

echo.
echo %parameter_1%

exit/b



:_

:use_alias_or_batch_file

set fp=* Use batch file to find filename.

if exist "%composable_batch_files%\%~1.bat" (
  set cbf_fn=%composable_batch_files%\%~1.bat
  goto main_function
)

if exist "%share-zone%\%~1.bat" (
  set cbf_fn=%share-zone%\%~1.bat
  goto main_function
)

goto use_alias



:_

:use_alias

set fp=* Use alias to find filename.

rem echo.
rem echo %fp%

call fn %~1

if %errorlevel% gtr 1 (
  exit/b 1
)

if %errorlevel% gtr 0 (
  exit/b 0
)

goto main_function

exit/b 0



:_

:use_current_folder_filename

set fp=* Use current folder filename.

echo.
echo %fp%

set cbf_fn=%~1

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The file "%cbf_fn%" does not exist. Nov-27-2019 6:22 PM
  exit/b
) else (
  echo.
  echo * Open the existing file "%cbf_fn%". Nov-27-2019 12:07 PM
)

goto main_function



:_

:main_function

type "%cbf_fn%"

echo.



:_ (!rfsp) (mov-6)
