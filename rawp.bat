:_

@echo off



:_

set fp=* Route callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto code_execution_area



rem Metadata

rem File Purpose: Run application with parameter

rem Parameter 1:

rem Parameter 2:



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



::_

rem **************************** End Exit Functions.



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

rem echo.
rem echo %fp%

echo.

rem (!rfcea, !rfsp) (mov4) **************************************



:_

set fp=* Check status for parameters.



:_

set fp=* Main function.

call start "my title" "%cbf_application%" "%cbf_parameter%"

rem qq-1
goto exitb



:_ (!rfsp) (mov-9)