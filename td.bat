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
  goto order_of_operations
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
echo Batch file style: Single task.

echo.
echo Entangled variable: cbf_path.

exit/b

(!rfsp) (mov-5)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



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

:order_of_operations

set fp=* Analyze environment and decide upon the proper course of action. This is an order of operations.

set cbf_path=

call pn %1

if %errorlevel% == 99 (
  exit/b
)

rem echo.
rem echo %fp% Jun-9-2020_4_08_PM

if %errorlevel% == 0 (
  goto main_function
  exit/b
)



:_

if not "%cbf_fn%" == "" (
  echo.
  echo * So try filename.
  set cbf_desired_path=%cbf_fn%
  goto try_secondary_method
  exit/b
)



:_

if not "%cbf_ex%" == "" (
  echo.
  echo * So try Excel.
  set cbf_desired_path=%cbf_ex%
  goto try_secondary_method
  exit/b
)



:_

if not "%cbf_application%" == "" (
  echo.
  echo * So try Application.
  set cbf_desired_path=%cbf_application%
  goto try_secondary_method
  exit/b
)



:_

echo.
echo * Error: Can't find anywhere to go. skw May-4-2020_8_17_PM

exit/b



:_

:try_secondary_method

set fp=* Try secondary method.

call m expand_to_path_only "%cbf_desired_path%"

if not exist "%cbf_path%" (
  echo.
  echo * Error: Could not find path "%cbf_path%".
  exit/b
)

goto main_function



:_

:main_function

cd /d "%cbf_path%"

exit/b



:_