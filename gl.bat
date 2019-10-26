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
echo    Term/Abbreviat.  Definition/Description
echo ------------------  --------------------------------------------------------------------
echo                  a  Application, when used in batch file name
echo aggregate function  A batch file function which is a collection of calls to other
echo                     batch file functions. It is called by invoking its batch file 
echo                     label. It also contains "exit/b',
echo                     which is the end of the function.
echo    atomic function  A single, self-contained batch file function, which usually
echo                     performs a single task and is called by invoking its batch file 
echo                     label. It also contains "exit/b', which is the end of the function.
echo                cbf  Composable batch files
echo                  c  Current folder filename, when used in batch file name
echo                     filename
echo              filep  File purpose
echo                  f  Filename alias, when used in batch file name
echo                 fp  Function purpose
echo              label  A batch file label, a.k.a. alias or nickname.
echo                 lu  Last updated. The last time the file was updated.
echo                  p  Path alias, when used in batch file name
echo                rf_  Prefix used to designate that a label has at least one caller.
echo                rp_  Prefix used to designate that a label is a relative path.
echo       td parameter  Transform Directory passed in as a parameter, meaning to 
echo                     change folders before running the batch file. For example,
echo                     running "p cbf" switches to the CBF folder, the alias for 
echo                     which is assigned in the nicknames dictionary (n.bat), 
echo                     before running the batch file p.bat.

rem (!rfsp) (mov-2)

exit/b



:_