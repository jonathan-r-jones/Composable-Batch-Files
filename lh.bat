:_

@echo off



:_

set filep=* Surf localhost.



:_

set fp=* Route callers.

if "%~1" == "" goto use_current_cbf_lh

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto code_execution_area



:_

:h

:help

echo.
echo %filep%

echo.
echo Last Updated: Jan-25-2019

echo.
echo Filename stands for: SurF localhost.

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1: Alias that point to a cbf_port_number.

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

set cbf_url=http://localhost:%cbf_port_number%

set cbf_parameter=%cbf_url%

goto set_browser



:_

:set_browser

set fp=* Set browser.

if not "%cbf_application%" == "" goto main_function

if not "%~2" == "" goto override_default_browser

set cbf_application=%cbf_default_browser%

goto main_function



:_

:use_current_cbf_lh

set fp=* Use current CBF_URL.

echo.
echo %fp%

set cbf_parameter=%cbf_lh%



:_

:override_default_browser

set fp=* Override default browser.

echo.
echo %fp%

call an %2



:_

:main_function

echo.
set fp=* Surf localhost.

echo %fp%

rem lu: Jan-25-2019

call r

exit/b



:_ (!rfsp) (mov-9)