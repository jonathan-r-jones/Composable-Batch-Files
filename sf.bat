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
echo Usage: %0

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

call un %1

set cbf_parameter=%cbf_url%

goto set_default_browser



:_

:use_current_cbf_url

set fp=* Use current CBF_URL.

echo.
echo %fp%

set cbf_parameter=%cbf_url%



:_

:set_default_browser

set fp=* Set default browser.

if not "%~2" == "" goto override_default_browser

call an kr

goto surf



:_

:override_default_browser

set fp=* Override default browser.

echo.
echo %fp%
call an %2



:_

:surf

set fp=* Surf.

rem lu: Jan-31-2018

call r

exit/b



:_ (!rfsp) (mov-9)