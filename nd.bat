:_

@echo off



:_

set filename_stands_for=* Show nickname definition.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Feb-15-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Nickname to show definition for.

echo.
echo %parameter_1%

exit/b



:_

:main_function

echo.
echo %filename_stands_for%

call m cenv

call n %1

if %errorlevel% == 1 (
  exit/b
)

if not "%cbf_application%" == "" echo.
if not "%cbf_application%" == "" echo * Application was set to: "%cbf_application%".

if not "%cbf_filename%" == "" echo.
if not "%cbf_filename%" == "" echo * Filename was set to: "%cbf_filename%".

if not "%cbf_path%" == "" echo.
if not "%cbf_path%" == "" echo * Path was set to: "%cbf_path%".

if not "%cbf_url%" == "" echo.
if not "%cbf_url%" == "" echo * URL was set to: "%cbf_url%".

exit/b



:_ (!rfsp) (mov-6)