:_

@echo off



:_

set fp=* Add echo.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

if "%1" == "shared_list" goto %1

echo ** Transform directory to . . .
echo.

goto %1



:_

rem Metadata

rem File Purpose: This Transform Directory (td) batch file is intended to be used for 
rem Mercury transform directory related tasks.

rem Batch File Style: Parameter-Routing Driven

rem To run a command, use a single command line parameter corresponding to its batch file 
rem label, e.g. m run_sencha_app_build_testing would run the code block at that label.

rem Usage Note: Do not make internal calls to a composite function because that could cause a 
rem circular reference.

rem Having a written version of your work allows you to learn and improve over time.



:_

:exit

set fp= * Exit.

rem echo.
rem echo %fp%

exit



:_

:exitb

set fp= * Exit batch file but not command window.

rem echo.
rem echo %fp%

exit /b



:_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

title Done! - . . . paused . . . Press any key to continue

pause

exit



:_

:exitpb

set fp= * Pause then exit the batch file but not the command window.

rem echo.
rem echo %fp%

pause

exit /b



:_

:start

set fp=* Windows Startup.

rem fcd: May-9-2017

echo %fp%

cd /d "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"

goto exitb



:_

:stan

set fp=* Open folder standalone.

rem fcd: May-9-2017

echo %fp%

call m set_wildfly_location

cd /d %wildfly_location%\standalone\configuration

goto exitb



:_

:sr

set fp=* Open folder server.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

cd /d %wildfly_location%

goto exitb



:_

:ti

set fp=* Tirem.

rem FCD: Mar-6-2017

echo %fp%

cd /d c:\projects\netbeans\mercury6\mercury-tirem

goto exitb



:_

:m6

set fp=* Mercury 6.

rem FCD: Mar-15-2017

echo %fp%

cd /d c:\projects\netbeans\mercury6

goto exitb



:_

:depl

set fp=* Deployment.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

cd /d %wildfly_location%\standalone\deployments

goto exitb



:_

:targ

set fp=* Target. (WAR file creation location)

rem FCD: Apr-7-2017

echo %fp%

cd /d C:\projects\netbeans\mercury6\Mercury-web\target

goto exitb



:_

:pu

set fp=* Public.

rem FCD: Apr-14-2017

echo %fp%

cd /d C:\projects\netbeans\sencha\HTML5Application\public_html

goto exitb



:_

:bk

:bu

set fp=* Mercury backups.

rem fcd: May-12-2017

echo %fp%

cd /d c:\mercury\backups

goto exitb



:_

:se

:s6

:sencha

set fp=* Sencha.

rem FCD: Mar-22-2017

echo %fp%

cd /d c:\projects\netbeans\sencha

goto exitb



:_

:cd

:ex

:here

:this

:x

set fp=* Current directory.

rem fcd: May-9-2017

echo %fp%

echo.
cd

goto exitb



:_

:hex_root

set fp=* Hex root.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

cd /d %wildfly_location%\standalone\tmp\vfs\temp

goto exitb



:_

:hex

:open_hex_folder

:set_wildfly_dynamic_folder

set fp=* Set WildFly dynamic temporary folder location.

rem Function Creation Date: Feb-9-2017

echo %fp%

call m set_wildfly_location

cd /d %wildfly_location%\standalone\tmp\vfs\temp

dir/b>%temp%\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_1=<%temp%\environment_variable_temporary_storage.txt

cd /d %dynamic_server_location_part_1%

dir/b>%temp%\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_2=<%temp%\environment_variable_temporary_storage.txt

cd /d %dynamic_server_location_part_2%

set wildfly_dynamic_folder=%wildfly_location%\standalone\tmp\vfs\temp\%dynamic_server_location_part_1%\%dynamic_server_location_part_2%

goto exitb



:_

:heatmap

set fp=* Heatmap. Where TIREM puts its image files.

rem skw: Heatmap image generation location.

rem fcd: May-17-2017

echo %fp%

call %0 hex
echo.
cd /d .\resources\WorldWind\images

goto exitb



:_

:nb

:prj

:proj

:projects

set fp=* Mercury projects.

rem fcd: May-12-2017

echo %fp%

cd /d c:\projects\netbeans

goto exitb



:_

:log

set fp=* Log.

rem fcd: May-22-2017

echo %fp%

call m set_wildfly_location

cd /d %wildfly_location%\standalone\log

goto exitb



:_

:do

:doc

:docs

set fp=* Documentation.

rem fcd: May-25-2017

echo %fp%

cd /d c:\mercury\documentation

goto exitb



:_

:wildr

set fp=* WildFly resources folder.

rem fcd: Jun-2-2017

echo %fp%

call td hex

cd /d resources

goto exitb



:_

:mac

set fp=* MacOS dropbox folder.

rem fcd: Jun-22-2017

echo %fp%

cd /d C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh

goto exitb



:_

set fp=* Public folder.

rem fcd: Jun-22-2017

echo %fp%

cd /d C:\projects\netbeans\sencha\HTML5Application\public_html

goto exitb



:_

:mysql

set fp=* MySql ProgramData.

rem fcd: Jun-26-2017

echo %fp%

cd /d C:\ProgramData\MySQL\MySQL Server 5.7

goto exitb



:_

:ldap

set fp=* Ldap.

rem fcd: Jul-5-2017

echo %fp%

cd /d C:\Mercury\LDAP\OpenDS-2.2.1

goto exitb



:_

:jh

set fp=* Java Home.

rem fcd: Jul-6-2017

rem This is useful for new installs.

echo %fp%
echo.

cd /d %java_home%

goto exitb



:_

:mh

set fp=* Maven Home.

rem fcd: Jul-7-2017

rem This is useful for new installs.

echo %fp%
echo.

cd /d %maven_home%

goto exitb



:_

:ojh

set fp=* Opends Java Home.

rem fcd: Jul-6-2017

rem This is useful for new installs.

echo %fp%
echo.

cd /d %opends_java_home%

goto exitb



:_

:usr

set fp=* User profile.

rem fcd: Jul-7-2017

echo %fp%

cd /d %userprofile%

goto exitb



:_

:ext

set fp=* Ext.

rem fcd: Jul-7-2017

echo %fp%

cd /d C:\projects\netbeans\sencha\HTML5Application\public_html\ext

goto exitb



:_

:mr

:merc

set fp=* Mercury.

rem fcd: Jul-7-2017

echo %fp%

cd /d C:\mercury

goto exitb



:_

:m2

set fp=* M2.

rem fcd: Jul-7-2017

echo %fp%

cd /d %userprofile%\.m2

goto exitb



:_

:m2h

set fp=* M2 Home.

rem fcd: Jul-7-2017

echo %fp%

cd /d %m2_home%

goto exitb



:_

:stdr

set fp=* Sencha class folder on Dropbox.

rem fud: Aug-4-2017

echo %fp%

cd /d C:\Users\jonathan.r.jones\Documents\dropbox\IT\Sencha Class on Aug-7-2017

goto exitb



:_

:st

set fp=* Sencha class folder.

rem fud: Aug-4-2017

echo %fp%

cd /d C:\SenchaTraining

goto exitb



:_

:war

set fp=* In the future please use "targ" instead of "war" for this folder.

rem fud: Aug-7-2017

echo %fp%

call %0 targ

goto exitb



:_

:labs

set fp=* Sencha training labs.

rem fud: Aug-8-2017

echo %fp%

cd /d c:\senchatraining\labs

goto exitb



:_

:sdk

set fp=* Android SDK.

rem fud: Aug-8-2017

echo %fp%

cd /d C:\Users\jonathan.r.jones\AppData\Local\Android\sdk

goto exitb



:_

:y

set fp=* Yelp Extplorer.

rem fud: Aug-15-2017

echo %fp%

cd /d c:\senchatraining\labs\yelpextplorer

goto exitb



:_

:dupr

:pudr

set fp=* Public @ Dropbox.

rem fud: Aug-15-2017

echo %fp%

cd /d C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha\HTML5Application\public_html

goto exitb



:_

:s6dr

:drs6

set fp=* S6 @ Dropbox.

rem fud: Aug-15-2017

echo %fp%
echo.

cd /d C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha

goto exitb



:_

:nc

:util

:utilr

set fp=* Utils relative path.

rem fud: Aug-17-2017

echo %fp%

cd /d C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

goto exitb



:_

:fgt

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo %fp%

cd /d %aa%\forgittesting

goto exitb



:_

:cutils

set fp=* Classic utils.

rem lu: Sep-6-2017

echo %fp%
echo.

cd /d C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

goto exitb



:_

:mutils

set fp=* Modern utils.

rem fud: Aug-17-2017

echo %fp%
echo.

cd /d C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

goto exitb



:_+ AGI Licenses



::_

:agi

set fp=* AGI Licenses.

rem lu: Nov-9-2017

echo %fp%

cd /d C:\mercury\agi licenses

goto exitb



::_

:agi_ejb

set fp=* AGI License file on development machine.

rem lu: Sep-26-2017

echo %fp%

cd /d C:\projects\netbeans\mercury6\Mercury-ejb\src\main\resources

goto exitb



::_

:agis

set fp=* AGI License file on the server.

rem lu: Sep-26-2017

echo %fp%

cd /d C:\Mercury\Server\wildfly-9.0.2.Final\standalone\lib

goto exitb



:_

:mob

set fp=* Mobility.

rem lu: Oct-23-2017

echo %fp%

cd /d C:\Mercury\Mobility

goto exitb



:_

:lat

:lwf

set fp=* Latest WAR File.

rem lu: Oct-24-2017

echo %fp%

cd /d C:\Mercury\Latest WAR File

goto exitb



:_

:ql

set fp=* Quickla.

rem lu: Oct-30-2017

echo %fp%

cd /d %savannah%\cmac\source code

goto exitb



:_

:wir1

set fp=* Wildfly Image Resource 1.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

cd /d resources\images

goto exitb



:_

:wir2

set fp=* Wildfly Image Resource 2 - classic.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

cd /d classic\resources\images

goto exitb



:_

:wir3

set fp=* Wildfly Image Resource 3 - modern.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

cd /d modern\resources\images

goto exitb



:_

:netcon_sr

set fp=* Netconfig on server.

rem lu: Nov-14-2017

echo %fp%

call %0 hex

cd /d modern\resources\images

goto exitb



:_+

:help

set fp=* Transform directory.

rem fcd: May-13-2017

echo %fp%

echo.
echo Usage: td [single parameter]



::_

:shared_list

echo.
echo     Parameter  Target
echo -------------  --------------------------------------------------
echo            ba  c:\mercury\batch_files
echo            cd  (Current Directory)
echo            bu  c:\mercury\backups
echo          depl  [wildfly_location]\standalone\deployments
echo       heatmap  \standalone\tmp\vfs\temp\[dynamically generated]
echo           hex  \standalone\tmp\vfs\temp\[dynamically generated]
echo      hex_root  [wildfly_location]\standalone\tmp\vfs\temp
echo            m2  %userprofile%\.m2
echo            m6  c:\projects\netbeans\mercury6
echo   nb [or] prj  c:\projects\netbeans
echo            pu  c:\netbeans\sencha\HTML5Application\public_html
echo            s6  c:\projects\netbeans\sencha
echo            sr  [wildfly_location]
echo          stan  [wildfly_location]\standalone\configuration
echo          targ  \projects\netbeans\mercury6\Mercury-web\target
echo            ti  \projects\netbeans\mercury6\mercury-tirem

goto exitb



:_

:psc

set fp=* Paul Sheriff Course.

rem lu: Dec-18-2017

echo %fp%

cd /d "%dropbox%\it\Paul Sheriff Unit Testing Course\UnitTestProject4\bin\debug"

goto exitb



:_

:mecf

set fp=* Multi-Edit Config Files Dated Backups.

rem lu: Jan-3-2018

echo %fp%

cd /d "%dropbox%\IT\Multi-Edit\Multi-Edit Config Files Dated Backups"

goto exitb



:_

:a

set fp=* A folder.

rem lu: Dec-12-2017

echo %fp%

cd /d c:\a

goto exitb



:_

:daa

set fp=* AA folder on d:.

rem lu: Dec-12-2017

echo %fp%

cd /d d:\aa

goto exitb



:_

:tt

set fp=* Tick Tock Menu Maker.

rem lu: Jan-15-2018

echo %fp%

cd /d %dropbox%\it\ticktockmenumaker

goto exitb



:_

:aa

set fp=* Aa.

rem lu: Jan-15-2018

echo %fp%

cd /d %aa%

goto exitb



:_

:hw

set fp=* Hello World.

rem lu: Jan-16-2018

echo %fp%

cd /d %dropbox%\it\HelloXamarinFormsWorld

goto exitb



:_

:ba

:cbf

set fp=* Composable batch file.

rem lu: Jan-17-2018

echo %fp%

cd /d %dropbox%\it\composable_batch_files

goto exitb



:_ (!rfsp) (mov-9)