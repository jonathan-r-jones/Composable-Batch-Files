:_

@echo off



:_

set filep=* Open a Visual Studio solution.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* If it is provided, go to percent 1.

if not "%~1" == "" (
  call td %~1
)

goto main_function



:_

:h

:help

echo.
echo Filename stands for: Run SoLutioN.

echo.
echo Last Updated: May-31-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current folder is used.

exit/b



:_

:main_function

rem (!rfsp) (mov2)

call m sln

exit/b



:_