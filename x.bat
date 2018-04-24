:_

@echo off



:_

set filep=* Filename-centric way to execute a file with optional application parameter.
rem qq-1

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

set cbf_App_Location=

set cbf_filename=

set cbf_parameter=

set cbf_path=

set cbf_url=

call n %1

if not "%cbf_filename%" == "" (
  r %1
rem   call k %1
rem qq-1
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