:_

@echo off



:_

set fp=* Run application . . .

echo.
echo %fp%



:_

set fp=* Route callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help

if not "%3" == "" goto use_nondefault_exection

if not "%1" == "" call an %1

if not "%2" == "" call fn %2

goto code_execution_area



:_

:help

set fp=* Run applications with or without a parameter.

echo This file's purpose (fp) is to: %fp%
echo.

echo The filename stands for: Run application.
echo.

echo Last Updated (lu): Jan-31-2018
echo.

echo Usage: %0 [Parameter 1] [Parameter 2]
echo.

echo Parameter 1 (Optional): Application Nickname.

echo.          
echo Parameter 2 (Optional): Parameter nickname. The default is a fn: Filename nickname. 

echo.          
echo Parameter 3 (Optional): Parameter type. 
echo                         
echo                                   Types are:
echo                                          un:  URL nickname.
echo                                          pn:  Path nickname

goto exitb



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

rem ******* End Exit Functions.



:_

:use_nondefault_exection

set fp=* Use nondefault execution area.



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem (!rfcea, !rfsp) (mov4) **************************************



:_

set fp=* Main function.

rem echo %fp%

call start "my title" "%cbf_application%" "%cbf_parameter%"

goto exitb



:_ (!rfsp) (mov-9)