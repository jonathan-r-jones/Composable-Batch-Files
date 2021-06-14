:_

@echo off



:_

set filep=* Search for filenames and folders in the current folder and all subfolders for the given search criterion. The results are piped into a temporary file.



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
echo Usage: %0 [parameters]

echo.
echo Parameter 1: Search criteria. Double quotes are necessary only if spaces are used.

echo.
echo Batch file style: Single Purpose

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

echo.
echo Search for filenames and folders containing "%~1".

echo.>%temp%\search_results_fs.txt
echo * Search for filenames containing "%~1".>>%temp%\search_results_fs.txt
echo.>>%temp%\search_results_cs.txt
echo   Current folder: %cd%>>%temp%\search_results_fs.txt

echo ------------------------------------------------------------------------------------------->>%temp%\search_results_fs.txt
echo.>>%temp%\search_results_fs.txt

rem Files are sorted newest files first.

rem Shows files and folders.
echo.
dir /a /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

if %Errorlevel% == 0 echo * Files found.

rem Folder only.
rem dir /a:d /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

rem 3 Files only.
rem dir /a-h /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt
rem dir /a-d /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt
rem dir /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

if %errorlevel% == 0 (
  start "Test Title" "%cbf-default-text-editor%" "%temp%\search_results_fs.txt"
) else (
  call m clear_errorlevel_silently
)

exit/b



:_ (!rfsp) (mov-2)
