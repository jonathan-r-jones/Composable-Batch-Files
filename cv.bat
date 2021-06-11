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

set fp=* List CBF Variables.

if -%~1- == -c- set fp=* Clear CBF Variables.

echo.
echo %fp%


::

rem Application

if -%~1- == -c- set cbf_application=
if not "%cbf_application%"=="" echo.& echo * CBF_application: %cbf_application%


::

rem qq1
rem Application Location

if -%~1- == -c- set cbf_application_location=
if not "%cbf_application_location%"=="" echo.& echo * CBF_application_location: %cbf_application_location%


::

rem Branch

if -%~1- == -c- set cbf_branch=
if not "%cbf_branch%"=="" echo.& echo * CBF_branch: %cbf_branch%


::

rem Confluence

if -%~1- == -c- set cbf_cf=
if not "%cbf_cf%"=="" echo.& echo * CBF_cf: %cbf_cf%


::

rem Clone URL

if -%~1- == -c- set cbf_clone_url=
if not "%cbf_clone_url%"=="" echo.& echo * CBF_clone_url: %cbf_clone_url%


::

rem Default Browser

if -%~1- == -c- set cbf_default_browser=
if not "%cbf_default_browser%"=="" echo.& echo * CBF_default_browser: %cbf_default_browser%


::

rem Default Text Editor

if -%~1- == -c- set cbf_default_text_editor=
if not "%cbf_default_text_editor%"=="" echo.& echo * CBF_default_text_editor: %cbf_default_text_editor%


::

rem Excel

if -%~1- == -c- set cbf_ex=
if not "%cbf_ex%"=="" echo.& echo * CBF_ex: %cbf_ex%


::

rem Expanded Variable

if -%~1- == -c- set cbf_expanded_variable=
if not "%cbf_expanded_variable%"=="" echo.& echo * CBF_expanded_variable: %cbf_expanded_variable%


::

rem Filename

if -%~1- == -c- set cbf_fn=
if not "%cbf_fn%"=="" echo.& echo * CBF_fn: %cbf_fn%


::

rem Filename List

if -%~1- == -c- set cbf_fn_list=
if not "%cbf_fn_list%"=="" echo.& echo * CBF_fn_list: %cbf_fn_list%


::

rem GitHub

if -%~1- == -c- set cbf_gh=
if not "%cbf_gh%"=="" echo.& echo * CBF_gh: %cbf_gh%


::

rem Hostname

if -%~1- == -c- set cbf_host=
if not "%cbf_host%"=="" echo.& echo * CBF_host: %cbf_host%


::

rem Instance ID

if -%~1- == -c- set cbf_instance_id=
if not "%cbf_instance_id%"=="" echo.& echo * CBF_instance_id: %cbf_instance_id%


::

rem IP Address

if -%~1- == -c- set cbf_ip=
if not "%cbf_ip%"=="" echo.& echo * CBF_ip: %cbf_ip%


::

rem Java

if -%~1- == -c- set cbf_java=
if not "%cbf_java%"=="" echo.& echo * CBF_java: %cbf_java%


::

rem Jenkins

if -%~1- == -c- set cbf_je=
if not "%cbf_je%"=="" echo.& echo * CBF_je: %cbf_je%


::

rem Jenkinsfile

if -%~1- == -c- set cbf_jf=
if not "%cbf_jf%"=="" echo.& echo * CBF_jf: %cbf_jf%


::

rem JPG

if -%~1- == -c- set cbf_jpg=
if not "%cbf_jpg%"=="" echo.& echo * CBF_jpg: %cbf_jpg%


::

rem Parameter

if -%~1- == -c- set cbf_parameter=
if not "%cbf_parameter%"=="" echo.& echo * CBF_parameter: %cbf_parameter%


::

rem Path

if -%~1- == -c- set cbf_path=
if not "%cbf_path%"=="" echo.& echo * CBF_Path: %cbf_path%


::

rem PNG

if -%~1- == -c- set cbf_png=
if not "%cbf_png%"=="" echo.& echo * CBF_png: %cbf_png%


::

rem Pull Requests

if -%~1- == -c- set cbf_pr=
if not "%cbf_pr%"=="" echo.& echo * CBF_pr: %cbf_pr%


::

rem Releases

if -%~1- == -c- set cbf_rl=
if not "%cbf_rl%"=="" echo.& echo * CBF_rl: %cbf_rl%


::

rem URL

if -%~1- == -c- set cbf_url=
if not "%cbf_url%"=="" echo.& echo * CBF_url: %cbf_url%


::

rem Word

if -%~1- == -c- set cbf_wo=
if not "%cbf_wo%"=="" echo.& echo * CBF_wo: %cbf_wo%



:

set fp=* This runs the cv command after the variables have be cleared.

if -%~1- == -c- call cv

exit/b



:_
