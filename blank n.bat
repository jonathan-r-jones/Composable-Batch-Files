:_

@echo off



:_

set filep=* Nickname dictionary that sets the envrionment variables corresponding to a given unique nickname parameter.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* In order to promote freshness, clear the environment variables and reset the error level.

set cbf_filename=

set cbf_path=

set cbf_url=

ver>nul



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo %filep%

echo.
echo Last Updated: May-8-2018

echo.
echo The filename stands for: Nickname dictionary.

echo.
echo Usage: %0 [single parameter]

echo.
echo Parameter 1: Function to execute.

echo.
echo In the function block corresponding to the label, you can set any or all 
echo of the CBF environment variables. Typically this batch file would be 
echo called by echo a different batch file looking to set a particular CBF 
echo envrionment variable. However, if you call it yourself from the command 
echo line, it will set the variable plus it will describe itself.

echo.
echo Notes: I kept the facade dictionaries because they help make clear the 
echo author's intent when calling which variable is being set.

echo.
echo Parm/Nickname  Target
echo -------------  -----------------------------------------------------------

exit/b



:_ Begin body. (!bb)



:_

:

set fp=* 

rem lu: Aug-2-2018

echo %fp%

set cbf_path=%cbf_default_repository_folder%\

set cbf_url=
rem qq-1

exit/b



:_ (!rfsp) (mov-6)