:_

@echo off



:_

set filep=* Information on CBF variable value assignments.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" goto main_function

if not "%1" == "" goto process_alias_parameter

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): If left blank, the current state of all cbf variables ^
will be shown. If an alias is passed in, its definition will be shown, preceded by a reset.

echo.
echo %parameter_1%

echo.
echo File Goals:

echo.
echo * Easily view the state of all variables.

echo.
echo * Easily view the state of a specified variable.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:process_alias_parameter

call m reset_cbf-variables

call n %1

if %errorlevel% gtr 0 exit/b



:_

:main_function

:
if not "%cbf-appended_words%" == "" (
  echo.
  echo * Appended words: %cbf-appended_words%
)

:
if not "%cbf-application%" == "" (
  echo.
  echo * Application: "%cbf-application%"
)

:
if not "%cbf-back%" == "" (
  echo.
  echo * Back: %cbf-back%
)

:
if not "%cbf-clone-url%" == "" (
  echo.
  echo * Clone URL: %cbf-clone-url%
)

:
if not "%cbf-cf%" == "" (
  echo.
  echo * Confluence: %cbf-cf%
)

:
if not "%cbf-csv%" == "" (
  echo.
  echo * CSV: %cbf-csv%
)

:
if not "%cbf-default-browser%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Default browser: "%cbf-default-browser%"
)

:
if not "%%cbf-default-text-editor%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Default text editor: %cbf-default-text-editor%
)

:
if not "%cbf-ex%" == "" (
  echo.
  echo * Excel: %cbf-ex%
)

:
if not "%cbf-expanded-variable%" == "" (
  echo.
  echo * Expanded Variable: %cbf-expanded-variable%
)

:
if not "%cbf-fc_path%" == "" (
  echo.
  echo * FC path: %cbf-fc_path%
)

:
if not "%cbf-fn%" == "" (
  echo.
  echo * Filename {in ASCII format}: %cbf-fn%
)

:
if not "%cbf-gh%" == "" (
  echo.
  echo * Github URL: %cbf-gh%
)

:
if not "%cbf-host%" == "" (
  echo.
  echo * Host name: %cbf-host%
)

:
if not "%cbf-instance-id%" == "" (
  echo.
  echo * Instance id: %cbf-instance-id%
)

:
if not "%cbf-ip%" == "" (
  echo.
  echo * IP Address: %cbf-ip%
)

:
if not "%cbf-jf%" == "" (
  echo.
  echo * Jenkinsfile [cbf-jf]: %cbf-jf%
)

:
if not "%cbf-je%" == "" (
  echo.
  echo * Jenkins URL: %cbf-je%
)

:
if not "%cbf-jpg%" == "" (
  echo.
  echo * JPG: %cbf-jpg%
)

:
if not "%cbf-parameter%" == "" (
  echo.
  echo * Parameter: %cbf-parameter%
)

:
if not "%cbf-pt%" == "" (
  echo.
  echo * Path: %cbf-pt%
)

:
if not "%cbf-pem%" == "" (
  echo.
  echo * Pem: %cbf-pem%
)

:
if not "%cbf-png%" == "" (
  echo.
  echo * PNG: %cbf-png%
)

:
if not "%cbf-repo%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Repo: %cbf-repo%
)

:
if not "%cbf-specific_browser%" == "" (
  echo.
  echo * Specific Browser: %cbf-specific_browser%
)

:
if not "%cbf-url%" == "" (
  echo.
  echo * URL: %cbf-url%
)

:
if not "%cbf-wo%" == "" (
  echo.
  echo * Word: %cbf-wo%
)

exit/b



:_ (!rfsp) (mov-6)