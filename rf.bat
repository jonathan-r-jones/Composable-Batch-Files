:_

@echo off



:_

set filep=* Remove folder of the specified CBF path nickname. WARNING: Powerful batch file. Exercise caution.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.

if not "%~1" == "" call pn %1

if "%cbf_path%" == "" (
  echo.
  echo Input Error: There is no cbf_path defined for '%~1'. 
  goto exitb
)

rd /q /s %cbf_path%

rem (!rfsp) (mov-2)

goto exitb



:_

:h

:help

echo Filename stands for: Remove folder.

echo.
echo Last Updated: Apr-9-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1: Path nickname.

echo.
echo Example: "rf fgt" would remove the For-Git-Testing folder at the current "%%CBF_Path%%" location.

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