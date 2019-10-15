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

echo.
echo Term/Abbreviat.  Definition/Description
echo ---------------  ------------------------------------------------------------
echo               a  Application
echo             cbf  composable batch files
echo           filep  File purpose
echo               f  Filename
echo              fp  Function purpose
echo              lu  Last updated. The last time the file was updated.
echo    td parameter  Transform Directory passed in as a parameter, meaning to 
echo                  change folders before running the batch file. For example,
echo                  running "p cbf" switches to the CBF folder, the alias for 
echo                  which is assigned in the nicknames dictionary (n.bat), 
echo                  before running the batch file p.bat.
echo               p  path
echo static function  A single, self-contained batch file function which is 
echo                  called by invoking its batch file label.

rem (!rfsp) (mov-2)

exit/b



:_