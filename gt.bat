:_

@echo off



:_

set filep=* Surf to GitHub websites.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" (
  call sf rf_ma
  exit/b
)

if "%~1" == "/?" goto help

goto code_execution_area



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1: URL Nickname. If blank, surf to the current CBF_URL.

rem sf -b (switch browser) -g (use cbf_google_url) -j (use cbf_jenkins_url)

echo.
echo Parameter 2 (Optional): Browser (Application Nickname), which is not necessary if you wish to use the non-default browser.

exit/b



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_

set fp=* Set URL.

set cbf_github_url=
set cbf_url=

call n %1

if %errorlevel% == 1 (
  rem This may never be called.
  echo.
  echo * Error: There was an error after the dictionary call was made. 
  exit/b
)

if "%cbf_github_url%" == "" (
  echo. 
  echo * GitHub url not found, so defaulting to cbf_url.
  set cbf_parameter=%cbf_url%
) else (
  set cbf_parameter=%cbf_github_url%
)

goto set_browser



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

goto main_function



:_

:use_specific_browser

set fp=* Use specific browser.

echo.
echo %fp%

set cbf_application=%cbf_specific_browser%



:_

:main_function

rem lu: Jan-31-2018

call r

rem Putting this line here makes debugging a little difficult because it is hard to see
rem that the variable is set at all. Mar-4-2019
set cbf_specific_browser=

exit/b



:_ (!rfsp) (mov-9)
