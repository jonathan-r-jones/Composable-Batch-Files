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

:add_cert

set fp=* Add cert to cacerts file.

rem lu: Jun-20-2019

echo.
echo %fp%

call td s

echo.
keytool -import -alias example -keystore "C:\Program Files\Java\jdk1.8.0_191\jre\lib\security\cacerts" -file nexus.cer

exit/b



:_

:add_cert_2

set fp=* Add cert to cacerts file by Matt A.

rem lu: Oct-31-2019

echo.
echo %fp%

cd /d C:\Program Files\Java\jdk1.8.0_191\jre\lib\security

echo.
keytool -import -alias cart_dev -keystore cacerts -file cart_dev_certificate.cer

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

:add_cert_Nov-1-2019

set fp=* Add cert to jks file.

rem lu: Nov-1-2019

echo.
echo %fp%

echo.
keytool -import -alias imm_fqt -keystore truststore.jks -file fqt_imm.cer

exit/b



:_

:list

set fp=* List certs.

rem lu: Nov-1-2019

echo.
echo %fp%

echo.
keytool -list -keystore truststore.jks

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



:_ (!efkeyt, !rfsp) (mov-7)