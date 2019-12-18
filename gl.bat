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
echo   Term/Abbreviation  Definition/Description
echo -------------------  -------------------------------------------------------------------
echo                  _c  Suffic indicating a consumer batch file using function routing.
echo                  99  Errorlevel used when a label is not found.
echo                   a  Application, when used in a batch file name
echo       alias routing  Batch file style where the parameter(s) is usually an alias that 
echo                      will be looked up. Example(s): f.bat, sf.bat, td.bat.
echo                 -ag  As a batch file parameter, means run an aggregte, not atomic, func.
echo  aggregate function  A batch file function which is a collection of calls to other
echo                      batch file functions. It is called by invoking its batch file 
echo                      label. It also contains "exit/b',
echo                      which is the end of the function.
echo     atomic function  A single, self-contained batch file function, which usually
echo                      performs a single task and is called by invoking its batch file 
echo                      label. It also contains "exit/b', which is the end of the function.
echo code execution area  Batch file style where the router routes execution to near the end 
echo                      of the file, unless a parameter is supllied, in which case function 
echo                      routing occurs. Example(s): t.bat.
echo                 cbf  Composable batch files
echo                   c  Current folder filename, when used in a batch file name
echo                  -c  As a batch file parameter, means force file creation
echo          error code  fn.bat returns an error code of 2 for file not exists.
echo  evaluated filename  Filename, filename alias or batch file prefix for a batch file 
echo    parameter         that lives in either the CBF or Share-zone folder.
echo               filep  File purpose
echo                   f  Filename alias, when used in a batch file name
echo                  fp  Function purpose
echo    function routing  Batch file style where code execution is routed to a function.
echo                      Example(s): g.bat or m.bat.
echo               label  A batch file label, a.k.a. alias or nickname.
echo                  lu  Last updated. The last time the file was updated.
echo                   p  Path alias, when used in a batch file name
echo                 rf_  Prefix used to designate that a label has at least one caller.
echo                 rp_  Prefix used to designate that a label is a relative path.
echo         single task  Batch file style where the file tries to achieve a single task,
echo                      e. g. scpx.bat.
echo        td parameter  Transform Directory passed in as a parameter, meaning to 
echo                      change folders before running the batch file. For example,
echo                      running "p cbf" switches to the CBF folder, the alias for 
echo                      which is assigned in the nicknames dictionary (n.bat), 
echo                      before running the batch file p.bat.
echo                  th  Test Harness

rem (!rfsp) (mov-2)

exit/b



:_