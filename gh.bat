  :_

@echo off



:_

set filep=* A wrapper around fx.bat that executes the DCV for "%0".



:_

set fp=* Route callers.

if -%~1- == -- goto perform_default_action

if -%~1- == -/?- goto help

goto main_function



:_

:help

cls

echo.
echo %filep%

rem skw:

rem lu: 

echo.
echo Batch file style: Single purpose

echo.
echo Entangled variable: For example, cbf_pr.

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias you wish to process.

echo.
echo %parameter_1%

echo.
echo Example(s):

echo.
echo %0 ma

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:perform_default_action

set filep=* Peform the default action which is to open the Cart GitHub webpage.

echo.
echo %filep%

call fx ma %0 kr>nul

exit/b



:_

:main_function

call fx %1 %0 kr

exit/b



:_
