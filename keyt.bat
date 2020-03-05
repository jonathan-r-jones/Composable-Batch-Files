:_ (!keyt)

@echo off



:_

set filep=* Keytool wrapper.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

rem lu: 

echo.
echo Usage: %0 [atomic function name]

set parameter_1=Parameter 1: Atomic function name.

echo.
echo %parameter_1%

echo.
echo Addition keytool information can be found in k.bat.

exit/b



:_

:gen_key

set fp=* Run the JDK keytool utility program.

rem lu: May-26-2019

echo.
echo %fp%

echo.
keytool -genkey -v -keystore dtg-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

exit/b



:

:keyt_May-27-2019

set fp=* Run the JDK keytool utility program for the App2 solution.

echo.
echo %fp%

echo.
keytool -genkey -v -keystore app2-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

exit/b



:_

:May-27-2019.5

set fp=* Run the JDK keytool utility program for the App5 solution.

echo.
echo %fp%

echo.
keytool -genkey -v -keystore app5-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

exit/b



:_

:May-27-2019.6b

set fp=* Run the JDK keytool utility program for the App6 solution.

echo.
echo %fp%

echo.
keytool -genkey -v -keystore app6b-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

exit/b



:_

:May-27-2019.6d

set fp=* Run the JDK keytool utility program for the App6 solution.

echo.
echo %fp%

echo.
keytool -genkey -v -keystore app6d-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

exit/b



:_

:May-27-2019.7

set fp=* Run the JDK keytool utility program for the App6 solution.

echo.
echo %fp%

echo.
keytool -genkey -v -keystore app7-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

exit/b



:_

:list_agg

set fp=* List certs.

rem lu: Oct-31-2019

echo.
echo %fp%

cd /d C:\Program Files\Java\jdk1.8.0_191\jre\lib\security

echo.
keytool -list -keystore cacerts

rem Password is "changeit", the default.

exit/b



:_

:listl

set fp=* List certs on Linux.

rem lu: Oct-31-2019

echo.
echo %fp%

rem In Linux, the cacerts keystore file is located in the <RA Home>/jre/lib/security folder 
rem but it cannot be found on AIX.

cd 

echo.
keytool -list -keystore cacerts

exit/b



:_

:l

set fp=* List certs.

rem lu: Nov-1-2019

echo.
echo %fp%

echo.
keytool -list -keystore %2

exit/b



:_+ Adding Certs



::_

:add_cert

set fp=* Add cert to cacerts file.

rem lu: Jun-20-2019

echo.
echo %fp%

call td s

echo.
keytool -import -alias example -keystore "C:\Program Files\Java\jdk1.8.0_191\jre\lib\security\cacerts" -file nexus.cer

exit/b



::_

:add_cert_2

set fp=* Add cert to cacerts file by Matt A.

rem lu: Oct-31-2019

echo.
echo %fp%

cd /d C:\Program Files\Java\jdk1.8.0_191\jre\lib\security

echo.
keytool -import -alias cart_dev -keystore cacerts -file cart_dev_certificate.cer

exit/b



::_

:add_cert_Nov-1-2019

set fp=* Add cert to jks file.

rem lu: Nov-1-2019

echo.
echo %fp%

echo.
keytool -import -alias imm_fqt -keystore truststore.jks -file fqt_imm.cer

exit/b



::_

:add_cert_Mar-5-2020

set fp=* Add cert to jks file.

rem lu: Mar-5-2020

echo.
echo %fp%

echo.
keytool -import -alias nexus -keystore truststore.jks -file nexus-Mar-5-2020.cer

exit/b


>< >< Footnote: Before picture of c:\dev\certs\truststore.jks

Your keystore contains 6 entries

ers-fqt, Aug 6, 2019, trustedCertEntry,
Certificate fingerprint (SHA1): BD:BC:FB:5F:B4:DB:A6:E5:28:C4:BE:F4:3A:71:CE:C6:9B:CC:C6:18
rekeyed_treasury, Aug 1, 2019, trustedCertEntry,
Certificate fingerprint (SHA1): FA:39:2E:A2:97:2E:B4:ED:D1:92:99:32:60:2A:19:09:AC:95:58:BC
rekeyed, Aug 1, 2019, trustedCertEntry,
Certificate fingerprint (SHA1): 58:08:5A:64:E1:81:57:3F:4F:D9:17:C5:C0:21:EB:1C:F3:44:DD:5F
ers, Aug 1, 2019, trustedCertEntry,
Certificate fingerprint (SHA1): 2D:23:B3:59:71:C4:1C:A0:4C:61:CD:E3:22:A4:07:5F:39:43:6C:B8
brs, Feb 22, 2019, trustedCertEntry,
Certificate fingerprint (SHA1): FB:6E:7A:77:14:82:84:CA:A0:A5:0B:1D:7C:BE:9A:3F:35:A0:FE:61
mykey, Apr 2, 2019, trustedCertEntry,
Certificate fingerprint (SHA1): BE:27:87:5D:A1:A9:22:73:08:5A:E4:AC:68:A0:81:6F:8A:1F:7E:E0



:_+ List Certs



::_

:listj

set fp=* List certs in the truststore jks.

rem lu: Nov-1-2019

echo.
echo %fp%

echo.
keytool -list -keystore truststore.jks

exit/b



::_

:list

:listc

set fp=* List certs in cacerts.

rem lu: Mar-5-2020

echo.
echo %fp%

echo.
keytool -list -keystore cacerts

exit/b

>< >< Footnote:

After size: ? entries.
Before size: 95 entries.



:_ (!efkeyt, !rfsp) (mov-7)
