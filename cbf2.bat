:_ (!t)

@echo off



:_

set filep=* List of batch file descriptions.

rem setlocal



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if not "%~1" == "" goto %1

goto code_execution_area



:_

:help

echo File Purpose: %filep%

echo.
echo File purpose: Testing.

echo.
echo Last Updated (lu): Apr-30-2018

echo.
echo Usage: %0 (optional parameter 1)

echo.
echo Parameter 1: Batch file label you wish to execute. If left blank, 
echo the code below the last code block in this file, a. k. a. the main function, will 
echo be executed.

exit/b



:_

:process_file

set fp=* Process file.

rem lu: May-10-2019

rem echo.
rem echo %fp%

rem echo %2
rem call %2 /?
rem call %2
call %2 "/?">nul
echo %2: %filep%
rem qq-1

exit/b



:_

:code_execution_area

set fp=* Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_

:

set fp=* For loop test.

rem lu: May-10-2019

echo.
echo %fp%

set folder_to_search=%share-zone%

echo.
rem for /r "%folder_to_search%" %%f in ("*.*") do echo hey
rem for /r "%folder_to_search%" %%f in ("*.*") do call %0 process_file testy
for /r "%folder_to_search%" %%f in ("*.bat") do call %0 process_file %%f
rem qq-1

exit/b



:_