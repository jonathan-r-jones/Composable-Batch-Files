:_

@echo off



:_

set filep=* Build relative path.

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

rem lu: Aug-20-2019

call n %1

set cbf_built_path=%cbf_path%

call n %2

set cbf_built_path=%cbf_built_path%\%cbf_path%

rem if exist %cbf_built_path% echo * Path exists.

if not exist %cbf_built_path% (
  echo.
  echo * Built path not found: "%cbf_built_path%".
  exit/b 1
)

set cbf_path=%cbf_built_path%

exit/b



:_ (!rfsp) (mov-7)