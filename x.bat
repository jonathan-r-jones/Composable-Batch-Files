:_

@echo off



:_

set filep=* Execute the nickname based on what type of nickname it is.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Main function.

set cbf_application=

set cbf_application_installation_path=

set cbf_filename=

set cbf_parameter=

set cbf_path=

set cbf_url=

call n %1

rem qq-1
if not "%cbf_filename%" == "" (
  call k %1
  goto exitb
)

if not "%cbf_url%" == "" (
  call sf %1
  goto exitb
)

goto exitb



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: eXecute nickname.

echo.
echo Last Updated: Mar-1-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Nickname to execute.

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