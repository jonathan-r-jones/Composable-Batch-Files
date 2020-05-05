:_

@echo off



:_

set filep=* Ad hoc file contents search for current folder and subfolders.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_user_input



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
set parameter_2=%parameter_2% You can add up to 8 file types to search. If -g is used,
set parameter_2=%parameter_2% the group of files associated with that alias will be used.

echo.
echo %parameter_2%

set parameter_3=Parameter 3: Alias to use for the group of file types to search.

echo.
echo %parameter_3%

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

echo.
echo td cs
echo %0 "test source" cs   

echo.
echo td ma
echo %0 "kiosk session length" -g ma

exit/b

(!rfsp) (mov-5)



:_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:validate_user_input

if "%~2" == "" (
  set cbf_file_type=*.bat
) else if "%~2" == "-g" (
  call n %3
) else (
  set cbf_file_type=*.%2
)

goto main_function



:_

set fp=* Turn on debugging information.

rem lu: May-1-2020

echo.
echo %fp%

echo.
echo Percent 1: %1

echo.
echo Percent 2: %2

echo.
echo File type: %cbf_file_type%



:_

:main_function

echo.>%temp%\search_results_cs.txt
echo * File Contents Search>>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

echo.
echo Search Criterion: %1
echo Search Criterion: %1>>%temp%\search_results_cs.txt

echo.
echo     File Type(s): %cbf_file_type%
echo     File Type(s): %cbf_file_type%>>%temp%\search_results_cs.txt

echo   Current folder: %cd%>>%temp%\search_results_cs.txt

echo ---------------------------------------------------------------------------------------------- >>%temp%\search_results_cs.txt
echo.>>%temp%\search_results_cs.txt

rem "findstr" seems to be more powerful the "find".

@echo on
findstr /i /n /o /off /s /c:%1 %cbf_file_type%>>%temp%\search_results_cs.txt

@echo off
rem (!rfsp) (mov-3)

if %errorlevel% gtr 0 (
  echo.
  echo * No results found. 
  exit/b
)

call an me>nul

start "Test Title" "%cbf_application%" "%temp%\search_results_cs.txt"

exit/b



:_
