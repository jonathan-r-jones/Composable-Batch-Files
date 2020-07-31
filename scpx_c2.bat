:_

@echo off



:_

set filep=* SCPX consumer with dv target.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Server alias.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Task

echo.
echo Examples:

echo.
echo %0 sr77

exit/b



:_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______




:_

:main_function

set fp=* Add dv secret file to new team s60 server.

echo.
echo %fp%

rem Parameter 1: Instance Alias.

call m validate_instance %1

if %errorlevel% gtr 0 exit/b

call td pems

call scpx %1 cart_dv_secret.sec a

exit/b

>< >< Footnote:

After the file has be copied to the target server. SSH into the box with the zzadmin account 
and copy the secret file to the correct folder.

rem qq
cd /etc

sudo mkdir certs

cd certs

sudo cp /tmp/cart_dv_secret.sec .

ll



:_ (!rfsp) (mov-7)