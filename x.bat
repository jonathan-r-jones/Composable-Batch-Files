:_

@echo off



:_

set filep=* Simulate a double-click.

rem A remote double-click equivalent way to run an alias.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo. %filep%

echo.
echo Usage: %0 [Parameter 1]

rem User case: x rl
rem User case: x cnn
rem User case: x xc
rem User case: x ex

echo.
echo Parameter 1: Alias that you want to run or "double click" if you will.

echo.
echo Parameter 2 (Optional): If "-c" is used, this will force the creation of a new file.

echo.
echo Precedence of execution:
echo.
echo If application isn't blank, execute it.
echo If filename isn't blank, execute it.
echo If URL isn't blank, execute it.
echo.
echo If all of the above are blank, raise an error.

exit/b



:_

:force_file_creation

set fp=* Force file creation.

rem lu: Sep-25-2019

echo.
echo %fp%

set destination_filename=%cbf_filename%

echo %cbf_filename% | find /i ".xlsx">nul

rem It seems that you can't change an environment variable inside an error conditional
rem so I am doing it outside of the if block. Sep-25-2019
call n exb

if %errorlevel% == 0 (
  copy %cbf_filename% "%destination_filename%"
  echo.
  echo * File copied.
)

echo.
echo * Open the new file.
xfn %1>nul

exit/b



:_

:validate_input

echo.
echo %filep%

echo %1 | c:\windows\system32\find.exe /i ".">nul

if %errorlevel% == 0 (
  echo.
  echo * Error: Aliases do not have periods. Was it necessary to use the "x" command?
  exit/b
)

call m reset_cbf_variables

call n %~1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. - skw Oct-18-2019 2:59 PM
  call m clear_errorlevel_silently 
  exit/b
)

if not "%cbf_application%" == "" (
  call xa %1>nul
  exit/b
)

if not "%cbf_filename%" == "" (
  if exist "%cbf_filename%" (
    xfn %1>nul
  ) else (
    if "%2" == "-c" (
      goto force_file_creation
    )
    echo.
    echo * Error: File "%cbf_filename%" does not exist.
    exit/b
  )
)

if not "%cbf_url%" == "" (
  sf %1>nul
)

if not "%cbf_path%" == "" (
  if exist "%cbf_path%" (
    td %1>nul
  )
)

if not "%cbf_png%" == "" (
  if exist "%cbf_png%" (
    set cbf_filename=%cbf_png%
    call m double_click
    call r
  )
)

echo.
echo * Error: CBF parameters for filename, url and application are all blank.

rem (!rfsp) (mov-2)

exit/b



:_