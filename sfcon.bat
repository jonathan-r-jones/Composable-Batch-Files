:_

@echo off



:_

set filep=* Surf to the Confluence url of an alias.



:_

set fp=* Route callers.

if "%~1" == "" (
  call sf ht
  exit/b
)

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Confluence URL alias.

echo.
echo %parameter_1%

exit/b



:_

:validate_input

set cbf_confluence_url=

call n %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias not found. (skw Oct-18-2019 1:54 PM)
  call m clear_errorlevel_silently 
)

if "%cbf_confluence_url%" == "" (
  echo.
  echo * CBF Confluence url is not set, so use cbf_url.
  goto use_cbf_url
)

goto main_function



:_

:use_cbf_url

set cbf_confluence_url=%cbf_url%

if "%cbf_url%" == "" (
  echo.
  echo * Error: Cbf_url is not defined.
  exit/b
)



:_

:main_function

echo.
echo * Main function of %0. Nov-15-2019 12:55 PM

set cbf_url=%cbf_confluence_url%

call sf
echo.



:_ (!rfsp) (mov-7)