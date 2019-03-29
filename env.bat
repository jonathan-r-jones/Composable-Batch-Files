:_

@echo off



:_

set filename_stands_for=* Show the state of the CBF environment variables.



:_

set fp=* Route help callers.

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
echo Last Updated: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

cls

echo.
echo %filename_stands_for%

echo.
echo Application: %cbf_application%

echo.
echo Clone URL: %cbf_clone_url%

echo.
echo Default Browser: %cbf_default_browser%

echo.
echo Default Text Editor: %cbf_default_text_editor%

echo.
echo Default Repository Folder: %cbf_repo%

echo.
echo Filename: %cbf_filename%

echo.
echo Header: %cbf_header%

echo.
echo Parameter: %cbf_parameter%

echo.
echo Path: %cbf_path%

echo.
echo URL: %cbf_url%

rem qq-1



exit/b



:_ (!rfsp) (mov-6)