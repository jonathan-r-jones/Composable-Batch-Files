:_

@echo off



:_

set filep=* Surf the internet using custom URL.



:_

set fp=* Route callers.

if "%~1" == "" goto use_current_cbf-url

if "%~1" == "/?" goto help

goto code_execution_area



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1: URL, not a nickname.

echo.
echo Parameter 2 (Optional): Browser (Application Nickname), which is not necessary if you wish to use the non-default browser.

exit/b



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_

set fp=* Set URL.

set cbf-parameter=%cbf-url%

goto set_browser



:_

:use_current_cbf-url

set fp=* Use current cbf-URL.

rem echo.
rem echo %fp%

set cbf-parameter=%cbf-url%



:_

:set_browser

set fp=* Set browser.

if not "%~2" == "" goto override_default_browser

set cbf-application=%cbf-default-browser%

goto main_function



:_

:override_default_browser

set fp=* Override default browser.

echo.
echo %fp%
call an %2



:_

:main_function

set fp=* Surf the internet using custom URL.

echo.
echo %fp%

call r

exit/b



:_ (!rfsp) (mov-9)