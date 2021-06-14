:_

@echo off



:_

rem       qq1
set filep=* List or clear CBF variables.



:_

set fp=* Route callers.

if -%~1- == -- goto perform-default-action

if -%~1- == -/?- goto help

goto main-function



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
echo Entangled variable: cbf-%0

echo.
echo Pit of Success Strategy: For example, if cbf-cf is not found, the algorithm will look for cbf-url.

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter-1=Parameter 1 (Optional): 

set parameter-2=Parameter 2 (Optional): 

echo.
echo %parameter-1%

echo.
echo %parameter-2%

echo.
echo Example(s):

echo.
echo %0

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:perform-default-action

set fp=* Peform the default action which is 

echo.
echo %fp%

exit/b



:_

:main-function

set fp=

echo.
echo %fp%


exit/b


Footnote
>< >< >< 



:_
