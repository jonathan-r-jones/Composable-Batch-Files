:_

@echo off



:_

set filep=* List or clear CBF variables.



:_

set fp=* Route callers.

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
echo Batch file style: Multipurpose

echo.
echo skw: cbf_variable, clear_, cv and cv c, list cbf variables, Show the values of set cbf variable, clear cbf variables

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): If "c" is used, all CBF variables will be cleared.

echo.
echo %parameter_1%

echo.
echo Example(s):

echo.
echo %0 c

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

set fp=* Process CBF variables.

set fp=* List CBF Variables.

if -%~1- == -c- set fp=* Clear CBF Variables.

echo.
echo %fp%


::

if -%~1- == -c- set cbf_fn=
if not "%cbf_fn%"=="" echo.& echo * CBF_fn: %cbf_fn%


::

if -%~1- == -c- set cbf_path=
if not "%cbf_path%"=="" echo.& echo * CBF_Path: %cbf_path%


::

if -%~1- == -c- call cv


exit/b



:_
