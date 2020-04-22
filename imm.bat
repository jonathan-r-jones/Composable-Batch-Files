:_

@echo off



:_

set filep=* Show status of imm files.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

rem lu: 

echo.
echo Usage: %0

exit/b


  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______




:_

:main_function

set test_results_filename=%temp%\imm_results.txt

echo.>"%test_results_filename%"
echo Contents of: %test_results_filename%>>"%test_results_filename%"
echo.>>"%test_results_filename%"

call td ldro
echo.>>"%test_results_filename%"
dir mz*>>"%test_results_filename%"

call td ro
echo.>>"%test_results_filename%"
echo.>>"%test_results_filename%"
dir mz*>>"%test_results_filename%"

set cbf_parameter=%test_results_filename%

call an ie

call r

exit/b



:_ (!rfsp) (mov-7)
