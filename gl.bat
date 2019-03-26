:_

@echo off



:_

set filename_stands_for=* Glossary of CBF Terms.



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
echo            lu  Last updated. The last time the file was updated.
echo  td parameter  Transform Directory passed in as a parameter, meaning to 
echo                  change folders before running the batch file. For example,
echo                  running "p cbf" switches to the CBF folder, the alias for 
echo                  which is assigned in the nicknames dictionary (n.bat), 
echo                  before running the batch file p.bat.

rem (!rfsp) (mov-2)

exit/b



:_