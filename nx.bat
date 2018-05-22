:_

@echo off



:_

set filep=* Use Notepad++ to edit a batch file in the CBF folder.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

call npp %composable_batch_files%\%~1.bat

exit /b



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: Multi-Edit (x) file.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

echo.
echo For example, typing "mx m" would edit the m.bat file in the Composable
echo. Batch Files folder.

exit /b



:_