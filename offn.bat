:_

@echo off



:_

set filep=* Open folder where only the filename is known.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename alias of your target destination.

echo.
echo %parameter_1%

exit/b



:_

:validate_user_input

rem lu: Sep-19-2019

if "%~1" == "" (
  echo.
  echo * Missing input: The filename alias of your target destination is required.
  exit/b
)



:_

:main_function

rem lu: Sep-19-2019

call tdfn %1
call of

exit/b



:_ (!rfsp) (mov-7)