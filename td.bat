:_

@echo off



:_

set filep=* Transform directory.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" %0 cbf

if "%~1" == "/?" goto help

echo %1 | find /i "..">nul

if %errorlevel% == 0 (
  goto back_magic
) else (
  goto preprocess
)



:_

:help

echo.
echo Filename purpose: %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname, the name of a child folder or ".." which emulates the cd command.

echo.
echo Parameter 2 (Optional): If "p" is specified, go to the parent folder of parameter 1.

echo.
echo Batch file style: Single task.

echo.
echo Entangled variable: cbf_path.

exit/b

(!rfsp) (mov-5)



:_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:preprocess

set fp=* In order to promote freshness, reset the error level.

call m clear_errorlevel_silently

goto validate_input



:_

:back_magic

set fp=* Back magic

cd..

if "%~1" == "..." (
  cd..
)

if "%~1" == "...." (
  cd..
  cd..
)

if "%~1" == "....." (
  cd..
  cd..
  cd..
)

if "%~1" == "......" (
  cd..
  cd..
  cd..
  cd..
)

if "%~1" == "......." (
  cd..
  cd..
  cd..
  cd..
  cd..
)

if "%~1" == "........" (
  cd..
  cd..
  cd..
  cd..
  cd..
  cd..
)

if "%~1" == "........." (
  cd..
  cd..
  cd..
  cd..
  cd..
  cd..
  cd..
)

exit/b



:_

:validate_input

set fp=* Validate input.

set cbf_path=

call pn %1

if %errorlevel% == 99 (
  exit/b
)

if %errorlevel% gtr 0 (
  goto try_filename
  exit/b
)

goto main_function



:_

:try_filename

set fp=* Try filename.

echo.
echo %fp%

call fn %1

if %errorlevel% gtr 0 (
  goto try_application
  exit/b
)

call m expand_to_path_only "%cbf_filename%"

goto main_function



:_

:try_application

set fp=* Try application.

echo.
echo %fp%

call an %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Can't find anywhere to go. Nov-1-2019 8:54 PM
  exit/b
)

call m expand_to_path_only "%cbf_application%"

goto main_function



:_

:main_function

cd /d "%cbf_path%"

exit/b



:_
