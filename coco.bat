:_

@echo off



:_

set filep=* Run Code Compare with aliases or filenames.



:_

set fp=* Route callers.

if "%~1" == "" goto compare_j_files

if "%~1" == "/?" goto help

if "%~3" == "-f" goto use_filenames_not_aliases

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameters 1 and 2: Either 2 filenames in the current folder or 2 file ^
aliases. If left blank, aliases j1 and j2 are used by default.

echo.
echo %parameter_1%

set parameter_3=Parameter 3: If -f is specified, filenames only are used. If left ^
blank, aliases only are used.

echo.
echo %parameter_3%

exit/b



:_

:use_filenames_not_aliases

set fp=* Use filenames and not aliases.

rem lu: Jan-30-2019

echo.
echo %fp%

call an coco

"%cbf_application%" "%~1" "%~2"

exit/b



:_

:compare_j_files

set fp=* Use default behavior, viz. compare j files.

rem lu: Nov-7-2019

echo.
echo %fp%

call %0 j1 j2

exit/b



:_

:main_function

echo.
echo %filep%

call fn %1

if %errorlevel% gtr 0 (
  call m clear_errorlevel_silently 
  exit/b
)

set file_1=%cbf_fn%

call fn %2

if %errorlevel% gtr 0 (
  call m clear_errorlevel_silently 
  exit/b
)

set file_2=%cbf_fn%

call an coco

if %errorlevel% gtr 0 (
  exit/b
)

start  "Code Compare" "%cbf_application%" "%file_1%" "%file_2%"

exit/b



:_ (!rfsp) (mov-6)
