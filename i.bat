:_

@echo off



:_

set filep=* Show nickname definition.



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

set parameter_1=Parameter 1 (Optional): If left blank, show current state of variables. Otherwise,
a pass in alias to show definition for, before which tthe variables are reset.

echo.
echo %parameter_1%

exit/b



:_

:process_alias_parameter

call m rese

call n %1

if %errorlevel% gtr 0 exit/b



:_

:main_function

if not "%cbf_appended_words%" == "" (
  echo.
  echo * Appended words: %cbf_appended_words%
)

if not "%cbf_application%" == "" (
  echo.
  echo * Application: "%cbf_application%"
)

if not "%cbf_back%" == "" (
  echo.
  echo * Back: %cbf_back%
)

if not "%cbf_clone_url%" == "" (
  echo.
  echo * Clone URL: %cbf_clone_url%
)

if not "%cbf_conf%" == "" (
  echo.
  echo * Confluence: %cbf_conf%
)

if not "%cbf_csv%" == "" (
  echo.
  echo * CSV: %cbf_csv%
)

if not "%cbf_default_browser%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Default browser: "%cbf_default_browser%"
)

if not "%%cbf_default_text_editor%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Default text editor: %cbf_default_text_editor%
)

if not "%cbf_expanded_variable%" == "" (
  echo.
  echo * Expanded Variable: %cbf_expanded_variable%
)

if not "%cbf_fc_path%" == "" (
  echo.
  echo * FC path: %cbf_fc_path%
)

if not "%cbf_filename%" == "" (
  echo.
  echo * Filename: %cbf_filename%
)

if not "%cbf_gurl%" == "" (
  echo.
  echo * Github URL: %cbf_gurl%
)

if not "%cbf_host%" == "" (
  echo.
  echo * Host name: %cbf_host%
)

if not "%cbf_instance_id%" == "" (
  echo.
  echo * Instance id: %cbf_instance_id%
)

if not "%cbf_ip%" == "" (
  echo.
  echo * IP Address: %cbf_ip%
)

if not "%cbf_jf%" == "" (
  echo.
  echo * Jenkinsfile: %cbf_jf%
)

if not "%cbf_jenkins_url%" == "" (
  echo.
  echo * Jenkins URL: %cbf_jenkins_url%
)

if not "%cbf_jpg%" == "" (
  echo.
  echo * JPG: %cbf_jpg%
)

if not "%cbf_parameter%" == "" (
  echo.
  echo * Parameter: %cbf_parameter%
)

if not "%cbf_path%" == "" (
  echo.
  echo * Path: %cbf_path%
)

if not "%cbf_png%" == "" (
  echo.
  echo * PNG: %cbf_png%
)

if not "%cbf_pem%" == "" (
  echo.
  echo * Pem: %cbf_pem%
)

if not "%cbf_repo%" == "" (
  rem This is not shown by default.
  rem echo.
  rem echo * Repo: %cbf_repo%
)

if not "%cbf_url%" == "" (
  echo.
  echo * URL: %cbf_url%
)

if not "%cbf_xlsx%" == "" (
  echo.
  echo * XLSX: %cbf_xlsx%
)

exit/b



:_ (!rfsp) (mov-6)
