:_

@echo off



:_

set filep=* Surf the internet.



:_

set fp=* Route callers.

if "%~1" == "" goto use_current_url

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1: URL Nickname. If blank, surf to the current CBF_URL.

rem sf -b (switch browser) -g (use cbf_google_url) -j (use cbf_je)

echo.
echo Parameter 2 (Optional): Browser (Application Nickname), which is not necessary if you wish to use the non-default browser.

echo.
echo Pit of Success Strategy: If cb_url is not found, the algorithm will look for cbf_conf.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input



::_

:validate_url

call un %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. Oct-17-2019 3:51 PM.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_url%" == "" (
  echo.
  echo * The CBF_URL value is empty, so see check if cbf_conf is assigned.
  if "%cbf_conf%" == "" (
    echo.
    echo * Boththe cbf_url and conf values are empty.
    exit/b
  ) else (
    echo.
    echo Using cbf_conf.
    set cbf_parameter=%cbf_conf%
  )
) else (
  set cbf_parameter=%cbf_url%
)

goto set_browser



:_

:use_current_url

set fp=* Use current CBF_URL. (Apr-24-2020_2_11_PM)

rem echo.
rem echo %fp%

set cbf_parameter=%cbf_url%



:_

:set_browser

set fp=* Set browser.

if not "%~2" == "" goto override_default_browser

if not "%cbf_specific_browser%" == "" goto use_specific_browser

set cbf_application=%cbf_default_browser%

goto main_function



:_

:override_default_browser

set fp=* Override default browser.

echo.
echo %fp%

call an %2

if %errorlevel% gtr 0 exit/b

goto main_function



:_

:use_specific_browser

set fp=* Use specific browser.

echo.
echo %fp%

set cbf_application=%cbf_specific_browser%



:_

:main_function

set fp=* Surf the internet.

rem lu: Jan-31-2018

call r

rem Putting this line here makes debugging a little difficult because it is hard to see
rem that the variable is set at all. Mar-4-2019
set cbf_specific_browser=

exit/b



:_ (!rfsp) (mov-9)
