:_

@echo off



:_

set filep=* Set cbf_filename based on an evaluation.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

set file_has_no_extension=0

if "%~2" == "-e" set file_has_no_extension=1

if "%~3" == "-e" set file_has_no_extension=1

if "%~2" == "-c" (
   if "%file_has_no_extension%" == "0" (
      goto c_switch_only
   )
)

if "%~3" == "-c" (
   if "%file_has_no_extension%" == "0" (
      echo 2
      goto c_switch_only
   )
)

if "%~2" == "-c" (
   if "%file_has_no_extension%" == "1" (
      goto c_and_e_switches
   )
)

if "%~3" == "-c" (
   if "%file_has_no_extension%" == "1" (
      goto c_and_e_switches
   )
)

if "%file_has_no_extension%" == "1" (
  goto e_switch_only
)

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto edit_file_by_name
) else (
  goto edit_using_alias
)

exit/b



:_

:help

rem lu: Nov-20-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename evaluation parameter.

echo.
echo %parameter_1%

set parameter_2=Parameter 2 or 3 (optional): Use -c to force file creation. Use -e to ^
specify a file with no extension.

echo.
echo %parameter_2%

exit/b



:_

:evaluate_input

rem qq-1
echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto set_filename_to_percent_1
  exit/b
)

if exist %1 (
  goto set_filename_to_percent_1
)

set cbf_filename=%share-zone%\%~1.bat

if exist %cbf_filename% (
  echo.
  echo * Set filename equal to Share-zone %1.bat file.
  exit/b 0
)

set cbf_filename=%composable_batch_files%\%~1.bat

if exist %cbf_filename% (
  echo.
  echo * Set filename equal to CBF %1.bat file.
  exit/b 0
)

call fn %1

if %errorlevel% gtr 0 (
  exit/b 1
)



:_

:set_filename_to_percent_1

set fp=* Set filename equal to "%1".

echo.
echo %fp%

set cbf_filename=%1

exit/b 0



:_

:edit_using_alias

set fp=* Edit a file using an alias lookup.

rem echo.
rem echo %fp%

call fn %1

if %errorlevel% gtr 0 (
  exit/b 1
)

exit/b 0



:_ (!rfsp) (mov-7)