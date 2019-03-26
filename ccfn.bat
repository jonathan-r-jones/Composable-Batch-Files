:_

@echo off



:_

set filename_stands_for=*  Run Code Compare with aliases or filenames.



:_

set fp=* Route help callers.

if "%~1" == "" goto just_run_code_compare

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

if "%~3" == "-l" goto use_filenames_not_aliases

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Jan-30-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 and 2: A filename in the current folder or a file alias. If ^
left blank, Code Compare is simply run.   

echo.
echo %parameter_1%

set parameter_3=Parameter 3: If -l is specified filenames only are used. If left ^
blank, aliases only are used.

echo.
echo %parameter_3%

exit/b



:_

:main_function

echo.
echo %filename_stands_for%

call n %1

if "%cbf_filename%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_filename defined for '%~1'. 
  exit/b 1
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The file "%cbf_filename%" does not exist.
  exit/b 1
)

set file_1=%cbf_filename%

call n %2

if "%cbf_filename%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_filename defined for '%~1'. 
  exit/b 1
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The file "%cbf_filename%" does not exist.
  exit/b 1
)

set file_2=%cbf_filename%

call an coco

"%cbf_application%" "%file_1%" "%file_2%"

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

:just_run_code_compare

set fp=* Just run Code Compare.

rem lu: Jan-31-2019

echo.
echo %fp%

call ea coco

exit/b



:_ (!rfsp) (mov-6)