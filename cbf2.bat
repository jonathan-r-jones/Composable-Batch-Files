:_ (!t)

@echo off



:_

set filep=* List of batch file descriptions.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if not "%~1" == "" goto %1

goto main_function



:_

:help

echo.
echo Usage: %0 (optional parameter 1)

echo.
echo Parameter 1: Batch file label you wish to execute. If left blank, 
echo the code below the last code block in this file, a. k. a. the main function, will 
echo be executed.

exit/b



:_

:main_function

set fp=* For loop test.

rem lu: May-10-2019

echo.
echo %fp%

set folder_to_search=%share-zone%
set folder_to_search=%composable_batch_files%

echo.
for /r "%folder_to_search%" %%f in ("*.bat") do call %0 process_file %%f

exit/b



:_

:process_file

set fp=* Process file.

rem lu: May-10-2019

call %2 "/?">nul
echo %2: %filep%

exit/b



:_