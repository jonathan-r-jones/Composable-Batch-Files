:_

@echo off



:_

set filep=* Surf the internet.



:_

set fp=* Route callers.

if "%~1" == "" goto help

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

echo.
echo Parameters 2-4 (Optional): If parameter 2 does not begin with a dash, then it ^
is a dcv. If parameter 2 or 3 begins equals "-b", then the following parameter is ^
the Browser application alias you wish to use. If "-b" is not used, the default ^
browser will be used.

echo.
echo Pit of Success Strategy: If cb_url is not found, the algorithm will look for cbf_conf
echo or cbf_gh.

echo.
echo Noteworthy: %0 now supports DCV, while still supporting browser overriding.

echo.
echo Examples:

echo.
echo %0 gas

echo.
echo %0 wsj

echo.
echo %0 gas -b ie

echo.
echo %0 fq -b ie

echo.
echo %0 tj

echo.
echo %0 tj conf

echo.
echo %0 rp conf -b ie

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

call m reset

set fp=* Evaluate the parameter list.

call n %1

if %errorlevel% gtr 0 exit/b

if "%~2" == "" (
  call :use_default_browser
  call :set_precedence
  exit/b
)

if "%~3" == "" (
  call :use_default_browser
  call :compose_dcv %1 %2
  exit/b
)

if "%~2" == "-b" (
  call :override_default_browser %3
  call :set_precedence %1 %2
  exit/b
)

if "%~3" == "-b" (
  call :override_default_browser %4
  call :compose_dcv %1 %2
  exit/b
)

echo.
echo * Error: Control flow should not reach here.

exit/b



:_

:use_default_browser

set fp=* Use default browser.

rem echo.
rem echo %fp%

set cbf_application=%cbf_default_browser%

exit/b



:_

:override_default_browser

set fp=* Override default browser.

echo.
echo %fp%

call an %1

if %errorlevel% gtr 0 exit/b

exit/b



:_

:compose_dcv

set fp=* Compose DCV.

call m compose_variable %2

if "%cbf_expanded_variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf_%2" for the alias "%1". - Oct-7-2020_12_50_PM
  exit/b
)

set cbf_parameter=%cbf_expanded_variable%

call r

exit/b



:_

:use_specific_browser

set fp=* Use specific browser.

echo.
echo %fp%

set cbf_application=%cbf_specific_browser%

goto set_precedence



:_

:set_precedence

set fp=* Set precedence.

rem echo.
rem echo %fp%

set fp=* This is a precedence hierarchy.

if "%cbf_parameter%" == "" (
  set cbf_parameter=%cbf_url%
)

if "%cbf_parameter%" == "" (
  set cbf_parameter=%cbf_conf%
)

if "%cbf_parameter%" == "" (
  set cbf_parameter=%cbf_gh%
)

if "%cbf_parameter%" == "" (
  set cbf_parameter=%cbf_je%
)




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
