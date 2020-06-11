:_

@echo off



:_

set filep=* Run application.

rem echo.
rem echo %filep% Jun-9-2020_3_22_PM



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if not "%~1" == "" call n %~1

if not "%~2" == "" call n %~2

goto main_function



:_

:help

set fp=* Run application with or without a parameter.

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1] [Parameter 2]

echo.
echo Parameter 1 (Optional): Fully qualified application name, not a nickname.

echo.          
echo Parameter 2 (Optional): Fully qualified parameter name, not a nickname.

echo.
echo Notes: If no parameters are passed, the currently set CBF_Application and CBF_Parameter are used.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:microsoft_edge_edge_case

set fp=* Use special syntax for Microsoft Edge.

if "%cbf_parameter%" == "" (
  call start "my title" "%cbf_application%:"
  exit/b
)

call start "my title" "%cbf_application%:""%cbf_parameter%"

set cbf_application=

exit/b



:_

:run_application_in_raw_format

set fp=* CBF_Application contains a double dash. Run it raw.

echo %fp%

rem This also works so why is this function here?
rem start "my title" "%cbf_application%" 

"%cbf_application%"

exit/b



:_

:main_function

set fp=* Run application - main function.

if "%cbf_application%" == "microsoft-edge" goto microsoft_edge_edge_case

rem echo Nov-27-2019 4:49 PM

echo %cbf_application% | C:\Windows\System32\find.exe /i "--">nul

if %errorlevel% == 0 (
  echo.
  goto run_application_in_raw_format
) else (
  call m clear_errorlevel_silently
)

if "%cbf_parameter%" == "" (
  echo.
  echo * Run application with no parameter. Jun-9-2020_3_20_PM
  call start "my title" "%cbf_application%"
  exit/b
)

rem echo.
rem echo * Run application with parameter. Jun-9-2020_3_17_PM

start "my title" "%cbf_application%" "%cbf_parameter%"

exit/b



:_ (!rfsp) (mov-9)
