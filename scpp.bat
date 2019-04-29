:_

@echo off



:_

set filep=* Secure Copy Protocol wrapper.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~2" == "" goto help

if "%~1" == "/?" goto help

goto preprocessor



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Server alias.

set parameter_2=Parameter 2: File in the current folder to up upload. 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:preprocessor

set fp=* Initialize key variables used by this file.

rem echo.
rem echo %fp%

call m reset_cbf_variables

call n %1

call m save_location

call td pems

set cbf_pem=%cd%\%cbf_pem%

call m restore_location

set cbf_file_to_upload=%2



:_

set fp=* Guard clause.

if "%cbf_file_to_upload" == "" (
   echo.
   echo "* Error: CBF File to upload is not set."
   exit/b
)

if not exist "%cbf_file_to_upload%" (
   echo.
   echo "* Error: CBF File to upload does not exist."
   exit/b
)

if "%cbf_ip%" == "" (
   echo.
   echo "* Error: CBF IP does not exist."
   exit/b
)

if not exist "%cbf_pem%" (
   echo.
   echo "* Error: CBF PEM does not exist."
   exit/b
)

if exist "%cbf_url%" (
   echo.
   echo "* Error: CBF URL is not set."
   exit/b
)



:_

set fp=* Main function.

rem lu: Apr-29-2019

set server_with_folder=zzadmin@%cbf_ip%:/home/zzadmin/

call n super_git

set scp_path=%cbf_path%

echo.
%scp_path%\scp -i %cbf_pem% %cbf_file_to_upload% %server_with_folder%
rem qq-1

exit/b (!rfsp) (mov-2)



:_