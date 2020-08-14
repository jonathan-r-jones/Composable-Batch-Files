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

call m reset_cbf_variables

call n %1

if %errorlevel% gtr 0 exit/b



:_

:main_function

:
if not "%cbf_appended_words%" == "" (
  echo.
  echo * Appended words: %cbf_appended_words%
)

:
if not "%cbf_application%" == "" (
  echo.
  echo * Application: "%cbf_application%"
)

:
if not "%cbf_back%" == "" (
  echo.
  echo * Back: %cbf_back%
)

:
if not "%cbf_clone_url%" == "" (
  echo.
  echo * Clone URL: %cbf_clone_url%
)

:
if not "%cbf_conf%" == "" (
  echo.
  echo * Confluence: %cbf_conf%
)

:
if not "%cbf_csv%" == "" (
  echo.
  echo * CSV: %cbf_csv%
)

:
if not "%cbf_default_browser%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Default browser: "%cbf_default_browser%"
)

:
if not "%%cbf_default_text_editor%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Default text editor: %cbf_default_text_editor%
)

:
if not "%cbf_ex%" == "" (
  echo.
  echo * Excel: %cbf_ex%
)

:
if not "%cbf_expanded_variable%" == "" (
  echo.
  echo * Expanded Variable: %cbf_expanded_variable%
)

:
if not "%cbf_fc_path%" == "" (
  echo.
  echo * FC path: %cbf_fc_path%
)

:
if not "%cbf_fn%" == "" (
  echo.
  echo * Filename {in ASCII format}: %cbf_fn%
)

:
if not "%cbf_gh%" == "" (
  echo.
  echo * Github URL: %cbf_gh%
)

:
if not "%cbf_host%" == "" (
  echo.
  echo * Host name: %cbf_host%
)

:
if not "%cbf_instance_id%" == "" (
  echo.
  echo * Instance id: %cbf_instance_id%
)

:
if not "%cbf_ip%" == "" (
  echo.
  echo * IP Address: %cbf_ip%
)

:
if not "%cbf_jf%" == "" (
  echo.
  echo * Jenkinsfile [cbf_jf]: %cbf_jf%
)

:
if not "%cbf_je%" == "" (
  echo.
  echo * Jenkins URL: %cbf_je%
)

:
if not "%cbf_jpg%" == "" (
  echo.
  echo * JPG: %cbf_jpg%
)

:
if not "%cbf_parameter%" == "" (
  echo.
  echo * Parameter: %cbf_parameter%
)

:
if not "%cbf_path%" == "" (
  echo.
  echo * Path: %cbf_path%
)

:
if not "%cbf_pem%" == "" (
  echo.
  echo * Pem: %cbf_pem%
)

:
if not "%cbf_png%" == "" (
  echo.
  echo * PNG: %cbf_png%
)

:
if not "%cbf_repo%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Repo: %cbf_repo%
)

:
if not "%cbf_specific_browser%" == "" (
  echo.
  echo * Specific Browser: %cbf_specific_browser%
)

:
if not "%cbf_url%" == "" (
  echo.
  echo * URL: %cbf_url%
)

:
if not "%cbf_wo%" == "" (
  echo.
  echo * Word: %cbf_wo%
)

exit/b



:_ (!rfsp) (mov-6)