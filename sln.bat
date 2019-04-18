:_

@echo off



:_

set filep=* Open a Visual Studio solution.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto preprocessor


:_

:help

echo.
echo File purpose: %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current folder is used.

exit/b



:_

:preprocessor

set fp=* Preprocessor. If it is provided, go to percent 1.

call m clear_errorlevel_silently

if not "%~1" == "" (
  call td %~1 %2

  if not %errorlevel% == 0 (
    echo.
    echo * Inside of the if statement, error level is %errorlevel%.
    rem No error message needed as "td" will report the error.
    exit/b
  )
)



:_

:main_function

set fp=* Run the Visual Studio solution in the current folder.

rem (!rfsp) (mov2)

echo.
echo %fp%

dir /b *.sln>%tmp%\filename.txt

if %errorlevel% == 1 (
  echo.
  echo * No solution file was found in the current folder.
  ver>nul
  exit/b
)

set /p filename=<%tmp%\filename.txt

start "%programfiles%\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe" "%filename%"

exit/b



:_