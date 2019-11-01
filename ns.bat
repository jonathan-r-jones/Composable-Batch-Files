:_

@echo off



:_

set filep=* Nslookup wrapper.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~2" == "-ag" goto %1

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

rem lu: Oct-31-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: URL alias.

set parameter_2=Parameter 2 (Optional): If "-ag" is used, an aggregate, not atomic function will be run.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:news

set fp=* Nslookup IPV4 versus IPV6.

rem lu: Oct-3-2018

echo.
echo %fp%
echo.

nslookup nytimes.com

nslookup cnn.com

nslookup washingtonpost.com

rem Eric said that I need to find the setting that allows me to set my IP Address to IPV4.
rem We had this problem in Stuttgart on Oct-3-2018.

exit/b



:_

:work

set fp=* Look up work URLs.

echo.
echo %fp%

echo.
call :validate_user_input dev

call :validate_user_input fqt

call :validate_user_input prod

call :validate_user_input stag

exit/b



:_

:validate_user_input

call un %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. Oct-31-2019 4:12 PM
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_url%" == "" (
  echo.
  echo * Error: Cbf_url is unassigned for "%1".
  exit/b
)



:_

:main_function

set cbf_url=%cbf_url:https://=%

echo.
nslookup %cbf_url%

exit/b



:_ (!rfsp) (mov-7)