:_

@echo off



:_

set filep=* Show the state of the CBF environment variables.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

echo CBF_Application: %cbf_application%

echo.
echo CBF_Application_Installation_Path: %cbf_application_installation_path%

echo.
echo CBF_Filename: %cbf_filename%

echo.
echo CBF_Parameter: %cbf_parameter%

echo.
echo CBF_Path: %cbf_path%

echo.
echo CBF_URL: %cbf_url%

goto exitb



:_ (!rfsp) (mov-9)

:h

:help

echo Filename stands for: Composed Batch Files
echo.

echo Last Updated (lu): Feb-6-2018
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

rem ******* End Exit Functions.



:_