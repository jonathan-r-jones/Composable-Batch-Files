:_

@echo off



:_

set filep=* Surf to jenkins url of an alias.

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

rem lu: 

set cbf_jenkins_url=

call n %1

if "%cbf_jenkins_url%" == "" (
  echo.
  echo * Error: CBF Jenkins url is not set.
  exit/b
)

set cbf_url=%cbf_jenkins_url%

call sf

exit/b



:_ (!rfsp) (mov-7)