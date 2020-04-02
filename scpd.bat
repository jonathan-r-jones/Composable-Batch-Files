:_

@echo off



:_

set filep=* Uses the scp command to copy files from Linux servers, a.k.a. download version of scp.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "" goto help

if "%~2" == "" goto help

if "%~3" == "" goto help

goto validate_input



:_

:help

rem lu: Jan-13-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Server alias.

set parameter_2=Parameter 2: File to download.

set parameter_3=Parameter 3: User to use, a, c or j are the options.

set parameter_4=Parameter 4 (Optional): Destination folder. If left blank, the tmp folder is used.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo %parameter_3%

echo.
echo %parameter_4%

echo.
echo Examples

echo.
echo Example 1: 

exit/b



:_

:validate_input

call m validate_server_alias %~1

if %errorlevel% gtr 0 (
  exit/b
)

if "%~3" == "a" (
  set cbf_user=zzadmin
)

if "%~3" == "c" (
  set cbf_user=zs_ci_user
)

if "%~3" == "j" (
  set cbf_user=zzJJones
)

if "%cbf_user%" == "" (
  echo.
  echo * Error: CBF User is blank.
  exit/b 1
)

if "%~4" == "" (
  set cbf_destination_folder=%tmp%
)

echo.
echo * CBF Destination Folder: %cbf_destination_folder%

echo.
echo * CBF User: %cbf_user%

goto main_function



:_

:main_function

set file_to_download=%~2
set cbf_source_information=%cbf_user%@%cbf_ip%:%file_to_download%

echo.
@echo on
scp -i %share-zone%\pems\cart-np-key.pem %cbf_source_information% "%cbf_destination_folder%"
@echo off

exit/b


:_ (!rfsp) (mov-7)