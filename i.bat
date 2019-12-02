:_

@echo off



:_

set filep=* Show nickname definition.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if not "%~1" == "" goto process_parameter

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Nickname to show definition for. If left blank ^
current CBF environment variables are shown.

echo.
echo %parameter_1%

exit/b



:_

:process_parameter

set fp=* Process parameter.

echo.
echo %fp%

call m reset_cbf_variables

call n %1

if %errorlevel% gtr 0 exit/b

goto main_function



:_

:main_function

echo.
echo * Show nickname definition.

if not "%cbf_appended_words%" == "" (
  echo.
  echo * Appended words: "%cbf_appended_words%"
)

if not "%cbf_application%" == "" (
  echo.
  echo * Application: "%cbf_application%"
)

if not "%cbf_back%" == "" (
  echo.
  echo * Back: "%cbf_back%"
)

if not "%cbf_clone_url%" == "" (
  echo.
  echo * Clone URL: "%cbf_clone_url%"
)

if not "%cbf_confluence_url%" == "" (
  echo.
  echo * Filename: "%cbf_confluence_url%"
)

if not "%cbf_default_browser%" == "" (
  echo.
  echo * Default browser: "%cbf_default_browser%"
)

if not "%cbf_default_text_editor%" == "" (
  echo.
  echo * Default text editor: "%cbf_default_text_editor%"
)

if not "%cbf_excel_filename%" == "" (
  echo.
  echo * Excel Filename: "%cbf_excel_filename%"
)

if not "%cbf_fc_path%" == "" (
  echo.
  echo * FC path: "%cbf_fc_path%"
)

if not "%cbf_filename%" == "" (
  echo.
  echo * Filename: "%cbf_filename%"
)

if not "%cbf_github_url%" == "" (
  echo.
  echo * Github URL: "%cbf_github_url%"
)

if not "%cbf_host_name%" == "" (
  echo.
  echo * Host name: "%cbf_host_name%"
)

if not "%cbf_instance_id%" == "" (
  echo.
  echo * Instance id: "%cbf_instance_id%"
)

if not "%cbf_ip%" == "" (
  echo.
  echo * IP Address: "%cbf_ip%"
)

if not "%cbf_jenkinsfile%" == "" (
  echo.
  echo * Jenkinsfile: "%cbf_jenkinsfile%"
)

if not "%cbf_jenkins_url%" == "" (
  echo.
  echo * Jenkins URL: "%cbf_jenkins_url%"
)

if not "%cbf_parameter%" == "" (
  echo.
  echo * Parameter: "%cbf_parameter%"
)

if not "%cbf_path%" == "" (
  echo.
  echo * Path: "%cbf_path%"
)

if not "%cbf_pem%" == "" (
  echo.
  echo * Pem: "%cbf_pem%"
)

if not "%cbf_repo%" == "" (
  echo.
  echo * Repo: "%cbf_repo%"
)

if not "%cbf_url%" == "" (
  echo.
  echo * URL: "%cbf_url%"
)

exit/b



:_ (!rfsp) (mov-6)