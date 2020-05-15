:_

@echo off



:_

set filep=* Edit file in Multi-edit.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" exit

if "%~1" == "/?" sfn /?

goto validate_input



:_

:help

The help for this file is in sfn.bat. 

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set cbf_fn=

call sfn %*

if %errorlevel% gtr 0 exit/b

if "%cbf_fn%" == "" (
  echo.
  echo Error: cbf_fn is undefined for "%1".
  exit/b
)

call an me>nul

if %errorlevel% gtr 0 exit/b



:_

:main_function

set cbf_parameter=%cbf_fn%

call r

exit/b



:_ (!rfsp) (mov-7)
