:_

@echo off



:_

set filep=* Consumer of the scpx file.

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



:_ (!rfsp) (mov-7)