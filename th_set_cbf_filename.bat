:_

@echo off



:_

set filep=* Set cbf_filename test harness.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

set cbf_filename=

echo * Test Results>%temp%\test_results.txt

goto %1



:_

:help

rem lu: Nov-20-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Test to run, e.g. test_1.

echo.
echo %parameter_1%

exit/b



:_

:test_1

set fp=* call set_cbf_parameter j1 (where j1 doesn't exist): Expected result: error code: 1

rem echo.
rem echo %fp%

call defn j1

call set_cbf_filename j1

if %errorlevel% gtr 0 (
  echo.
  echo * %1: Pass.
  echo * %1: Pass.>>%temp%\test_results.txt
) else (
  echo.
  echo * %1: Fail.
  echo * %1: Fail.>>%temp%\test_results.txt
)

goto end_function



:_

:test_2

set fp=* call set_cbf_parameter j1 (where j1 exists): Expected result: error code: 0

rem echo.
rem echo %fp%

call n j1

echo test_text_for_j1>%cbf_filename%

call set_cbf_filename j1

if %errorlevel% gtr 0 (
  echo.
  echo * %1: Fail.
  echo * %1: Fail.>>%temp%\test_results.txt
) else (
  echo.
  echo * %1: Pass.>>%temp%\test_results.txt
)

goto end_function



:_

:run_all_tests

set fp=* %1.

rem echo.
rem echo %fp%

call %0 test_1
call %0 test_2


rem qq-1

goto end_function



:_

:end_function

echo.
echo * cbf_filename: %cbf_filename%

exit/b



:_ (!rfsp) (mov-7)