:_

@echo off



:_

set filep=* A batch file wrapper around the tasklist and tasklist commands that helps you
set filep=%filep% reuse and remember your commonly used commands.



:_

set fp=* Route help callers.

if "%~1" == "" goto l

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo %filep%

echo.
echo Filename stands for: Tasklist.

echo.
echo Last Updated: May-8-2018

echo.

echo Usage: %0 [Optional Parameter 1]

echo.
echo If parameter 1 is left blank, an unsorted list is displayed.

echo.
echo     Parameter  Description
echo -------------  --------------------------------------------------
echo          sort  Pipe running images to a sortable text file.

exit/b



:_ Begin body. (!bb)



:_

:lex

set fp=* List running ex images.

echo %fp%
echo.

tasklist /v /fi "imagename eq ex*"

exit/b



:_

:l

set fp=* List running images.

echo %fp%

tasklist /fo table

exit/b



:_

:ll

set fp=* List running images.

echo %fp%

tasklist /fo list

exit/b



:_

:x

set fp=* Tasklist examples.

TASKLIST
rem TASKLIST /M
rem TASKLIST /V /FO CSV
rem TASKLIST /SVC /FO LIST
rem TASKLIST /APPS /FI "STATUS eq RUNNING"
rem TASKLIST /M wbem*
rem TASKLIST /S system /FO LIST
rem TASKLIST /S system /U domain\username /FO CSV /NH
rem TASKLIST /S system /U username /P password /FO TABLE /NH
rem TASKLIST /FI "USERNAME ne NT AUTHORITY\SYSTEM" /FI "STATUS eq running"

exit/b



:_

:sort

set fp=* Pipe running images to a sortable text file.

echo %fp%

tasklist /fo table>%temp%\search_results.txt

call me sr

exit/b



:_

:test

set fp=* Test. This works.

rem lu: Jan-4-2019

echo.
echo %fp%

TASKLIST /FI "USERNAME ne NT AUTHORITY\SYSTEM" /FI "STATUS eq running"

exit/b



:_

:test2

set fp=* Undercase. This works.

rem lu: Jan-4-2019

echo.
echo %fp%

tasklist /fi "username ne nt authority\system" /fi "status eq running"

exit/b



:_

:ex

:we

set fp=* Windows Explorer.

rem lu: Jan-4-2019

echo.
echo %fp%

tasklist /fi "username ne nt authority\system" /fi "status eq running" /fi "imagename eq explorer.exe" /fi "windowtitle ne untitle*"

rem These don't work.
rem /fi "im eq explorer.exe"
rem /fi "image eq explorer.exe"
rem /fi "image name eq explorer.exe"

exit/b



:_