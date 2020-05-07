:_

@echo off



:_

set filep=* Glossary of CBF Terms.



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

cls

echo.
echo %filep%

echo.
echo   Term/Abbreviation  Definition/Description
echo   ______  ______  _  __  ______  ______  ______  ______  ______  ______  ______  ______  
echo  (______)(______)(_  __)(______)(______)(______)(______)(______)(______)(______)(______)
echo   ___(______)(_____  ______)(______)(______)(______)(______)(______)(______)(______)(___
echo.
echo                  99  Errorlevel used when a label is not found.
echo                   a  Application, when used in a batch file name
echo                 -ag  As a batch file parameter, means run an aggregte, not atomic, func.
echo  aggregate function  A batch file function which is a collection of calls to other
echo                      batch file functions. It is called by invoking its batch file 
echo                      label. It also contains "exit/b',
echo                      which is the end of the function.
echo        alias lookup  Looking up cbf values in the n.bat dictionary.
echo     atomic function  A single, self-contained batch file function, which usually
echo                      performs a single task and is called by invoking its batch file 
echo                      label. It also contains "exit/b', which is the end of the function.
echo code execution area  Batch file style (bfs) where the router routes execution to near the 
echo                      end of the file, unless a parameter is supllied, in which case 
echo                      function routing occurs. Example(s): t.bat.
echo                 cbf  Composable batch files
echo                  _c  Suffix indicating a consumer batch file using function routing with
echo                      time-stamps as function names. Used for analysis and showing-your-
echo                      work, not for repeatability.
echo                  -c  As a batch file parameter, means force file creation
echo                   c  Current folder filename, when used in a batch file name
echo   dynamically cons-  An environment variable that can be dynamically created at runtime.
echo   tructed variable     For example, java is the dcv of the expression cbf_java.
echo          error code  fn.bat returns an error code of 2 for file not exists.
echo  entangled variable  A cbf variable associated with a particle batch file, e.g. cbf_path
echo                      and td.bat.
echo  evaluated filename  Filename, filename alias or batch file prefix for a batch file 
echo    parameter         that lives in either the CBF or Share-zone folder.
echo               filep  File purpose
echo                   f  Filename alias, when used in a batch file name
echo                  fp  Function purpose
echo    function routing  Batch file style (bfs) where code execution is routed to a function.
echo                      Example(s): g.bat, m.bat, t.bat and v.bat. T.bat and v.bat also
echo                      also use a code execution area.
echo               label  A batch file label, a.k.a. a function name, alias or nickname.
echo                  lu  Last updated. The last time the file was updated.
echo                   p  Path alias, when used in a batch file name
echo                 rf_  Prefix used to designate that a label has at least one caller.
echo                 rp_  Prefix used to designate that a label is a relative path.
echo         single task  Batch file style where the file tries to achieve a single task,
echo                      e. g. scpx.bat usually calls a main_function.
echo                 skw  Search Keyword. Useful for finding things.
echo        td parameter  Transform Directory passed in as a parameter, meaning to 
echo                      change folders before running the batch file. For example,
echo                      running "p cbf" switches to the CBF folder, the alias for 
echo                      which is assigned in the nicknames dictionary (n.bat), 
echo                      before running the batch file p.bat.
echo                  th  Test Harness

rem (!rfsp) (mov-2)

exit/b



:_
