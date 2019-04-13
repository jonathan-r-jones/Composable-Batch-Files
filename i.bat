:_

@echo off



:_

set filename_stands_for=* Show nickname definition.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" goto show_the_state_of_the_cbf_environment_variables

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

set parameter_1=Parameter 1 (Optional): Nickname to show definition for. If left blank ^
current CBF environment variables are shown.

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



:_

:show_the_state_of_the_cbf_environment_variables

set fp=* Show the state of the CBF environment variables.

cls

echo.
echo %fp%

echo.
echo Application: %cbf_application%

echo.
echo Back: %cbf_back%

echo.
echo Clone URL: %cbf_clone_url%

echo.
echo Default Browser: %cbf_default_browser%

echo.
echo Default Text Editor: %cbf_default_text_editor%

echo.
echo Filename: %cbf_filename%

echo.
echo Header: %cbf_header%

echo.
echo Parameter: %cbf_parameter%

echo.
echo Path: %cbf_path%

echo.
echo Repo: %cbf_repo%

echo.
echo URL: %cbf_url%



exit/b



:_ (!rfsp) (mov-6)