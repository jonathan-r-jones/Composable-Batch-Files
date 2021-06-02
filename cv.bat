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

if -%~1- == -c- set cbf_application=
if not "%cbf_application%"=="" echo.& echo * CBF_application: %cbf_application%


::

if -%~1- == -c- set cbf_cf=
if not "%cbf_cf%"=="" echo.& echo * CBF_cf: %cbf_cf%


::

if -%~1- == -c- set cbf_clone_url=
if not "%cbf_clone_url%"=="" echo.& echo * CBF_clone_url: %cbf_clone_url%


::

if -%~1- == -c- set cbf_ex=
if not "%cbf_ex%"=="" echo.& echo * CBF_ex: %cbf_ex%


::

if -%~1- == -c- set cbf_expanded_variable=
if not "%cbf_expanded_variable%"=="" echo.& echo * CBF_expanded_variable: %cbf_expanded_variable%


::

if -%~1- == -c- set cbf_fn=
if not "%cbf_fn%"=="" echo.& echo * CBF_fn: %cbf_fn%


::

if -%~1- == -c- set cbf_gh=
if not "%cbf_gh%"=="" echo.& echo * CBF_gh: %cbf_gh%


::

if -%~1- == -c- set cbf_host=
if not "%cbf_host%"=="" echo.& echo * CBF_host: %cbf_host%


::

if -%~1- == -c- set cbf_instance_id=
if not "%cbf_instance_id%"=="" echo.& echo * CBF_instance_id: %cbf_instance_id%


::

if -%~1- == -c- set cbf_ip=
if not "%cbf_ip%"=="" echo.& echo * CBF_ip: %cbf_ip%


::

if -%~1- == -c- set cbf_java=
if not "%cbf_java%"=="" echo.& echo * CBF_java: %cbf_java%


::

if -%~1- == -c- set cbf_je=
if not "%cbf_je%"=="" echo.& echo * CBF_je: %cbf_je%


::

if -%~1- == -c- set cbf_jf=
if not "%cbf_jf%"=="" echo.& echo * CBF_jf: %cbf_jf%


::

if -%~1- == -c- set cbf_jpg=
if not "%cbf_jpg%"=="" echo.& echo * CBF_jpg: %cbf_jpg%


::

if -%~1- == -c- set cbf_parameter=
if not "%cbf_parameter%"=="" echo.& echo * CBF_parameter: %cbf_parameter%


::

if -%~1- == -c- set cbf_path=
if not "%cbf_path%"=="" echo.& echo * CBF_Path: %cbf_path%


::

if -%~1- == -c- set cbf_png=
if not "%cbf_png%"=="" echo.& echo * CBF_png: %cbf_png%


::

if -%~1- == -c- set cbf_pr=
if not "%cbf_pr%"=="" echo.& echo * CBF_pr: %cbf_pr%


::

if -%~1- == -c- set cbf_rl=
if not "%cbf_rl%"=="" echo.& echo * CBF_rl: %cbf_rl%


::

if -%~1- == -c- set cbf_url=
if not "%cbf_url%"=="" echo.& echo * CBF_url: %cbf_url%


::

if -%~1- == -c- set cbf_wo=
if not "%cbf_wo%"=="" echo.& echo * CBF_wo: %cbf_wo%



:

set fp=* This runs the cv command after the variables have be cleared.

if -%~1- == -c- call cv

exit/b



:_
