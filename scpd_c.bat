:_

@echo off



:_

set filep=* Consumer of the scpx file.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~2" == "/?" goto help

goto %1



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function route to execute.

echo.
echo %parameter_1%

echo.
echo Batch file style: Function routing.

exit/b



:_

:scp_Jun-12-2019

set fp=* Copy test.

echo.
echo %fp%

set file_to_upload=Jun-12-2019_4_43_PM.txt

call ni sr30

set server_with_folder=zs_ci_user@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

call td a

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%
@echo off

exit/b



:_

:scp_Jun-12-2019.2

set fp=* Copy test.

echo.
echo %fp%

set file_to_upload=Jun-12-2019_4_43_PM.txt

call ni sr30

set server_with_folder=zs_ci_user@%cbf_ip%:~

call n super_git

set scp_path=%cbf_path%

call td a

echo.
@echo on
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%
@echo off

exit/b



:_

:scp_Jun-14-2019

set fp=* Copy latest API jar to dev server.

echo.
echo %fp%

set file_to_upload=cart-api-0.0.1-20190612.145140-447.jar

call ni sr10

set server_with_folder=zzjjones@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

call td dn

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:scp_Jun-14-2019.2

set fp=* Copy latest UI jar to dev server.

echo.
echo %fp%

set file_to_upload=cart-ui-0.0.1-20190612.145147-93.jar

call ni sr10

set server_with_folder=zzjjones@%cbf_ip%:/tmp

call n super_git

set scp_path=%cbf_path%

call td dn

echo.
%scp_path%\scp -i %share-zone%\pems\cart-np-key.pem %file_to_upload% %server_with_folder%

exit/b



:_

:Dec-18-2019

set fp=* Add test file to desl.

rem lu: Dec-18-2019

echo.
echo %fp%

call td a

call scpx desl Dec-18-2019_11_32_AM.txt c

exit/b



:_

:Dec-18-2019_1_24_PM

set fp=* Add test file to fqam.

echo.
echo %fp%

call td a

call scpx fqam Dec-18-2019_11_32_AM.txt j

exit/b



:_

:Dec-18-2019_1_29_PM

set fp=* Add fq secret file to fqam.

echo.
echo %fp%

call td pems

call scpx fqam cart_fq_secret.sec j

exit/b



:_

:Dec-18-2019_2_37_PM

set fp=* Add fq secret file to new fqam.

echo.
echo %fp%

call td pems

call scpx fqam cart_fq_secret.sec j

rem: sudo cp /tmp/cart_fq_secret.sec .

exit/b



:_

:Dec-19-2019_12_58_PM

set fp=* Add fq secret file to new fqsl.

echo.
echo %fp%

call td pems

call scpx fqsl cart_fq_secret.sec a

rem: sudo cp /tmp/cart_fq_secret.sec .

exit/b



:_

:Jan-9-2020_4_55_PM

set fp=* Add test file to Fqt.

echo.
echo %fp%

call td a

call scpd fqma Jan-9-2020_5_04_PM.txt c

rem: sudo cp /tmp/cart_fq_secret.sec .

exit/b



:_

:Jan-10-2020_3_34_PM

set fp=* Add test file to Fqt.

echo.
echo %fp%

call td a

call scpd fqsl Jan-10-2020_3_34_PM.txt c

rem: sudo cp /tmp/cart_fq_secret.sec .

exit/b



:_ (!rfsp) (mov-7)
