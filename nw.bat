:_

@echo off



:_

set filep=* Create a new file based on an existing alias.



:_

set fp=* Route callers.

if -%~1- == -- goto help

if -%~2- == -- goto help

if -%~1- == -/?- goto help

goto validate_user_input



:_

:help

cls

echo.
echo %filep%

rem lu: Aug-30-2020 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_2=Parameter 1: Alias you wish to process.

set parameter_1=Parameter 2: Dynamically constructed cbf variable.

rem                                   qq1

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Single Purpose

echo.
echo Example(s):

echo.
echo %0 test ex

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_user_input


rem qq-1

exit/b

>< >< Footnote:

Outcome:



:_
