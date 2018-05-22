:_

@echo off



:_

set filep=* Run application . . .



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if not "%~1" == "" call n %1

if not "%~2" == "" call n %2

goto main_function



:_

:help

set fp=* Run application with or without a parameter.

echo.
echo File purpose: %filep%

echo.
echo Filename stands for: Run application.

echo.
echo Last Updated (lu): May-22-2018

echo.
echo Usage: %0 [Parameter 1] [Parameter 2]

echo.
echo Parameter 1 (Optional): Application nickname.

echo.          
echo Parameter 2 (Optional): Parameter nickname.

echo.
echo Notes: If no parameters are passed, the currently set CBF_Application and CBF_Parameter are used.

exit /b



:_

:main_function

set fp=* Main function.

if "%cbf_application%" == "microsoft-edge" goto micorosoft_edge_special_case

if "%cbf_parameter%" == "" call start "my title" "%cbf_application%"
if "%cbf_parameter%" == "" exit /b

if not "%cbf_parameter%" == "" call start "my title" "%cbf_application%" "%cbf_parameter%"
if not "%cbf_parameter%" == "" exit /b



:_

set fp=* Use special syntax for Microsoft Edge.

:micorosoft_edge_special_case

if "%cbf_parameter%" == "" call start "my title" "%cbf_application%:"
if "%cbf_parameter%" == "" exit /b

if not "%cbf_parameter%" == "" call start "my title" "%cbf_application%:""%cbf_parameter%"

exit /b



:_ (!rfsp) (mov-9)