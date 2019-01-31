:_

@echo off



:_

set filename_stands_for=* Code Compare batch file.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

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

set parameter_1=Parameter 1 and 2: Current folder filename or file alias.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: If -l is specified filenames only are used. If left blank, aliases are used.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

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

"c:\program files\devart\code compare\codecompare.exe" "%file_1%" "%file_2%"

exit/b



:_

:use_filenames_not_aliases

set fp=* Use filenames and not aliases.

rem lu: Jan-30-2019

echo.
echo %fp%

"c:\program files\devart\code compare\codecompare.exe" "%~1" "%~2"

exit/b



:_ (!rfsp) (mov-6)