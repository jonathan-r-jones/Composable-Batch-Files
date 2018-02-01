:_

@echo off



:_

set fp=* Directory listing.

echo.
echo %fp%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto alphabetical

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

:help

set fp=* Dir: an easier to type version.

echo File Purpose (fp): %fp%

echo.
echo Filename stands for: dir

echo.
echo Last Updated (lu): Feb-1-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): Sorting style.

echo.
echo Parameter 2 (Optional): File type.

echo.          
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo             d  Date, newest first.
echo            d2  Date, smallest first.
echo             s  Size, biggest first.
echo            s2  Size, smallest first.
echo             t  File type.

goto exitb



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



::_

rem ******* End Exit Functions.



:_

:alphabetical

set fp=* Alphabetical by filename.

rem lu: Feb-1-2018

echo %fp%
echo.

dir

goto exitb



:_

:t

:file_type

set fp=* File type.

rem lu: Feb-1-2018

echo %fp%
echo.

dir *.%2

goto exitb



:_

:s

set fp=* Size, biggest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /o-s

goto exitb



:_

:s2

set fp=* Size, smallest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /os

goto exitb



:_

:d

set fp=* Date, newest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /o-d

goto exitb



:_

:d2

set fp=* Date, oldest first.

rem lu: Feb-1-2018

echo %fp%
echo.

dir /od

goto exitb



:_ (!rfsp) (mov-9)
 