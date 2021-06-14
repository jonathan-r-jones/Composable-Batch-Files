:_

@echo off



:_

set filep=* Favorite child folder batch file.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

rem qq
exit/b



:_

:main_function

rem lu: May-14-2019

set cbf-fc_path=

call n %1

if "%cbf-fc_path%" == "" (
  echo.
  echo * Error: CBF FC Path is not set.
  exit/b
)

cd /d "%cbf-fc_path%"

exit/b



:_ (!rfsp) (mov-7)
