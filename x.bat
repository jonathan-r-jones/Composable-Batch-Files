:_

@echo off



:_

set filep=* Execute the nickname based on what type of nickname it is.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.

set cbf_application=

set cbf_application_installation_path=

set cbf_filename=

set cbf_parameter=

set cbf_path=

set cbf_url=

call n %1

if not "%cbf_filename%" == "" (
  call k %1
  m exitb
)

if not "%cbf_path%" == "" (
  call td %1
  m exitb
)

if not "%cbf_url%" == "" (
  call sf %1
  m exitb
)

m exitb



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

m exitb



:_