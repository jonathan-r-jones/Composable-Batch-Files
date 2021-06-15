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
echo skw: cbf-variable, clear_, cv and cv c, list cbf variables, Show the values of set cbf variable, clear cbf variables

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

if -%~1- == -c- set cbf-application=
if not "%cbf-application%"=="" echo.& echo * cbf-application: %cbf-application%


::

rem Application Location

if -%~1- == -c- set cbf-application-location=
if not "%cbf-application-location%"=="" echo.& echo * cbf-application-location: %cbf-application-location%


::

rem Branch

if -%~1- == -c- set cbf-branch=
if not "%cbf-branch%"=="" echo.& echo * cbf-branch: %cbf-branch%


::

rem Confluence

if -%~1- == -c- set cbf-cf=
if not "%cbf-cf%"=="" echo.& echo * cbf-cf: %cbf-cf%


::

rem Composed Variable

if -%~1- == -c- set cbf-composed-variable=
if not "%cbf-composed-variable%"=="" echo.& echo * cbf-composed-variable: %cbf-composed-variable%


::

rem Clone URL

if -%~1- == -c- set cbf-clone-url=
if not "%cbf-clone-url%"=="" echo.& echo * cbf-clone-url: %cbf-clone-url%


::

rem Default Browser

rem if -%~1- == -c- set cbf-default-browser=
rem if not "%cbf-default-browser%"=="" echo.& echo * cbf-default-browser: %cbf-default-browser%

if "%cbf-default-browser%"=="" echo.& echo * Warning: cbf-default-browser is blank.


::

rem Default Text Editor

rem if -%~1- == -c- set cbf-default-text-editor=
rem if not "%cbf-default-text-editor%"=="" echo.& echo * cbf-default-text-editor: %cbf-default-text-editor%


::

rem Excel

if -%~1- == -c- set cbf-ex=
if not "%cbf-ex%"=="" echo.& echo * cbf-ex: %cbf-ex%


::

rem Expanded Variable

if -%~1- == -c- set cbf-expanded-variable=
if not "%cbf-expanded-variable%"=="" echo.& echo * cbf-expanded-variable: %cbf-expanded-variable%


::

rem Filename

if -%~1- == -c- set cbf-fn=
if not "%cbf-fn%"=="" echo.& echo * cbf-fn: %cbf-fn%


::

rem File Type

if -%~1- == -c- set cbf-file-type=
if not "%cbf-file-type%"=="" echo.& echo * cbf-file-type: %cbf-file-type%


::

rem Filename List

if -%~1- == -c- set cbf-fn-list=
if not "%cbf-fn-list%"=="" echo.& echo * cbf-fn-list: %cbf-fn-list%


::

rem Full Pem

if -%~1- == -c- set cbf-full-pem=
if not "%cbf-full-pem%"=="" echo.& echo * cbf-full-pem: %cbf-full-pem%


::

rem GitHub

if -%~1- == -c- set cbf-gh=
if not "%cbf-gh%"=="" echo.& echo * cbf-gh: %cbf-gh%


::

rem Hostname

if -%~1- == -c- set cbf-host=
if not "%cbf-host%"=="" echo.& echo * cbf-host: %cbf-host%


::

rem Instance ID

if -%~1- == -c- set cbf-instance-id=
if not "%cbf-instance-id%"=="" echo.& echo * cbf-instance-id: %cbf-instance-id%


::

rem IP Address

if -%~1- == -c- set cbf-ip=
if not "%cbf-ip%"=="" echo.& echo * cbf-ip: %cbf-ip%


::

rem Java

if -%~1- == -c- set cbf-java=
if not "%cbf-java%"=="" echo.& echo * cbf-java: %cbf-java%


::

rem Jenkins

if -%~1- == -c- set cbf-je=
if not "%cbf-je%"=="" echo.& echo * cbf-je: %cbf-je%


::

rem Jenkinsfile

if -%~1- == -c- set cbf-jf=
if not "%cbf-jf%"=="" echo.& echo * cbf-jf: %cbf-jf%


::

rem JPG

if -%~1- == -c- set cbf-jpg=
if not "%cbf-jpg%"=="" echo.& echo * cbf-jpg: %cbf-jpg%


::

rem Parameter

if -%~1- == -c- set cbf-parameter=
if not "%cbf-parameter%"=="" echo.& echo * cbf-parameter: %cbf-parameter%


::

rem Path

if -%~1- == -c- set cbf-pt=
if not "%cbf-pt%"=="" echo.& echo * cbf-pt: %cbf-pt%


::

rem PNG

if -%~1- == -c- set cbf-png=
if not "%cbf-png%"=="" echo.& echo * cbf-png: %cbf-png%


::

rem Pull Requests

if -%~1- == -c- set cbf-pr=
if not "%cbf-pr%"=="" echo.& echo * cbf-pr: %cbf-pr%


::

rem Releases

if -%~1- == -c- set cbf-rl=
if not "%cbf-rl%"=="" echo.& echo * cbf-rl: %cbf-rl%


::

rem Reserved Path

rem Commented for now because it causes an issue. Jun-11-2021
rem if -%~1- == -c- set cbf-reserved-path=
rem if not "%cbf-reserved-path%"=="" echo.& echo * cbf-reserved-path: %cbf-reserved-path%


::

rem URL

if -%~1- == -c- set cbf-url=
if not "%cbf-url%"=="" echo.& echo * cbf-url: %cbf-url%


::

rem Word

if -%~1- == -c- set cbf-wo=
if not "%cbf-wo%"=="" echo.& echo * cbf-wo: %cbf-wo%



:

set fp=* This runs the cv command after the variables have be cleared.

if -%~1- == -c- call cv

exit/b



:_
