:_

@echo off



:_

set filep=* Uses the scp command to copy files to the Linux servers.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Examples

echo.
echo Example 1: 

exit/b



:_

:validate_input

if "%~1" == "" (
  echo.
  echo 
)



:_

:main_function

rem lu: Dec-13-2019

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2, the server id, is a required field.
  exit/b
)

set cbf_ip=

call n %2

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Nov-5-2019 1:40 PM
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_ip%" == "" (
  echo.
  echo * Error: cbf_ip is not defined. Nov-5-2019 1:41 PM
  exit/b
)

if not defined cbf_host_name (
  echo.
  echo * Error: Cbf_hostname is not defined. Nov-5-2019 1:42 PM
  exit/b
)

call n super_git

set scp_path=%cbf_path%

set file_to_upload=%~2
set server_with_folder=zs_ci_user@%cbf_ip%:/tmp

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem "%file_to_upload%" %server_with_folder%
rem qq-1
@echo off


rem Work in progress. Nov-15-2019

if "%~2" == "" (
  echo.
  echo * Percent 2, the server id, is a required field.
  exit/b
)

set cbf_ip=

call ni %2

if "%cbf_ip%" == "" (
  echo.
  echo * Error: IP address not found.
  exit/b
)

if "%cbf_host_name%" == "" (
  echo.
  echo * Error: Hostname not found.
  exit/b
)

call n git_user_bin

set git_user_bin=%cbf_path%

call n shl

@echo on
%git_user_bin%\ssh -i %cbf_full_pem% zs_ci_user@%cbf_ip% 'cat cart.json'>%cbf_log_file%
@echo off

call el shl

exit/b



:_ (!rfsp) (mov-7)