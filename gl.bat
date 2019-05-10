:_

@echo off



:_

set filep=* Glossary of CBF Terms.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0

exit/b



:_

:main_function

echo %filep%

echo.
echo  Term/Abbrev.  Definition/Description
echo -------------  ------------------------------------------------------------
echo           cbf  composable batch files
echo         filep  File purpose
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