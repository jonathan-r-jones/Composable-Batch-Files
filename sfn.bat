:_

@echo off



:_

set filep=* Set cbf-fn based on an evaluation.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

call :evaluate_the_parameter_list %*

echo %1| C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %1| C:\Windows\System32\find.exe /i " ">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %*| C:\Windows\System32\find.exe /i " -e">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %*| C:\Windows\System32\find.exe /i " -n">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

goto use_alias_or_batch_file



:_

:help

echo.
echo %filep%

rem lu: Nov-20-2019

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Entangled variable: cbf-filename

set parameter_1=Parameter 1: Filename, filename alias or batch file prefix for a batch file ^
that lives in either the CBF or Share-zone folder. Evaluated filename parameter.

echo.
echo %parameter_1%

set parameter_2=Parameter 2 or greater (Optional): -e Filename without extension, e.g. Jenkinsfile. ^
-d Delete file before opening it.

echo.
echo %parameter_2%

echo.
echo Batch file style: Single Purpose

echo.
echo Example(s):

echo.
echo %0 e
echo E.bat exists so should be opened.

echo.
echo %0 ccj
echo No cbf-fn definition exists for ccj. However a definition for cbf-java exists at ccj, so ^
use that instead.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:evaluate_the_parameter_list

set fp=* Evaluate the parameter list.

rem lu: Nov-27-2019

set d_switch=0
set e_switch=0

:top_of_parameter_line_evaluation

if "%~1" == "" goto exit_loop

if "%~1" == "-d" set d_switch=1
if "%~1" == "-e" set e_switch=1

shift

goto top_of_parameter_line_evaluation

:exit_loop

rem echo.
rem echo d: %d_switch%
rem echo e: %e_switch%

exit/b



:_

:use_alias_or_batch_file

set fp=* Use batch file to find filename.

if exist "%composable_batch_files%\%~1.bat" (
  set cbf-fn=%composable_batch_files%\%~1.bat
  rem echo.
  rem echo %fp% Ran from CBF folder.
  goto file_exists
)

if exist "%share-zone%\%~1.bat" (
  set cbf-fn=%share-zone%\%~1.bat
  echo.
  echo %fp% Ran from Share-Zone folder.
  goto file_exists
)

goto use_alias



:_

:use_alias

set fp=* Use alias to find filename.

echo.
echo %fp%

call fn %~1

if %errorlevel% gtr 1 (
  goto file_does_not_exist
)

if %errorlevel% gtr 0 (
  rem echo.
  rem echo Error finding filename. May-11-2020_9_11_PM
  exit/b 1
)

goto file_exists



:_

:use_current_folder_filename

set fp=* Use current folder filename.

echo.
echo %fp%

set cbf-fn=%~1

if exist "%cbf-fn%" (
  goto file_exists
)

goto file_does_not_exist



:_

:file_exists

set fp=* The batch file label and CBF were found and/or the file exists. Success!

rem echo.
rem echo %fp%

rem echo d_switch: %d_switch%

if "%d_switch%" == "1" (
  echo.
  echo * Delete file "%cbf-fn%", before opening. Nov-27-2019 6:36 PM
  echo.>"%cbf-fn%"
  exit/b 0
)

exit/b 0



:_

:file_does_not_exist

set fp=* The batch file label and CBF were found but file does MOT exist.

echo.
echo %fp%

echo.>"%cbf-fn%"

echo.
echo * But now it does.

exit/b 0



:_ (!rfsp) (mov-7)
