:_

@echo off



:_

set filep=* Transform directory to the folder of a filename nickname.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto preprocessor



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Last Updated: Apr-18-2019

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename nickname.

exit/b



:_

:preprocessor

set fp=* In order to promote freshness, reset the error level.

ver>nul



:_

:main_function

set fp=* Main function.

rem Clear CBF path.
set cbf_filename=

if not "%~1" == "" call n %1 %2

if "%cbf_filename%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_filename defined for '%~1'. 
  exit/b 1
)

call m expand_to_path_only "%cbf_filename%"

cd /d "%cbf_path%"

exit/b



:_ (!rfsp) (mov-6)