:_

@echo off



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto code_execution_area



:_

rem Metadata

rem File Purpose: This file is used for surfing the internet.

rem Parameter 1: URL Nickname 

rem Parameter 2: Browser, which is not the default.



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



:_

:help

set fp=* This file is used to 

rem Last Updated (lu): Jan-23-2018

echo %fp%

echo.
echo Usage: %0 [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo          
echo.          

goto exitb



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem (!rfcea, !rfsp) (mov4) **************************************



:_

set fp=* Set default browser.

call nn kr



:_

set fp=* Set browser.

if not "%2" == "" cls
if not "%2" == "" call nn %2

set cbf_application=%cbf_nickname%



:_

set fp=* Set URL.

call nn %1

set cbf_parameter=%cbf_nickname%



:_

set fp=* Surf.

rem lu: Jan-24-2018

call rawp

goto exitb



:_ (!rfsp) (mov-9)