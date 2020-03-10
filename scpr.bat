:_

@echo off



:_

set filep=* User secure copy protocol (scp), function routing version.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

rem lu: Nov-26-2019 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Atomic function you wish to run.

echo.
echo %parameter_1%

exit/b



:_

:copy_war

set fp=* Copy War file to the EARM server.

rem lu: Feb-8-2019

rem This worked.

echo.
echo %fp%

call td earm

cd target

echo.
pscp -i %share-zone%\cart-np-key-feb-12-2019.ppk *.war zzadmin@10.168.78.58:/home/zzadmin/

exit/b



:_

:copy_test_file

set fp=* Copy test file to the EARM server.

rem lu: Mar-11-2019

rem This worked.

echo.
echo %fp%

call td s

echo.
pscp -i %share-zone%\cart-np-key-feb-12-2019.ppk jj_test_file.txt zzadmin@10.168.78.90:/home/zzadmin/

exit/b



:_

:copy_test_file_2

set fp=* Copy test file 2 using windows scp in the git folder.

rem lu: Mar-11-2019

rem This worked.

echo.
echo %fp%

call td super_git

echo.
scp -i %share-zone%\cart-np-key-feb-12-2019.pem c:\a\jj_test_file_2.txt zzadmin@10.168.78.90:/home/zzadmin/

exit/b



:_

:copy_test_3

set fp=* Copy test file 3 and fix the file's path using windows scp in the git folder.

rem lu: Mar-12-2019

rem This worked.

echo.
echo %fp%

call td super_git

echo.
scp -i %share-zone%\cart-np-key-feb-12-2019.pem jj_test_3.txt zzadmin@10.168.78.90:/home/zzadmin/

exit/b



:_

:copy_to_test_server_2

set fp=* Copy test file to server 2.

rem lu: Mar-12-2019

rem This worked.

echo.
echo %fp%

call td super_git

echo.
scp -i %share-zone%\cart-np-key-feb-12-2019.pem Mar-12-2019_10_48_AM.txt zzadmin@10.168.78.58:/home/zzadmin/

exit/b



:_

:copy_to_test_server_2

set fp=* Copy test file to server 2.

rem lu: Mar-12-2019

rem This worked.

echo.
echo %fp%

call td super_git

echo.
scp -i %share-zone%\cart-np-key-feb-12-2019.pem Mar-12-2019_10_48_AM.txt zzadmin@10.168.78.58:/home/zzadmin/

exit/b



:_

:copy_to_test_server_3

set fp=* Copy test file to server 2.

rem lu: Mar-12-2019

rem This worked.

echo.
echo %fp%

call td super_git

echo.
scp -i %share-zone%\cart-np-key-feb-12-2019.pem Mar-12-2019_10_48_AM.txt zzadmin@10.168.78.90:/home/zzadmin/

exit/b



:_

:copy_jar_to_sv3

set fp=* Copy jar file to server 3.

rem lu: Mar-12-2019

echo.
echo %fp%

call n super_git

echo.
%cbf_path%\scp -i %share-zone%\cart-np-key.pem cart-api-0.0.1-20190312.062025-60.jar zzadmin@10.168.78.90:/home/zzadmin/

exit/b



:_

:copy_test_file_sv3

set fp=* Copy test file to server 3.

rem lu: Mar-12-2019

echo.
echo %fp%

set file_to_upload=Mar-12-2019_10_06_AM.txt
set server_with_folder=zzadmin@10.168.78.90:/home/zzadmin/

call n super_git

echo.
%cbf_path%\scp -i %share-zone%\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:copy_test_file_sv4

set fp=* Copy test file to server 4.

rem lu: Apr-4-2019

echo.
echo %fp%

set file_to_upload=Apr-4-2019_6_28_PM.txt

set server_with_folder=zzadmin@10.168.78.24:/home/zzadmin/

call n super_git

echo.
%cbf_path%\scp -i %share-zone%\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:copy_test_file_sv4_np

set fp=* Copy test file to server 4 using the new nonprod key.

rem lu: Apr-4-2019

echo.
echo %fp%

set file_to_upload=Apr-4-2019_6_37_PM.txt

set server_with_folder=zzadmin@10.168.78.24:/home/zzadmin/

call n super_git

echo.
%cbf_path%\scp -i %share-zone%\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:copy_Nov-1-2019

set fp=* Copy a test file from your local drive to dvma at /etc/certs.

rem lu: Nov-1-2019

echo.
echo %fp%

echo Nov-1-2019 6:36 PM
set file_to_upload=Nov-1-2019_6_21_PM.txt

rem set server_with_folder=zzJJones@10.168.73.170:/etc/certs/
set server_with_folder=zzJJones@10.168.73.170

call n super_git

echo.
%cbf_path%\scp -i %share-zone%\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:copy_Nov-1-2019.2

set fp=* Copy a test file from your local drive to dvma.

rem lu: Nov-1-2019

echo.
echo %fp%

set file_to_upload=Nov-1-2019_6_21_PM.txt

set server_with_folder=zzJJones@10.168.73.170

call n super_git

echo.
%cbf_path%\scp -i %share-zone%\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:copy_Nov-1-2019.3

set fp=* Copy a test file from your local drive to dvma.

rem lu: Nov-1-2019

echo.
echo %fp%

call n super_git

set scp_path=%cbf_path%

set file_to_upload=Nov-1-2019_6_21_PM.txt

set server_with_folder=zzJJones@10.168.73.170

call td kl

echo.
@echo on
%scp_path%\scp -i %share-zone%\cart-np-key.pem %file_to_upload% %server_with_folder%
@echo off

exit/b



:_

:Nov-1-2019

set fp=* Copy test file.

rem lu: Nov-1-2019

rem This worked!

echo.
echo %fp%

set file_to_upload=Nov-1-2019_6_50_PM.txt
set server_with_folder=zs_ci_user@10.168.73.170:/home/zs_ci_user

call n super_git

echo.
@echo on
%cbf_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%
@echo off

exit/b



:_

:Nov-1-2019.2

set fp=* Copy test file.

rem lu: Nov-1-2019

echo.
echo %fp%

echo This worked!

set file_to_upload=C:\Users\JJones2\j\Share-Zone\Keystore Laboratory\Nov-1-2019_6_21_PM.txt

set server_with_folder=zs_ci_user@10.168.73.170:/home/zs_ci_user

call n super_git

echo.
@echo on
%cbf_path%\scp -i %share-zone%\pems\cart-np-key.pem "%file_to_upload%" %server_with_folder%
@echo off

exit/b



:_

:Nov-1-2019.3

set fp=* Copy test file.

rem lu: Nov-1-2019

rem This worked!

echo.
echo %fp%

set file_to_upload=Nov-1-2019_6_21_PM.txt

set server_with_folder=zs_ci_user@10.168.73.170:/home/zs_ci_user

call n super_git

set scp_path=%cbf_path%

call td kl

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem "%file_to_upload%" %server_with_folder%
@echo off

exit/b



:_

:Nov-1-2019.4

set fp=* Copy test file. See ^fyscp for better examples.

rem lu: Nov-1-2019

rem This worked!

echo.
echo %fp%

set file_to_upload=truststore.jks

set server_with_folder=zs_ci_user@10.168.73.170:/home/zs_ci_user

call n super_git

set scp_path=%cbf_path%

call td kl

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem "%file_to_upload%" %server_with_folder%
@echo off

exit/b



:_

:scp_api

set fp=* Copy API o specified server.

rem lu: Aug-14-2019

echo.
echo %fp%

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

call tdc api

cd build\libs\

rem set file_to_upload=cart-api-0.0.1-SNAPSHOT.jar
set file_to_upload=cart-api-1.0.0.jar

set server_with_folder=zs_ci_user@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:scp_api_j

set fp=* Copy API  to specified zzJJones server.

rem lu: Aug-14-2019

echo.
echo %fp%

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

call td lib

set file_to_upload=cart-api.jar

set server_with_folder=zzJJones@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:scp_ui

set fp=* Copy UI zip to specified server.

echo.
echo %fp%

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

call td cart

cd icecart-portal-client\dist\icecart-portal-client

set file_to_upload=ui.zip

set server_with_folder=zs_ci_user@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:scp_ui_j

set fp=* Copy UI zip to specified zzJJones server.

echo.
echo %fp%

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

call td mazip

set file_to_upload=ui.zip

set server_with_folder=zzJJones@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:scp_ui_a

set fp=* Copy UI zip to specified admin server.

echo.
echo %fp%

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

call td mazip

set file_to_upload=ui.zip

set server_with_folder=zzadmin@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:scp_json

set fp=* Copy Cart.json to specified server.

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2, the server id, is a required field.
  exit/b
)

set cbf_host_name=
set cbf_ip=

call ni %2

if "%cbf_host_name%" == "" (
  echo.
  echo * Error: Hostname not found.
  exit/b
)

if "%cbf_ip%" == "" (
  echo.
  echo * Error: IP address not found.
  exit/b
)

call td j

cd chef_env

set file_to_upload=cart.json

set server_with_folder=zs_ci_user@%cbf_ip%:~

call n super_git

set scp_path=%cbf_path%

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:scp_jks

set fp=* Copy jks file.

rem lu: Nov-5-2019

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

call td kl
set file_to_upload=truststore.jks

set server_with_folder=zs_ci_user@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

call td kl

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem "%file_to_upload%" %server_with_folder%
@echo off

rem Go into the /etc/certs folder and run the following command.
rem sudo cp /tmp/truststore.jks .

exit/b



:_

:scp_ssl_conf

set fp=* To a server, transfer ssl.conf.

rem lu: Nov-7-2019

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

call td ssl
set file_to_upload=ssl.conf
set server_with_folder=zs_ci_user@%cbf_ip%:/tmp

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem "%file_to_upload%" %server_with_folder%
@echo off

rem Go into the /etc/httpd/conf.d folder and run the following command.
rem sudo cp /tmp/ssl.conf .

exit/b



:_

:secret

set fp=* Transfer the secret file to a server.

rem lu: Mar-10-2020

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
  echo * Error: Label not found. Nov-26-2019 2:44 PM
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_ip%" == "" (
  echo.
  echo * Error: cbf_ip is not defined. Nov-26-2019 2:44 PM
  exit/b
)

if not defined cbf_host_name (
  echo.
  echo * Error: Cbf_hostname is not defined. Nov-26-2019 2:44 PM
  exit/b
)

call n super_git

set scp_path=%cbf_path%

call td pems
set file_to_upload=cart_dv_secret.sec
set server_with_folder=zzadmin@%cbf_ip%:/tmp

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem "%file_to_upload%" %server_with_folder%
@echo off

exit/b


>< >< Footnote:

Outcome: This worked on Mar-10-2020.

After the file has be copied to the target server. SSH into the box with the zzadmin account 
and copy the secret file to the correct folder.

cd /etc
sudo mkdir certs

sudo cp /tmp/cart_dv_secret.sec .





:_ (!efscpr, !rfsp) (mov-7)
