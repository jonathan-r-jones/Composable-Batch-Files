:_

@echo off



:_

set filep=* This template file can be used as a "Save As" to create a new composable batch file.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.



rem (!rfsp) (mov-2)

m exitb



:_

:h

:help

echo %filep%

echo.
echo Filename stands for: Composable Batch File Template.

echo.
echo Last Updated: 

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1 (Optional):

echo.
echo Parameter 2 (Optional):

m exitb



:_ Begin body. (!bb)



:_