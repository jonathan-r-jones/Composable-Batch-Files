:_

@echo off



:_

set filep=* Surf the internet.



:_

set fp=* Route callers.

if "%~1" == "" goto use_current_cbf_url

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto code_execution_area



:_

:h

:help

echo.
echo %filep%

echo.
echo Last Updated: May-30-2018

echo.
echo Filename stands for: SurF.

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1: URL Nickname. If blank, surf to the current CBF_URL.

echo.
echo Parameter 2 (Optional): Browser (Application Nickname), which is not necessary if you wish to use the non-default browser.

exit/b



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_

set fp=* Set URL.

set cbf_application=
set cbf_url=

call un %1

if "%cbf_url%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_url defined for '%~1'. 
  rem echo Errorlevel: %errorlevel%.
  call m clear_errorlevel_silently
  exit/b
)

if %errorlevel% == 1 (
  rem This may never be called.
  echo.
  echo * Error: There was an error after the dictionary call was made. 
  exit/b
)

set cbf_parameter=%cbf_url%

goto set_browser



:_

:use_current_cbf_url

set fp=* Use current CBF_URL.

echo.
echo %fp%

set cbf_parameter=%cbf_url%



:_

:set_browser

set fp=* Set browser.

if not "%cbf_application%" == "" goto main_function

if not "%~2" == "" goto override_default_browser

set cbf_application=%cbf_default_browser%

goto main_function



:_

:override_default_browser

set fp=* Override default browser.

echo.
echo %fp%

call an %2



:_

:main_function

echo.
set fp=* Surf the internet.

echo %fp%

rem lu: Jan-31-2018

call r

exit/b



:_ (!rfsp) (mov-9)