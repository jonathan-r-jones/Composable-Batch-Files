:_

@echo off



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto code_execution_area



:_

:help

set fp=Show the state of CBF environment variables.

echo This file purpose (fp) is to: %fp%
echo.

echo The filename stands for: Composed Batch Files
echo.

echo Last Updated (lu): Jan-24-2018
echo.

echo Usage: %0

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

rem **************************** End Exit Functions.



:_

:code_execution_area

set fp=* Code below here runs.



:_

:

set fp=* Show the state of the CBF environment variables.

rem lu: Jan-24-2018

echo %fp%

echo.
echo CBF_Application: %cbf_application%

echo.
echo CBF_Filename: %cbf_filename%

rem echo.
rem echo CBF_Nickname: %cbf_nickname%

echo.
echo CBF_Parameter: %cbf_parameter%

echo.
echo CBF_Path: %cbf_path%

echo.
echo CBF_URL: %cbf_url%

goto exitb



:_ (!rfsp) (mov-9)