:_

@echo off



:_

set filep=* Open latest file.



:_

set fp=* Route callers.

if not -%~1- == -- goto switch-location

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

:switch-location

call td %1

if %errorlevel% gtr 0 exit/b



:_

:main-function

dir /a-d /b /o-d>%tmp%\latest-file-results.txt

set /p cbf-latest-file=<%tmp%\latest-file-results.txt

echo.
echo * cbf-latest-file: %cbf-latest-file%

"%cbf-latest-file%"

exit/b



:_
