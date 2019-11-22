:_

@echo off



:_

set filep=* Set cbf_filename based on an evaluation.



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

echo %1| C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %1| C:\Windows\System32\find.exe /i " ">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

goto use_alias_or_batch_file



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

exit/b 0



:_

:set_filename_to_percent_1

set fp=* Set filename equal to "%1".

echo.
echo %fp%

set cbf_filename=%1

exit/b 0



:_

:use_alias_or_batch_file

set fp=* Use alias to find filename.

rem echo.
rem echo %fp%

if exist "%composable_batch_files%\%~1.bat" (
  set cbf_filename=%composable_batch_files%\%~1.bat
  exit/b 0
)

if exist "%share-zone%\%~1.bat" (
  set cbf_filename=%share-zone%\%~1.bat
  exit/b 0
)

goto use_alias



:_

:use_alias

set fp=* Use alias to find filename.

rem echo.
rem echo %fp%

echo Percent 1: %~1
call fn %~1

if %errorlevel% gtr 0 (
  exit/b 1
)

exit/b 0



:_

:use_current_folder_filename

set fp=* Use current folder filename.

echo.
echo %fp%

if not exist "%~1" (
  echo.>"%~1"
)

set cbf_filename=%~1

exit/b 0



:_

:d_switch_only

set fp=* D switch only. Blank out the file before opening it.

rem lu: Mar-21-2019

echo.
echo %fp%

call n %1

rem echo %cbf_filename%

del %cbf_filename%

call %0 %1 -c

exit/b 0



:_

:e_switch_only

set fp=* E switch only.

echo.
echo %fp%

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 1 (
  set cbf_filename=%~1
)

call m clear_errorlevel_silently

if "%cbf_filename%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_filename defined for '%~1'. 
  exit/b 1
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The file "%cbf_filename%" does not exist.
  exit/b 1
)

exit/b 0



:_

:c_and_e_switches

set fp=* C and E switches.

rem lu: Jan-16-2019

echo.
echo %fp%

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 1 (
  set cbf_filename=%~1
)

call m clear_errorlevel_silently

if exist "%cbf_filename%" (
  echo.
  echo * Error: Why are you using the "-c" switch on a file that already exists?
  exit/b 1
) else (
  echo.>%cbf_filename%
)

exit/b 0



:_

:c_switch_only

set fp=* C switch only.

rem lu: Nov-21-2019

echo.
echo %fp%

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.

echo %1 | c:\windows\system32\find.exe /i ".">nul

if %errorlevel% == 0 (
  set cbf_filename=%~1
) else (
  call fn %1
)

if exist "%cbf_filename%" (
  echo.
  echo * Error: Why are you using the "-c" switch on a file that already exists?
  exit/b 1
) else (
  echo.>%cbf_filename%
)

exit/b 0



:_ (!rfsp) (mov-7)