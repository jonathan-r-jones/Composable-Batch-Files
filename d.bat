:_

@echo off



:_

set filep=* Dir for current folder.



:_

set fp=* Route callers.

if "%~1" == "" goto do

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1 (Optional): Sorting style.

echo.
echo Parameter 2 (Optional): File type, e.g "txt".


echo.
echo Batch file style: Multiurpose

echo.          
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo             d  Date, newest first.
echo            d2  Date, smallest first.
echo            fo  Folders only.
echo           hid  Hidden files and folders.
echo             s  Size, biggest first.
echo            s2  Size, smallest first.
echo             t  Treeview piped to a file.
echo            tn  Treeview normal.
echo            to  Files and folders changed today.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:s2

set fp=* Size, smallest first.

rem lu: Feb-1-2018

echo.
echo %fp%
echo.

dir /os %2

exit/b



:_

:h

:hid

set fp=* Look for the hidden files and folders.

rem Creation Date: Feb-7-2017

echo.
echo %fp%

echo.
dir /ah

exit/b



:_

:f

:fo

set fp=* Folders only.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.
dir /a:d

exit/b



:_

:concop

set fp=* Conflicted copy.

rem lu: Feb-15-2019

echo.
echo %fp%

echo.
del "*conflicted copy*.*"

exit/b



:_

:s

set fp=* Size, biggest first.

rem lu: Feb-1-2018

echo.
echo %fp%
echo.

dir /o-s %2

exit/b



:_

:d

set fp=* Date, newest first.

rem lu: Apr-23-2019

echo.
echo %fp%
echo.

dir /o-d

exit/b



:_

:a

:alphabetical

set fp=* Alphabetical, folders first.

rem lu: Apr-23-2019

echo.
echo %fp%

echo.
dir /ogn

exit/b



:_+ Tree Operations



::_

:t

:tr

:tree

set fp=* Tree view.

rem lu: Jan-8-2019

echo.
echo %fp%

tree/f

exit/b



::_

:tp

:trp

:treep

set fp=* Tree view piped to a file.

rem lu: Jan-8-2019

echo.
echo %fp%

tree/f>%temp%\treeview_results.txt

start "Test Title" "%cbf_default_text_editor%" "%temp%\treeview_results.txt"

exit/b



:_+ Recently Modified



::_

:rm

set fp=* Recently modified.

echo.
echo %fp%

forfiles /s /d 06/24/2020 /c "cmd /c echo @fdate @path"

exit/b

Description: For each file in the current folder and its subfolders modified on date specified 
or later, outputs the file modification date and full file path. The date format after /d is 
locale specific. Thus, allows to find most recently modified files.



::_

:to

:toda

:today

set fp=* Files changed today.

rem findstr /bvc:" " removes header and summary

rem The problem is that this doesn't search subfolders.

rem lu: Mar-6-2019

echo.
echo %fp%

forfiles /s /d +0 /c "cmd /c if @isdir==FALSE echo @path @ftime @fsize">%temp%\d_search_results_fs.txt

if %Errorlevel% == 0 echo.
if %Errorlevel% == 0 echo * Files found.

if %errorlevel% == 0 (
  start "Test Title" "%cbf_default_text_editor%" "%temp%\d_search_results_fs.txt"
) else (
  call m clear_errorlevel_silently
)

exit/b



::_

:todff

set fp=* Files and folders changed today.

rem lu: Feb-1-2018

echo.
echo %fp%

forfiles /d +0 /c "cmd /c echo @file @ftime @fsize"

exit/b



:_

:big

set fp=* Find big files.

rem lu: Jun-24-2020

echo.
echo %fp%

for /r %%i in (*) do @if %~zi geq 1000000 echo %~zi %%i

exit/b

Presently not working.

Description: For each file in the current folder and its subfolders that has the size greater 
than or equal to 1,000,000 bytes, outputs the file size in bytes and the full path of the 
file.



:_

:do

set fp=* Date, oldest first.

rem lu: Apr-23-2019

echo.
echo %fp%
echo.

dir /od

exit/b



:_ (!rfsp) (mov-6) 
