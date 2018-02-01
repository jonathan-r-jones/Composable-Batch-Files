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

set fp=* Help has not yet been implemented.

echo %fp%

goto exitb

set fp=* Use as a template for new batch files.

echo.
echo File Purpose (fp): %fp%

echo.
echo Filename stands for: Template.

echo.
echo Last Updated (lu): Jan-24-2018

echo.
echo Usage: %0 [single parameter]

echo.          
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo.

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
 