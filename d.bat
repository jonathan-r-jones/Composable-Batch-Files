:_

@echo off



:_

set filep=* Directory listing: an easier to type version.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "" goto alphabetical

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

set fp=* Dir: an easier to type version.

echo Filename stands for: Dir.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1 (Optional): Sorting style.

echo.
echo Parameter 2 (Optional): File type, e.g "txt".

echo.          
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo             d  Date, newest first.
echo            d2  Date, smallest first.
echo           hid  Hidden files and folders.
echo             s  Size, biggest first.
echo            s2  Size, smallest first.
echo             t  Files and folders changed today.

exit/b



:_

:alphabetical

set fp=* Alphabetical by filename.

rem lu: Feb-1-2018

echo %fp%
echo.

dir

exit/b



:_

:s

set fp=* Size, biggest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /o-s %2

exit/b



:_

:s2

set fp=* Size, smallest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /os %2

exit/b



:_

:d

set fp=* Date, newest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /o-d %2

exit/b



:_

:d2

set fp=* Date, oldest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /od %2

exit/b



:_

:ta

set fp=* Files and folders changed today.

rem lu: Feb-1-2018

echo %fp%

forfiles /d +0 /c "cmd /c echo @file @ftime @fsize"

exit/b



:_

:t

set fp=* Files changed today.

rem findstr /bvc:" " removes header and summary

rem lu: Feb-1-2018

echo %fp%

forfiles /d +0 /c "cmd /c if @isdir==FALSE echo @file @ftime @fsize"

exit/b



:_

:hid

set fp=* Look for the hidden files and folders.

rem Creation Date: Feb-7-2017

echo %fp%

echo.
dir /ah

exit/b



:_ (!rfsp) (mov-6) 