:_

@echo off



:_

set filep=* Ad hoc file contents search for current folder and subfolders.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Search criterion. If spaces are used, double quotes are necessary.

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): File type to search. For example, "txt" (without quotes)
set parameter_2=%parameter_2% would search only txt type files. If left blank, then
set parameter_2=%parameter_2% the default, which is batch files (*.bat), will be searched.
set parameter_2=%parameter_2% You can add up to 5 file types to search.

echo.
echo %parameter_2%

rem Pipe the results into a temporary file.

exit/b



:_

:main_function

echo %filep%>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

echo.
echo Search Criterion: %1
echo Search Criterion: %1>>%temp%\search_results_cs.txt

if "%~2" == "" (
  set file_type=*.bat
) else (
  set file_type=*.%2
)

if not "%~3" == "" (
  set file_type=%file_type% *.%3
)

if not "%~4" == "" (
  set file_type=%file_type% *.%4
)

if not "%~5" == "" (
  set file_type=%file_type% *.%5
)

if not "%~6" == "" (
  set file_type=%file_type% *.%6
)

rem echo.
rem echo file_type: %file_type%
rem exit/b

echo.
echo        File Type: %file_type%
echo        File Type: %file_type%>>%temp%\search_results_cs.txt

echo   Current folder: %cd%>>%temp%\search_results_cs.txt

echo ************************************************************************>>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

rem "findstr" seems to be more powerful the "find".

findstr /i /n /o /off /s /c:"%~1" %file_type%>>%temp%\search_results_cs.txt

rem (!rfsp) (mov-2)

call an me

if %errorlevel% == 0 (
  start "Test Title" "%cbf_application%" "%temp%\search_results_cs.txt"
) else (
  echo.
  echo * No results found.
)

exit/b



:_