:_

@echo off



:_

set filep=* Use Multi-Edit to edit a batch file in the CBF folder.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

call me %composable_batch_files%\%1.bat

goto exitb



:_ (!rfsp) (mov-6)

:h

:help

echo Filename stands for: Multi-Edit (x) file.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

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