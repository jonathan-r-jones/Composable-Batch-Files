:_

@echo off



:_

set filep=* Execute CBF variables in a double-click fashion.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~2" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: CBF extension, e.g. cbf_png, where where png is the passed in parameter.

set parameter_2=Parameter 2: Alias to search.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Custom.

exit/b



:_

:main_function

echo.
echo %filep%

call m clear_errorlevel_silently>nul

call m rese

call n %2

if %errorlevel% gtr 0 (
  exit/b
)

call m compose_variable %1

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf_%1" for the alias "%2".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf_expanded_variable%

if exist "%cbf_expanded_variable%" (
  set cbf_filename=%cbf_expanded_variable%
  call m double_click
  call r
)

exit/b



:_ (!rfsp) (mov-7)