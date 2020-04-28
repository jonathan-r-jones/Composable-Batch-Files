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

cls

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
set parameter_2=%parameter_2% You can add up to 8 file types to search.

echo.
echo %parameter_2%

rem Pipe the results into a temporary file.

echo.
echo Examples:

echo.
echo %0 source *.txt

echo.
echo td
echo %0 entangled

echo.
echo td csc
echo %0 "clean install" Jenkinsfile

echo.
echo td r
echo %0 mvn Jenkinsfile

echo.
echo td r
echo %0 mvn jf

echo.
echo td
echo %0 "entangled var"

echo.
echo td cs
echo %0 "test source" *.txt

exit/b

(!rfsp) (mov-5)



:_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:main_function

echo %filep%>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

echo.
echo Search Criterion: %1
echo Search Criterion: %1>>%temp%\search_results_cs.txt

echo.
echo Percent 1: %1

echo.
echo Percent 2: %2

if "%~2" == "" (
  set file_type=*.bat
) else (
  set file_type=%2
)

echo.
echo     File Type(s): %file_type%
echo     File Type(s): %file_type%>>%temp%\search_results_cs.txt

echo   Current folder: %cd%>>%temp%\search_results_cs.txt

echo ************************************************************************>>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

rem "findstr" seems to be more powerful the "find".

@echo on
findstr /i /n /o /off /s /c:"%1" "%file_type%">>%temp%\search_results_cs.txt
@echo off

if %errorlevel% gtr 0 (
  echo.
  echo * No results found. 
  exit/b
)

rem (!rfsp) (mov-2)

call an me>nul

start "Test Title" "%cbf_application%" "%temp%\search_results_cs.txt"

exit/b



:_
