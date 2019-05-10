:_

@echo off



:_

set filep=* Use Notepad++ to edit a batch file in the CBF folder.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_ (!rfsp) (mov-6)

:help

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename in the CBF folder without the "bat" extension.

echo.
echo For example, typing "mx m" would edit the m.bat file in the Composable
echo. Batch Files folder.

exit/b



:_

:main_function

if not exist %composable_batch_files%\%~1.bat (
  echo.
  echo * The file "%composable_batch_files%\%~1.bat" does not exist.
  exit/b
)

call np %composable_batch_files%\%~1.bat

exit/b



:_