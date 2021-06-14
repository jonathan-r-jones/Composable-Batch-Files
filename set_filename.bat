:_

@echo off



:_

set filep=* Set cbf-fn based on an evaluation.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto evaluate_input



:_

:help

rem lu: Nov-19-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename evaluation parameter.

echo.
echo %parameter_1%

exit/b



:_

:evaluate_input

echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto set_filename_to_percent_1
  exit/b
)

if exist %1 (
  goto set_filename_to_percent_1
)

set cbf-fn=%share-zone%\%~1.bat

if exist %cbf-fn% (
  echo.
  echo * Set filename equal to Share-zone %1.bat file.
  exit/b 0
)

set cbf-fn=%composable_batch_files%\%~1.bat

if exist %cbf-fn% (
  echo.
  echo * Set filename equal to CBF %1.bat file.
  exit/b 0
)

call fn %1

if %errorlevel% gtr 0 (
  exit/b 1
)



:_

:set_filename_to_percent_1

set fp=* Set filename equal to "%1".

echo.
echo %fp%

set cbf-fn=%1

exit/b 0



:_ (!rfsp) (mov-7)