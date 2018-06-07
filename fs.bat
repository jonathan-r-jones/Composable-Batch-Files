:_

@echo off



:_

set filep=* Filenames search.



:_

set fp=* Add some whitespace.

echo.



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

echo Searches the current folder and all its subfolders for filenames match the given search criterion, then pipes the results into a temporary file.

echo.
echo Filename stands for: Filenames search.

echo.
echo Last Updated: Jun-7-2018

echo.
echo Usage: %0 [parameters]

echo.
echo Parameter 1: Search criterion. Double quotes are necessary only if spaces are used.

echo.
echo Parameter 2 (Optional): File type to search. For example, "txt" (without quotes) would search only txt type files.

exit /b



:_

:main_function

echo %filep% Search for filenames containing "%~1".
echo %filep% Search for filenames containing "%~1".>%temp%\search_results_fs.txt
echo.>>%temp%\search_results_cs.txt
echo   Current folder: %cd%>>%temp%\search_results_fs.txt

echo ************************************************************************>>%temp%\search_results_fs.txt
echo.>>%temp%\search_results_fs.txt

rem Files are sorted newest files first.
dir /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

rem (!rfsp) (mov-2)

if "%cbf_default_text_editor%" == "" (
  call m sde no
)

if %errorlevel% == 0 (
  start "Test Title" "%cbf_default_text_editor%" "%temp%\search_results_fs.txt"
)

exit /b



:_ 