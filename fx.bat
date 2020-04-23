:_

@echo off



:_

set filep=* Use dynamic CBF variables to execute a cbf variable in any application.



:_

set fp=* Route callers.

if "%~3" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

rem lu: Apr-2-2020

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: CBF extension, e.g. cbf_java, where where "java" is the passed in parameter.

set parameter_2=Parameter 2: Dynamically constructed cbf alias to search.

set parameter_3=Parameter 3: Alias of your chosen application.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo %parameter_3%

echo.
echo Batch file style: Custom.

echo.
echo Examples:

echo.
echo %0 java 1583 no

echo.
echo %0 ts 1583 ij

echo.
echo %0 html 1583 np

echo.
echo %0 filename ma sm

echo.
echo %0 csv 1583 ex

rem This would actually work if the function check for a "file's" existence, which a URL is not.
echo.
echo %0 gurl jj fx 

echo.
echo %0 conf rp kr

echo.
echo %0 yml csc me

echo.
echo %0 json csc me

echo.
echo %0 conf csc kr (same as using "conf csc")

echo.
echo %0 m2 csc of

echo.
echo %0 pom csc me

exit/b



:_

:main_function

call m clear_errorlevel_silently>nul

call m rese

call n %2

if %errorlevel% gtr 0 exit/b

call m compose_variable %1

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf_%1" for the alias "%2".
  exit/b
)

call an %3

if %errorlevel% gtr 0 (
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf_expanded_variable%

if not exist "%cbf_expanded_variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf_expanded_variable%" does not exist.
  rem exit/b
)

set cbf_parameter=%cbf_expanded_variable%

call r

exit/b



:_ (!rfsp) (mov-7)
