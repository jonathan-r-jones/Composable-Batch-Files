:_

@echo off



:_

set filep=* A wrapper around fx.bat. Execute the namesake DCV for the passed in alias.



:_

set fp=* Route callers.

if -%~1- == -/?- goto help

if -%~2- == -/?- goto help

if -%~1- == -- goto help

if -%~2- == -- goto %1

goto main_function



:_

:help

cls

echo.
echo %filep%

rem skw:

rem lu: 

echo.
echo Batch file style: Multipurpose

echo.
echo Entangled variable: cbf-%0

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): DCV.

set parameter_2=Parameter 2 (Optional): Alias to process.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Example(s):

echo.
echo cf ht

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

call fx %2 %1 kr

exit/b



:_

:cf

set fp=* Peform the default action which is to open the Cart HOW-TO-ARTICLES webpage.

echo.
echo %fp%

call fx cchp %1 kr>nul

exit/b



:_

:gh

set fp=* Peform the default action which is to open the Cart GitHub webpage.

echo.
echo %fp%

call fx ma %1 kr>nul

exit/b



:_

:je

set fp=* Peform the default action which is to open the Cart Develop Jenkins webpage.

echo.
echo %fp%

call fx ma %1 kr>nul

exit/b



:_

:jf

set fp=* Not yet implemented.

echo.
echo %fp%

call fx ma %1 kr>nul

exit/b



:_

:pr

set fp=* Peform the default action which is to open the Cart pull requests webpage.

echo.
echo %fp%

call fx ma %1 kr>nul

exit/b



:_

:rl

set fp=* Peform the default action which is to open Cart Playbook releases webpage.

echo.
echo %fp%

call fx cp %1 kr>nul

exit/b



:_
