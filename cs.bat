:_

@echo off



:_

set filename_stands_for=* File contents search.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

set filep=File purpose: Search the current folder and its subfolders for filenames 
set filep=%filep% whose contents match the user-provided search criterion, then
set filep=%filep% pipe the results into a temporary file.

echo.
echo %filep%

echo.
echo Last Updated: Jun-7-2018

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Search criterion. Double quotes are necessary
set parameter_1=%parameter_1% only if spaces are used.

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): File type to search. For example, "*.txt" (without quotes)
set parameter_2=%parameter_2% would search only txt type files. If left blank, then
set parameter_2=%parameter_2% all file types will be searched.

echo.
echo %parameter_2%

exit/b



:_

:main_function

set fp=* Main function.

echo.
echo %filename_stands_for%
echo %filename_stands_for%>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

echo.
echo Search Criterion: %1
echo Search Criterion: %1>>%temp%\search_results_cs.txt

if "%~2" == "" (
  set file_type=*.*
) else (
  set file_type=%2
)

echo.
echo        File Type: %file_type%
echo        File Type: %file_type%>>%temp%\search_results_cs.txt

echo   Current folder: %cd%>>%temp%\search_results_cs.txt

echo ************************************************************************>>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

rem "findstr" seems to be more powerful the "find".

findstr /i /n /s /c:"%~1" %file_type%>>%temp%\search_results_cs.txt

rem (!rfsp) (mov-2)

if %errorlevel% == 0 (
  start "Test Title" "%cbf_default_text_editor%" "%temp%\search_results_cs.txt"
) else (
  echo.
  echo * No results found.
)

exit/b



:_