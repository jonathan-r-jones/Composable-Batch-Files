:_

@echo off





set filep=* Run application.



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
echo Last Updated (lu): Jun-14-2018

echo.
echo Usage: %0 [Parameter 1] [Parameter 2]

echo.
echo Parameter 1 (Optional): Application nickname.

echo.          
echo Parameter 2 (Optional): Parameter nickname.

echo.
echo Notes: If no parameters are passed, the currently set CBF_Application and CBF_Parameter are used.

exit/b



:_

:run_application_in_raw_format

set fp=* CBF_Application contains a double dash. Run it raw.

echo %fp%

%cbf_application%

exit/b



:_

set fp=* Use special syntax for Microsoft Edge.

:microsoft_edge_special_case

if "%cbf_parameter%" == "" (
  call start "my title" "%cbf_application%:"
  exit/b
)

call start "my title" "%cbf_application%:""%cbf_parameter%"

exit/b



:_

:main_function

set fp=* Run application - main function.
rem qq-1

if "%cbf_application%" == "microsoft-edge" goto microsoft_edge_special_case

echo %cbf_application% | find /i "--">nul

if %errorlevel% == 0 (
  echo.
  goto run_application_in_raw_format
) else (
  call m clear_errorlevel_silently
rem qq-1
)

if "%cbf_parameter%" == "" (
  echo.
  echo * No parameter was passed.
  call start "my title" "%cbf_application%"
  exit/b
)

echo * Run application in the most common way.

start "my title" "%cbf_application%" "%cbf_parameter%"

exit/b



:_ (!rfsp) (mov-9)