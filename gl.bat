:_

@echo off



:_

set filename_stands_for=* Glossary of CBF Terms.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: This file is a glossary of terms used in CBF.

echo.
echo %filep%

echo.
echo Last Updated: Aug-7-2018

echo.
echo Usage: %0

exit/b



:_

:main_function

echo %filename_stands_for%

echo.
echo  Term/Abbrev.  Definition/Description
echo -------------  ------------------------------------------------------------
echo           cbf  composable batch files
echo            fp  Function purpose
echo  td parameter  Transform Directory passed in as a parameter, meaning to 
echo                  change folders before running the batch file.


rem (!rfsp) (mov-2)

exit/b



:_