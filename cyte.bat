:_

@echo off



:_

set filep=* Copy te.bat to a new batch.

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

exit/b



:_

:main_function

rem lu: May-10-2019

call td cbf

if "%~1" == "" (
  echo.
  echo * Percent 1 is a required field.
  exit/b
)

set new_file=%1.bat

copy te.bat %new_file%

call e %new_file%

exit/b



:_ (!rfsp) (mov-7)