:_

@echo off



:_

set filep=* Nickname dictionary that sets the environment variables corresponding to a given unique nickname parameter.



:_

set fp=* In order to promote freshness, reset the error level.

ver>nul



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Last Updated: May-8-2018

echo.
echo The filename stands for: Nickname or Alias dictionary.

echo.
echo Usage: %0 [single parameter]

echo.
echo Parameter 1: Function to execute.

echo.
echo In the function block corresponding to the label, you can set any or all 
echo of the CBF environment variables. Typically this batch file would be 
echo called by echo a different batch file looking to set a particular CBF 
echo environment variable. However, if you call it yourself from the command 
echo line, it will set the variable plus it will describe itself.

echo.
echo Notes: I kept the facade dictionaries because they help make clear the 
echo author's intent when calling which variable is being set.

echo.
echo Parm/Nickname  Target
echo -------------  -----------------------------------------------------------
echo             a  c:\a
echo            ba  c:\mercury\batch_files
echo            bu  c:\mercury\backups
echo           cbf  Composable Batch Files.
echo         cbfgp  Composable Batch Files via GitHub pages.
echo           cnn  CNN.com
echo           cwp  ContactsWidget for Phone
echo           cwt  ContactsWidget for Tablet
echo          depl  [wildfly_location]\standalone\deployments
echo            fx  Firefox
echo             g  %COMPOSABLE_BATCH_FILES%\g.bat
echo           git  GitHub.com
echo         gpcbf  Google Pages for Composable Batch Files on GitHub
echo       heatmap  \standalone\tmp\vfs\temp\[dynamically generated]
echo           hex  \standalone\tmp\vfs\temp\[dynamically generated]
echo      hex_root  [wildfly_location]\standalone\tmp\vfs\temp
echo            j1  %temp%\j1.txt
echo            j2  %temp%\j2.txt
echo            kr  Chrome
echo           log  %wildfly_location%\standalone\log\server.log
echo             m  %COMPOSABLE_BATCH_FILES%\m.bat
echo            me  Multi-Edit
echo            m2  %userprofile%\.m2
echo            m6  c:\projects\netbeans\mercury6
echo   nb [or] prj  c:\projects\netbeans
echo            no  Notepad
echo            np  Notepad++
echo            pf  c:\program files
echo       pom_ear  \projects\netbeans\mercury6\Mercury-ear\pom.xml
echo       pom_ejb  \projects\netbeans\mercury6\Mercury-ejb\pom.xml
echo      pom_root  \projects\netbeans\mercury6\pom.xml
echo       pom_web  \projects\netbeans\mercury6\Mercury-web\pom.xml
echo     port_3306  Used to close open port 3306.
echo            pu  c:\netbeans\sencha\HTML5Application\public_html
echo            rm  GitHub Readme.md file.
echo             s  %COMPOSABLE_BATCH_FILES%\s.bat
echo            s6  c:\projects\netbeans\sencha
echo            sm  Sublime
echo            sr  [wildfly_location]
echo          stan  Standalone.xml, which is a WildFly config file.
echo            sw  \classic\src\view\dashboard\SystemWidget.js
echo          targ  \projects\netbeans\mercury6\Mercury-web\target
echo            td  %COMPOSABLE_BATCH_FILES%\td.bat
echo          temp  User's temp.
echo            ti  \projects\netbeans\mercury6\mercury-tirem
echo            vs  Visual Studio.

exit/b



:_

Metadata: Track Size (!tsn)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

:Aug-24-2018   5,148     60,394      300

:Jun-13-2018   3,261     36,243      194



:_ Begin body. (!bb)



:_

:edsw

:system_widget

set fp=SystemWidget.js.

rem FCD: Apr-7-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\SystemWidget.js

exit/b



:_

:pom_root

set fp=Pom root.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\pom.xml

exit/b



:_

:pom_ear

set fp=Pom Ear.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ear\pom.xml

exit/b



:_

:pom_ejb

set fp=Pom Ejb.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ejb\pom.xml

exit/b



:_

:pom_web

set fp=Pom Web.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-web\pom.xml

exit/b



:_

:td

set fp=* td.bat.

rem FCD: May-13-2017

echo.
echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\td.bat

exit/b



:_

:tags

:update_tags

set fp=Update tag files.

rem Tag 6.2017.5.6.1200 for successful production deployment

rem fcd: May-8-2017

echo.
echo %fp%

call %0 pom_root %2

call %0 pom_ear %2

call %0 pom_ejb %2

call %0 pom_web %2

call %0 system_widget %2

exit/b



:_

:settings_xml

set fp=* M2's settings.xml file.

rem lu: Nov-21-2017

echo.
echo %fp%
echo.

set cbf_filename=%userprofile%\.m2\settings.xml

exit/b



:_

:cw

:edcw

:edit_contacts_widget

set fp=ContactsWidget.js.

rem FCD: Apr-7-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\ContactsWidget.js

exit/b



:_

:cwt

:contacts_widget_for_tablet

set fp=ContactsWidget.js for tablet.

rem FCD: Sep-25-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\tablet\dashboard\ContactsWidget.js

exit/b



:_ + Mobile Login Enabling



::_

:emb1

:edit_mobile_blocker_1

set fp=Mobile blocker 1.

rem FCD: Sep-25-2017

echo.
echo %fp%

rem     // OPEN mobile login.
rem     xtype: 'login',
rem     // CLOSE mobile login.
rem     //xtype:'loginDisabled',

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\login.js

exit/b



::_

:emb2

:edit_mobile_blocker_2

set fp=Mobile blocker 2.

rem FCD: Sep-25-2017

echo.
echo %fp%

rem     // OPEN mobile login.
rem     xtype:'loginDisabled',
rem     // CLOSE mobile login.
rem     //xtype: 'login',

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\WIPPage.js

exit/b



:_

:mac

set fp=* Mobile log.

rem lu: Dec-4-2017

echo.
echo %fp%

set cbf_filename=c:\mercury\mobility\How to Build a Sencha App on Mac Using Cordova.asc

exit/b



:_

:aj

set fp=* App.json.

rem lu: Dec-4-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\app.json

exit/b



:_

:nc

set fp=Netconfig.

rem lu: Dec-6-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils\netconfig.js

exit/b



:_

:cwp

:contacts_widget_for_phone

set fp=ContactsWidget.js for phone.

rem FCD: Sep-25-2017

echo.
echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\phone\dashboard\ContactsWidget.js

exit/b



:_

:fn

set fp=* Filename nicknames.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\fn.bat

exit/b



:_

:j2

set fp=* J2.txt.

rem lu: Feb-1-2018

echo.
echo %fp%

set cbf_filename=%temp%\j2.txt

exit/b



:_

:stan

set fp=Open folder standalone.

rem fcd: May-9-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_filename=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\configuration\standalone.xml

set cbf_path=%wildfly_location%\standalone\configuration

exit/b



:_

:folder_server

set fp=Open folder server.

rem FCD: Apr-5-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%

exit/b



:_

:ti

set fp=Tirem.

rem FCD: Mar-6-2017

echo.
echo %fp%

set cbf_path=c:\projects\netbeans\mercury6\mercury-tirem

exit/b



:_

:m6

set fp=Mercury 6.

rem FCD: Mar-15-2017

echo.
echo %fp%

set cbf_path=c:\projects\netbeans\mercury6

exit/b



:_

:depl

set fp=Deployment.

rem FCD: Apr-5-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%\standalone\deployments

exit/b



:_

:targ

set fp=Target. (WAR file creation location)

rem FCD: Apr-7-2017

echo.
echo %fp%

set cbf_path=C:\projects\netbeans\mercury6\Mercury-web\target

exit/b



:_

:pu

set fp=Public.

rem FCD: Apr-14-2017

echo.
echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html

exit/b



:_

:se

:s6

:sencha

set fp=Sencha.

rem FCD: Mar-22-2017

echo.
echo %fp%

set cbf_path=c:\projects\netbeans\sencha

exit/b



:_

:cd

set fp=Current directory.

rem fcd: May-9-2017

echo.
echo %fp%

echo.
cd

exit/b



:_

:hex

:open_hex_folder

:set_wildfly_dynamic_folder

set fp=Set WildFly dynamic temporary folder location.

rem Function Creation Date: Feb-9-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%\standalone\tmp\vfs\temp

dir/b>%temp%\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_1=<%temp%\environment_variable_temporary_storage.txt

set cbf_path=%dynamic_server_location_part_1%

dir/b>%temp%\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_2=<%temp%\environment_variable_temporary_storage.txt

set cbf_path=%dynamic_server_location_part_2%

set wildfly_dynamic_folder=%wildfly_location%\standalone\tmp\vfs\temp\%dynamic_server_location_part_1%\%dynamic_server_location_part_2%

exit/b



:_

:hex_root

set fp=Hex root.

rem FCD: Apr-5-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%\standalone\tmp\vfs\temp

exit/b



:_

:heatmap

set fp=Heatmap. Where TIREM puts its image files.

rem skw: Heatmap image generation location.

rem fcd: May-17-2017

echo.
echo %fp%

call %0 hex
echo.
set cbf_path=.\resources\WorldWind\images

exit/b



:_

:nb

:prj

:proj

:projects

set fp=Mercury projects.

rem fcd: May-12-2017

echo.
echo %fp%

set cbf_path=c:\projects\netbeans

exit/b



:_

:log

set fp=Wildfly server Log.

rem fcd: May-22-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_filename=%wildfly_location%\standalone\log\server.log

set cbf_path=%wildfly_location%\standalone\log

exit/b



:_

:wildr

set fp=WildFly resources folder.

rem fcd: Jun-2-2017

echo.
echo %fp%

call td hex

set cbf_path=resources

exit/b



:_

:mac

set fp=MacOS dropbox folder.

rem fcd: Jun-22-2017

echo.
echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh

exit/b



:_

:mysql

set fp=MySql configuration file in order to close open port at 3306.

rem fcd: Jun-26-2017

echo.
echo %fp%

set cbf_filename=C:\ProgramData\MySQL\MySQL Server 5.7\my.ini

set cbf_path=C:\ProgramData\MySQL\MySQL Server 5.7

exit/b



:_

:ldap

set fp=Ldap.

rem fcd: Jul-5-2017

echo.
echo %fp%

set cbf_path=C:\Mercury\LDAP\OpenDS-2.2.1

exit/b



:_

:ext

set fp=Ext.

rem fcd: Jul-7-2017

echo.
echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\ext

exit/b



:_

:mr

:merc

set fp=Mercury.

rem fcd: Jul-7-2017

echo.
echo %fp%

set cbf_path=C:\mercury

exit/b



:_

:m2p

set fp=M2.

rem fcd: Jul-7-2017

echo.
echo %fp%

set cbf_path=%userprofile%\.m2

exit/b



:_

:stdr

set fp=Sencha class folder on Dropbox.

rem fud: Aug-4-2017

echo.
echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\Documents\dropbox\IT\Sencha Class on Aug-7-2017

exit/b



:_

:st

set fp=Sencha class folder.

rem fud: Aug-4-2017

echo.
echo %fp%

set cbf_path=C:\SenchaTraining

exit/b



:_

:war_old

set fp=In the future please use "targ" instead of "war" for this folder.

rem fud: Aug-7-2017

echo.
echo %fp%

call %0 targ

exit/b



:_

:labs

set fp=Sencha training labs.

rem fud: Aug-8-2017

echo.
echo %fp%

set cbf_path=c:\senchatraining\labs

exit/b



:_

:sdk

set fp=Android SDK.

rem fud: Aug-8-2017

echo.
echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\AppData\Local\Android\sdk

exit/b



:_

:y

set fp=Yelp Extplorer.

rem fud: Aug-15-2017

echo.
echo %fp%

set cbf_path=c:\senchatraining\labs\yelpextplorer

exit/b



:_

:dupr

:pudr

set fp=Public @ Dropbox.

rem fud: Aug-15-2017

echo.
echo %fp%

set cbf_path=C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha\HTML5Application\public_html

exit/b



:_

:s6dr

:drs6

set fp=S6 @ Dropbox.

rem fud: Aug-15-2017

echo.
echo %fp%
echo.

set cbf_path=C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha

exit/b



:_

:nc

:util

:utilr

set fp=Utils relative path.

rem fud: Aug-17-2017

echo.
echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

exit/b



:_

:cutils

set fp=Classic utils.

rem lu: Sep-6-2017

echo.
echo %fp%
echo.

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

exit/b



:_

:mutils

set fp=Modern utils.

rem fud: Aug-17-2017

echo.
echo %fp%
echo.

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

exit/b



:_+ AGI Licenses



::_

:agi

set fp=AGI Licenses.

rem lu: Nov-9-2017

echo.
echo %fp%

set cbf_path=C:\mercury\agi licenses

exit/b



::_

:agi_ejb

set fp=AGI License file on development machine.

rem lu: Sep-26-2017

echo.
echo %fp%

set cbf_path=C:\projects\netbeans\mercury6\Mercury-ejb\src\main\resources

exit/b



::_

:agis

set fp=AGI License file on the server.

rem lu: Sep-26-2017

echo.
echo %fp%

set cbf_path=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\lib

exit/b



:_

:mobility

set fp=Mobility.

rem lu: Oct-23-2017

echo.
echo %fp%

set cbf_path=C:\Mercury\Mobility

exit/b



:_

:lat

:lwf

set fp=Latest WAR File.

rem lu: Oct-24-2017

echo.
echo %fp%

set cbf_path=C:\Mercury\Latest WAR File

exit/b



:_

:wir1

set fp=Wildfly Image Resource 1.

rem lu: Nov-1-2017

echo.
echo %fp%

call %0 hex

set cbf_path=resources\images

exit/b



:_

:wir2

set fp=Wildfly Image Resource 2 - classic.

rem lu: Nov-1-2017

echo.
echo %fp%

call %0 hex

set cbf_path=classic\resources\images

exit/b



:_

:wir3

set fp=Wildfly Image Resource 3 - modern.

rem lu: Nov-1-2017

echo.
echo %fp%

call %0 hex

set cbf_path=modern\resources\images

exit/b



:_

:netcon_sr

set fp=Netconfig on server.

rem lu: Nov-14-2017

echo.
echo %fp%

call %0 hex

set cbf_path=modern\resources\images

exit/b



:_

:psc

set fp=Paul Sheriff Course.

rem lu: Dec-18-2017

echo.
echo %fp%

set cbf_path=%dropbox%\it\Paul Sheriff Unit Testing Course\UnitTestProject4\bin\debug

exit/b



:_

:it

set fp=* IT.

rem lu: Jan-18-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\

exit/b



:_

:dr

set fp=* Dropbox.

rem lu: Feb-2-2018

echo.
echo %fp%

set cbf_path=%dropbox%

exit/b



:_

:pizza

set fp=Alex's pizza code.

rem lu: Feb-2-2018

echo.
echo %fp%

set cbf_filename=d:\aa\NovaCodeCamp.PizzaRatings\pizza.sln

set cbf_path=d:\aa\NovaCodeCamp.PizzaRatings

set cbf_url=https://github.com/jonathan-r-jones/NovaCodeCamp.PizzaRatings.git

exit/b



:_

:vs

set fp=* Visual Studio.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf_path=c:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe

exit/b



:_

:tt

set fp=TT VS solution.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf_filename=%dropbox%\it\ticktockmenu\TickTockMenu.sln

set cbf_path=%dropbox%\it\ticktockmenu

exit/b



:_+ Gencred Files



::_

:gencred_input

set fp=Credential generator input file. The format is: username:password.

rem fcd: Jul-17-2017

echo.
echo %fp%

if not exist %tmp%\certutil_input.txt echo.
if not exist %tmp%\certutil_input.txt xcopy /d /h /r /s /y "%COMPOSABLE_BATCH_FILES%\certutil_input.txt" "%tmp%"

set cbf_filename=%tmp%\certutil_input.txt

exit/b



::_

:gencred_output

set fp=Credential generator output file. Copy this into you m2's settings.xml file.

rem fcd: Jul-17-2017

echo.
echo %fp%
echo.

set cbf_filename=%tmp%\certutil_output.txt

exit/b



:_

:c

set fp=* Root of the C Drive.

rem lu: Feb-5-2018

echo.
echo %fp%

set cbf_path=c:\

exit/b



:_

:dd

set fp=Root of the D Drive.

rem lu: Feb-5-2018

echo.
echo %fp%

set cbf_path=d:\

exit/b



:_

:bowl

set fp=Bowling solution.

rem lu: Feb-6-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it

set cbf_url=https://github.com/jonathan-r-jones/Bowling-Score-Calculator.git

exit/b



:_

:etc

set fp=European Testing Conference.

rem lu: Feb-7-2018

echo.
echo %fp%

set cbf_url=http://europeantestingconference.eu/2018/location/

exit/b



:_

:gm

set fp=Gmail.

rem lu: Feb-13-2018

echo.
echo %fp%

set cbf_url=https://mail.google.com

exit/b



:_

:so

set fp=Stack Overflow

rem lu: Feb-15-2018

echo.
echo %fp%

set cbf_url=http://stackoverflow.com/

exit/b



:_

:k2

set fp=Karl 2 Testing Solution.

rem lu: Feb-16-2018

echo.
echo %fp%

set cbf_path=%dropbox%\IT\Karl-2-C-Sharp-Testing

set cbf_filename=%dropbox%\IT\Karl-2-C-Sharp-Testing\karl 2.sln

exit/b



:_

:etc

set fp=Karl 2 Testing Solution.

rem lu: Feb-16-2018

echo.
echo %fp%

set cbf_path=

set cbf_filename=

set cbf_url=http://europeantestingconference.eu/2018

exit/b



:_

:dock

set fp=Docker workshop.

rem lu: Feb-16-2018

echo.
echo %fp%

set cbf_url=https://github.com/AlinaIo/etc2018.git

exit/b



:_

:dhub

set fp=Docker hub.

rem lu: Feb-16-2018

echo.
echo %fp%

set cbf_url=https://hub.docker.com

exit/b



:_

:yt

set fp=* YouTube.

rem lu: Feb-25-2018

echo.
echo %fp%

set cbf_url=https://www.youtube.com

exit/b



:_

:rm

set fp=* Readme.md.

rem lu: Mar-1-2018

echo.
echo %fp%

set cbf_filename=Readme.md

exit/b



:_

:all

:allstar

:fcc

set fp=* GitHub all-star.

rem lu: Mar-1-2018

echo.
echo %fp%

set cbf_path=%aa%\freecodecamp

set cbf_url=https://github.com/freeCodeCamp/freeCodeCamp.git

exit/b



:_

:mrdoc

set fp=* Mercury documentation.

rem lu: Mar-1-2018

echo.
echo %fp%

set cbf_url=https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git

exit/b



:_

:ql

set fp=* Quickla.

rem lu: Apr-10-2018

echo.
echo %fp%

set cbf_path=%savannah%\cmac\Quickla-for-Multi-Edit

set cbf_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

exit/b



:_+ CBF Path Automation



::_

:cbfp

set fp=* CBF Path. Set CBF_Path based on the currently set CBF_Path.

rem lu: Mar-9-2018

echo.
echo %fp%

rem Don't need to set it because it's already set.

exit/b



::_

:cbfa

set fp=* CBF Application. Set CBF_Path based on the currently set CBF_Application.

rem lu: Mar-9-2018

echo.
echo %fp%

call m expand_to_path_only "%cbf_application%"

exit/b



::_

:cbff

set fp=* CBF Filename.

rem lu: Mar-9-2018

echo.
echo %fp%

call m expand_to_path_only "%cbf_filename%"

exit/b



:_

:pajs

:pack

:pj

set fp=* Package.json file.

rem lu: Apr-24-2018

echo.
echo %fp%

set cbf_filename=package.json

exit/b



:_

:npc

set fp=* NPM Playbook Course.

rem lu: Apr-24-2018

echo.
echo %fp%

set cbf_url=https://github.com/joeeames/NPMPlaybookCourse

exit/b



:_

:npm_s

set fp=* NPM shortcuts.

rem lu: Apr-24-2018

echo.
echo %fp%

set cbf_url=https://docs.npmjs.com/misc/config

exit/b



:_

:express

set fp=* Express.

rem lu: Apr-24-2018

echo.
echo %fp%

set cbf_url=https://github.com/strongloop/express

exit/b



:_

:cbf_on_npm

set fp=* CBF on MPM.

rem lu: Apr-25-2018

echo.
echo %fp%

set cbf_url=npm.im/composable-batch-files

exit/b



:_

:glpj

set fp=* Global package.json file.

rem lu: May-4-2018

echo.
echo %fp%

set cbf_filename=C:\Program Files\nodejs\node_modules\npm\package.json

exit/b



:_

:jjgit

set fp=* My Git website.

rem lu: May-9-2018

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones

exit/b



:_

:mad

set fp=* Mobile App Development requirements.

rem lu: May-18-2018

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/mobile-app.git

exit/b



:_

:moca

set fp=* Monkey cache.

rem lu: May-18-2018

echo.
echo %fp%

set cbf_url=https://github.com/jamesmontemagno/monkey-cache.git

exit/b



:_

:cake

set fp=* Cake sample.

rem lu: May-21-2018

echo.
echo %fp%

set cbf_url=https://github.com/lprichar/CakeSample

exit/b



:_

:saru

set fp=* Alex' sort and remove usings.

rem lu: Jun-4-2018

echo.
echo %fp%

set cbf_url=https://github.com/alexsorokoletov/VisualStudioMac.SortRemoveUsings

exit/b



:_

:caro

set fp=* Cool carousel.

rem lu: Jun-4-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\xamarin-forms-samples\Navigation\CarouselPage

exit/b



:_

:xsk

set fp=* Xamarin Forms starter kit.

rem lu: Jun-5-2018

echo.
echo %fp%

set cbf_url=https://github.com/NowBI/Xamarin-Forms-Mobile-Template

exit/b



:_

:dn

:do

set fp=* Downloads folder.

rem lu: Jun-7-2018

echo.
echo %fp%

set cbf_path=%userprofile%\downloads

exit/b



:_

:vft

set fp=* Various file types.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\various file types

exit/b



:_

:fws

set fp=* Filename with spaces.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf_filename=%dropbox%\it\various file types\filename with spaces.txt

exit/b



:_

:205

set fp=* XU Xam 205.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\Xamarin_University\AllCourseExercises\xam205

exit/b



:_

:xfcss

set fp=* Xamarin forms css.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf_url=https://github.com/jamcneil/XamarinFormsCSS.git

exit/b



:_

:dudo

set fp=* Dunkin donuts.

rem lu: Jun-10-2018

echo.
echo %fp%

set cbf_url=https://github.com/jCho23/DunkinDonuts.git

exit/b



:_

:hamb

:hamburger

set fp=* Hamburger menu xamarin forms.

rem lu: Jun-10-2018

echo.
echo %fp%

set cbf_url=https://github.com/twolfprogrammer/Xamarin.Forms-Hamburger-Menu-Example.git

exit/b



:_

:made

set fp=* Master detail.

rem lu: Jun-10-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\Master-Detail_Navigation_Xamarin.Forms

set cbf_url=https://github.com/almirvuk/Master-Detail_Navigation_Xamarin.Forms.git

exit/b



:_

:ham

:hams

:hamster

set fp=* Hamster.

rem lu: Jun-10-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\hamster

set cbf_url=https://github.com/jonathan-r-jones/hamster.git

exit/b



:_

:xapp

set fp=* Xamarin Forms Simple App, Simple Xapp, Simple Jack.

rem lu: Jun-12-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\SimpleXapp

set cbf_url=https://github.com/jonathan-r-jones/SimpleXapp.git

exit/b



:_

:marvel

set fp=* Marvel.

rem lu: Jun-12-2018

echo.
echo %fp%

set cbf_path=c:\aa\repositories\marvel-xfdemo\src

set cbf_url=https://github.com/edsnider/marvel-xfdemo.git

exit/b



:_

:og

set fp=* Open governance.

rem lu: Jun-12-2018

echo.
echo %fp%

set cbf_path=%aa%\open-governance

set cbf_url=https://github.com/techtalkdc/Open-Governance.git

exit/b



:_

:ogf

set fp=* Open governance fork.

rem lu: Jun-12-2018

echo.
echo %fp%

set cbf_path=%aa%\open-governance-fork

set cbf_url=https://github.com/jonathan-r-jones/Open-Governance.git

exit/b



:_

:im

set fp=* Image Manipulation.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf_path=%dropbox%\Image Manipulation

exit/b



:_

:pm

:post

set fp=* Postman.

rem lu: Jun-14-2018

echo.
echo %fp%

set cbf_application=C:\Users\jonat\AppData\Local\Postman\Update.exe --processStart "Postman.exe"

exit/b



:_+ Search Results



::_

:sr

set fp=* Temporary search results.

rem lu: Jun-14-2018

echo.
echo %fp%

set cbf_filename=%temp%\search_results.txt

exit/b



::_

:sr_fs

set fp=* Temporary search results for fs.

rem lu: Jun-14-2018

echo.
echo %fp%

set cbf_filename=%temp%\search_results_fs.txt

exit/b



::_

:sr_cs

set fp=* Temporary search results for cs.

rem lu: Jun-14-2018

echo.
echo %fp%

set cbf_filename=%temp%\search_results_cs.txt

exit/b



:_

:xam_ess

set fp=* Xamarin Essentials Demo.

rem lu: Jun-18-2018

echo.
echo %fp%

set cbf_url=https://github.com/marcofolio/XamSMS

exit/b



:_+ CBF-related links.



::_

:cbfgp

set fp=* CBF on GitHub Pages.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf_url=https://jonathan-r-jones.github.io/Composable-Batch-Files/

exit/b



::_

:cbf

set fp=* Composable batch files.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\cbf.bat

set cbf_path=%composable_batch_files%

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files.git

exit/b



::_

:jjgit

set fp=* Jonathan's Github page.

rem lu: Sep-11-2018

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones

exit/b



::_

:cbf_p

set fp=* CBF Pulse on GitHub.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files/pulse

exit/b



:_

:220

:ios220

set fp=* Publishing an iOS App.

rem lu: Jun-19-2018

echo.
echo %fp%

set cbf_path=c:\aa\Xamarin\Xamarin_University\AllCourseExercises\IOS220

set cbf_url=https://university.xamarin.com/classes/track/all#publishing-an-ios-app-ios220

exit/b



:_

:ctr

set fp=* AppCenter.

rem lu: Jun-21-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://appcenter.ms/apps

exit/b



:_

:a

set fp=* A folder.

rem lu: Dec-12-2017

echo.
echo %fp%

set cbf_path=c:\a

exit/b



:_

:a2

set fp=* A test folder.

rem lu: Dec-27-2018

echo.
echo %fp%

set cbf_path=c:\a2

exit/b



:_

:aa

:perm

set fp=* Aa, a.k.a. permanent folders for Jonathan.

rem lu: Nov-2-2018

echo.
echo %fp%

if exist "c:\aa" set cbf_path=c:\aa
if exist "d:\aa" set cbf_path=d:\aa

exit/b



:_

:csamaa

set fp=* CSAM Asset Data

rem lu: Jun-19-2018

echo.
echo %fp%

set cbf_path=%aa%\csamaa

set cbf_url=https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Csam.Asset.Data

exit/b



:_

:spdr

set fp=* SPDR.

rem lu: Jun-18-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Csam.Normalization.Service

exit/b



:_

:draw

set fp=* Drawable folder.

rem lu: Jun-22-2018

echo.
echo %fp%

set cbf_path=.\NavigationMasterDetail\NavigationMasterDetail.Droid\Resources\Drawable

exit/b



:_

:splunk

set fp=* MVC Splunk REST API.

rem lu: Jun-26-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://github.com/lopezunwired/MVC_Splunk_REST_API.git

exit/b



:_+ Xamarin University



::_

:xu_r

set fp=* Xamarin University root folder. Necessary for the clone to work.

rem lu: Jul-12-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\xamarin_university

exit/b



::_

:xu

set fp=* Xamarin University.

rem To clone this special repo, use "g cn_xu".

rem lu: Jun-5-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\xamarin_university\AllCourseExercises

set cbf_url=https://github.com/XamarinUniversity

exit/b



::_

:xul

set fp=* Xamarin lightning talks.

rem lu: Jun-5-2018

echo.
echo %fp%

set cbf_url=https://university.xamarin.com/lightninglectures

exit/b



::_

:xul1

set fp=* BUILD 2018 Workshops by Xamarin University.

rem lu: Jun-5-2018

echo.
echo %fp%

set cbf_url=https://github.com/XamarinUniversity/build2018-labs.git

exit/b



::_

:xl_css

set fp=* Xamarin.Forms 3.0 CSS

rem lu: Jun-5-2018

echo.
echo %fp%

set cbf_url=https://github.com/jamcneil/XamarinFormsCSS

exit/b



::_

:xl_af

set fp=* Azure functions.

rem lu: Jun-5-2018

echo.
echo %fp%

set cbf_url=https://github.com/Krumelur/XamBlob

exit/b



::_

:xu_205

set fp=* XU Course 205 - Astronomy Solution.

rem lu: Jun-6-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\Xamarin_University\AllCourseExercises\IOS205

exit/b



::_

:103

:xu_103

set fp=* XU Course 103. Make your Images Look Great on all Devices [IOS103] by Judy McNeil

rem lu: Jun-26-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\Xamarin_University\AllCourseExercises\IOS103

exit/b



:_

:10

:p10

set fp=* Page 10.

rem lu: Jun-27-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\fresnel\fresnel\Views

set cbf_filename=%dropbox%\it\fresnel\fresnel\Views\AboutPage.xaml

exit/b



:_

:calc

set fp=* Lee Richardardson's Xamarin Forms calculator.

rem lu: Jun-28-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\mobile-calc-forms

set cbf_url=https://github.com/lprichar/mobile-calc-forms.git

exit/b



:_

:whiskey

:clcr

set fp=* Closing credits.

rem lu: Jun-12-2018

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/for-git-testing/blob/master/whiskey.png

exit/b



:_

:dalsoft

set fp=* DalSoft Rest client.

rem lu: Jul-3-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://github.com/DalSoft/DalSoft.RestClient.git

exit/b



:_

:webapi

set fp=* Call a Web API From a .NET Client (C#).

rem lu: Jul-3-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://github.com/aspnet/Docs.git

exit/b



:_

:hcc

set fp=* My HTTP Client Console App.

rem lu: Jul-3-2018

echo.
echo %fp%

set cbf_path=%aa%\HTTPClientConsoleApp

set cbf_url=

exit/b



:_

:play

set fp=* Playpark.

rem lu: Jul-6-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\playpark

set cbf_url=https://github.com/jonathan-r-jones/playpark.git

exit/b



:_

:ju

set fp=* JSON users.

rem lu: Jul-9-2018

echo.
echo %fp%

set cbf_url=http://jsonplaceholder.typicode.com/users

exit/b



:_

:fotu

set fp=* Forms tutor.

rem lu: Jul-9-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\FormsTutor

if not "%~2" == "" (
  set cbf_path=%aa%\repositories\FormsTutor\Lesson0%2
)

set cbf_url=https://github.com/jamilgeor/FormsTutor

rem Lesson 1: Getting Started with Xamarin.Forms
rem Lesson 2: Xamarin.Forms - ListView
rem Lesson 3: Setting up a ReactiveUI ViewModel (Doesn't run in LivePlayer - Log manager is null.)
rem Lesson 4: Refreshing a ListView with ReactiveCommand
rem Lesson 5: ListView ItemTemplate with ReactiveUI ViewModel
rem Lesson 6: Using Akavache and HttpClient with REST services
rem Lesson 7: Handling Errors with Xamarin.Forms and ReactiveU
rem Lesson 8: ViewModel Routing with ReactiveUI and Xamarin.Forms
rem Lesson 9: Binding a Xamarin.Forms WebView to ReactiveUI View Model using Custom Type Converters

rem https://raw.githubusercontent.com/jamilgeor/FormsTutor/master/Lesson09/Data/

exit/b



:_

:stmo

set fp=* Starter mobile.

rem lu: Jul-9-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://github.com/jamilgeor/starter-mobile.git

exit/b



:_

:sw

set fp=* SolarWinds Orion SDK.

rem lu: Jul-10-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://github.com/solarwinds/OrionSDK.git

exit/b



:_

:150

:xam150

set fp=* XAM 150: Consuming REST-based Web Services

rem lu: Jul-9-2018

echo.
echo %fp%

set cbf_path=%aa%\Repositories\Xamarin_University\AllCourseExercises\XAM150

if not "%~2" == "" (
  set cbf_path=%aa%\Repositories\Xamarin_University\AllCourseExercises\XAM150\Exercise %2\Completed
)

set cbf_url=

exit/b



:_+ Fresnel Images



::_

:and_res

:fr_ra

set fp=* Fresnel resources for Android.

rem lu: Jul-13-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\fresnel\Fresnel.Android\Resources\drawable

exit/b



::_

:ios_res

:fr_ri

set fp=* Fresnel resources for iOS.

rem lu: Jul-13-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\fresnel\Fresnel.iOS\Resources

exit/b



::_
 
:res
       
:fr_res
                                           
:fr_rs

set fp=* Image Manipulation - Fresnel Images source.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf_path=%dropbox%\Image Manipulation\fresnel

exit/b



::_
 
:fr_dr
                                           
set fp=* Fresnel drawable images source.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\fresnel\fresnel.android\resources\drawable

exit/b



::_

:fr_r

:fr_rd

set fp=* Diamond Paint.NET file.

rem lu: Jul-13-2018

echo.
echo %fp%

set cbf_filename=%Dropbox%\image manipulation\menu 4 square diamond icon.pdn

exit/b



:_

:cj_au

set fp=* ClipJam audiobooks folder.

rem lu: Jul-15-2018

echo.
echo %fp%

set cbf_path=g:\audiobooks

exit/b



:_

:j1

set fp=* J1.txt.

rem lu: Feb-1-2018

echo.
echo %fp%

set cbf_filename=%temp%\j1.txt

rem set cbf_url=%cbf_filename%

exit/b



:_+ Browsers (!brows)



::_

:kr

set fp=* Chrome.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe

exit/b



::_

:fx

set fp=* Firefox.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_application=c:\program files\mozilla firefox\firefox.exe

exit/b



::_

:ed

:edge

set fp=* Microsoft Edge.

rem lu: Feb-7-2018

echo.
echo %fp%

set cbf_application=microsoft-edge

exit/b



::_

:ie

set fp=* Internet Explorer.

rem This is used as the system default browser, if none is set. Please DO NOT DELETE.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_application=c:\program files\internet explorer\iexplore.exe

exit/b



::_

:op

set fp=* Opera.

rem lu: Feb-13-2018

echo.
echo %fp%

set cbf_application=c:\program files\opera\launcher.exe

set cbf_path=C:\ProgramData\Microsoft\Windows\Start Menu\Programs

exit/b



:_+ Editors



::_

:no

:note

set fp=* Notepad.

rem This is used as a cbf system default, if none is set. Please DO NOT DELETE.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_application=c:\windows\system32\notepad.exe

exit/b



::_

:np

set fp=* Notepad++.

rem lu: Mar-9-2018

echo.
echo %fp%

rem Determine installation path.

if exist "c:\program files\notepad++\notepad++.exe" set cbf_application_location=c:\program files\notepad++\notepad++.exe
if exist "c:\program files (x86)\notepad++\notepad++.exe" set cbf_application_location="c:\program files (x86)\notepad++\notepad++.exe"

if "%cbf_application_location%" == "" (
  echo.
  echo Notepad++ is not installed.
  exit/b
)

set cbf_application=%cbf_application_location%
set cbf_path=%cbf_application_location:\notepad++.exe=%

exit/b



::_

:me

set fp=* Multi-Edit.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\multi-edit 2008\mew32.exe

exit/b



::_

:sm

set fp=* Sublime.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_application=C:\Program Files\Sublime Text 3\sublime_text.exe

exit/b



::_

:vi

set fp=* Vivaldi.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf_application=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

exit/b



:_

:bike

set fp=* Bike search.

rem lu: Jun-20-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\AppCenterDemo.BikeSearch

set cbf_url=https://github.com/alexsorokoletov/AppCenterDemo.BikeSearch.git

exit/b



:_

:feed

set fp=* Feed reader sample.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\feedreader

set cbf_url=https://github.com/codehollow/FeedReader.git

exit/b



:_

:mamo

set fp=* Madison Monkeys.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\madisonmonkeys

set cbf_url=https://github.com/psberres/MadisonMonkeys.git

exit/b



:_

:lee

:leegit

:lrgit

set fp=* Lee Richardardson on GitHub.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_url=https://github.com/lprichar

exit/b



:_

:easy

set fp=* Easy layout.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\EasyLayout.Forms

set cbf_url=https://github.com/lprichar/EasyLayout.Forms.git

exit/b



:_

:caro

set fp=* Carousel.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\CarouselView

set cbf_url=https://github.com/alexrainman/CarouselView.git

exit/b



:_

:hans

set fp=* Hanselman forms.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\Hanselman.Forms

set cbf_url=https://github.com/jamesmontemagno/Hanselman.Forms.git

exit/b



:_

:jm_conf

set fp=* JM Conference app.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\app-conference\src

set cbf_url=https://github.com/xamarinhq/app-conference.git

exit/b



:_

:navd

set fp=* JM NavDrawer.

rem lu: Jul-18-2018

echo.
echo %fp%

rem set cbf_path=%cbf_default_repository_folder%\Xam.NavDrawer

set cbf_url=https://github.com/jamesmontemagno/Xam.NavDrawer.git

exit/b



:_

:awrestapi

set fp=* AWRestAPI.

rem lu: Jul-20-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\AWRestAPI

set cbf_url=https://github.com/scotcurry/AWRestAPI.git

exit/b



:_

:beyo

set fp=* Beyond basics.

rem Radio button. skw

rem lu: Jul-23-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\Beyond-Basics

set cbf_url=

exit/b

c:\aa\Repositories\Beyond-Basics\1-xamarin-forms-moving-beyond-basics-m1-exercise-files\demos\1-tableview\Foodie.sln
c:\aa\Repositories\Beyond-Basics\1-xamarin-forms-moving-beyond-basics-m1-exercise-files\demos\2-custom-cells\Foodie.sln
c:\aa\Repositories\Beyond-Basics\1-xamarin-forms-moving-beyond-basics-m1-exercise-files\demos\3-behaviors\Foodie.sln
c:\aa\Repositories\Beyond-Basics\1-xamarin-forms-moving-beyond-basics-m1-exercise-files\demos\4-triggers\Foodie.sln
c:\aa\Repositories\Beyond-Basics\2-xamarin-forms-moving-beyond-basics-m2-exercise-files\1-listview-grouping\Foodie.sln


:c:\aa\Repositories\Beyond-Basics\2-xamarin-forms-moving-beyond-basics-m2-exercise-files\2-grid-views\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\2-xamarin-forms-moving-beyond-basics-m2-exercise-files\3-value-converters\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\2-xamarin-forms-moving-beyond-basics-m2-exercise-files\4-template-selectors\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\3-xamarin-forms-moving-beyond-basics-m3-exercise-files\demos\1-styles\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\3-xamarin-forms-moving-beyond-basics-m3-exercise-files\demos\2-style-hierarchy\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\3-xamarin-forms-moving-beyond-basics-m3-exercise-files\demos\3-dynamic-styles\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\4-xamarin-forms-moving-beyond-basics-m4-exercise-files\demos\1-app-wide-colors\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\4-xamarin-forms-moving-beyond-basics-m4-exercise-files\demos\2-effects\Foodie.sln

:c:\aa\Repositories\Beyond-Basics\4-xamarin-forms-moving-beyond-basics-m4-exercise-files\demos\3-native-binding\Foodie.sln

exit/b



:_

:monkeys

set fp=* Monkeys.

rem lu: Jul-3-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=http://montemagno.com/monkeys.json

exit/b



:_

:xfm

set fp=* JM Xamarin.Forms-Monkeys.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\Xamarin.Forms-Monkeys\Monkeys-CarouselView

set cbf_url=https://github.com/jamesmontemagno/Xamarin.Forms-Monkeys.git

exit/b
c:\aa\Repositories\Xamarin.Forms-Monkeys\Archive\Monkeys-Code-UI\Monkeys.sln
c:\aa\Repositories\Xamarin.Forms-Monkeys\Archive\Monkeys-Simple\Monkeys.sln
c:\aa\Repositories\Xamarin.Forms-Monkeys\Archive\Monkeys-XAML-UI\Monkeys.sln
c:\aa\Repositories\Xamarin.Forms-Monkeys\Monkeys\Monkeys.sln
c:\aa\Repositories\Xamarin.Forms-Monkeys\Monkeys-CarouselView\Monkeys.sln

exit/b



:_

:apmo

set fp=* App monkeys.

rem lu: Jul-23-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\app-monkeys

set cbf_url=https://github.com/jamesmontemagno/app-monkeys.git

exit/b



:_

:caro

:weca

set fp=* Welcome carousel.

rem lu: Jul-24-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\WelcomeCarousel

set cbf_url=https://github.com/leroygumede/WelcomeCarousel.git

exit/b



:_

:resu

set fp=Resume.

rem lu: Feb-7-2018

echo.
echo %fp%

set cbf_filename=%dropbox%\resume\jonathan jones' resume.doc

set cbf_path=%dropbox%\resume

set cbf_url=https://bitbucket.org/Jonathan17/resume

exit/b



:_

:anma

:mani

set fp=* Android Manifest in a subfolder of the current folder.

rem lu: Jul-26-2018

echo.
echo %fp%

set current_folder=%cd%

cd *.android

if %errorlevel% == 1 (
  echo.
  echo * There is no Android folder located under the curent folder.
  exit/b
)

cd properties

set cbf_filename=%cd%\AndroidManifest.xml

cd %current_folder%

exit/b



:_+ Browser file reading comparison.



::_

:sks

set fp=* Skeptics.txt short form

rem lu: Jul-17-2018

echo.
echo %fp%

rem Works with: Chrome, IE, OP, VI.

rem Doesn't work with: Firefox, Edge.

set cbf_filename=C:\a\skeptics.txt
            
set cbf_url=C:/a/skeptics.txt

exit/b



::_

:skl

set fp=* Skeptics.txt longer form.

rem lu: Jul-17-2018

echo.
echo %fp%

rem Works with: Chrome, IE, OP, VI.

rem Doesn't work with: Edge, Firefox, even though Fx converts the filename to exactly the cbf_url 
rem here.

set cbf_filename=C:\a\skeptics.txt

set cbf_url=file:///C:/a/skeptics.txt

exit/b



:_

:mgr

set fp=* Meetup Manager.

rem lu: Jul-30-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\MeetupManager

set cbf_url=https://github.com/jamesmontemagno/MeetupManager.git

exit/b



:_

:bsfr

set fp=* Buster from Fresnel.

rem lu: Jul-30-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\buster-from-fresnel

set cbf_url=https://github.com/jonathan-r-jones/buster-from-fresnel

exit/b



:_

:bs

:bust

set fp=* Buster.

rem lu: Jul-27-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\buster

set cbf_url=https://github.com/jonathan-r-jones/Buster.git

exit/b



:_

:petz

set fp=* Petzold.

rem lu: Aug-2-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\xamarin-forms-book-samples

set cbf_url=https://github.com/xamarin/xamarin-forms-book-samples.git

exit/b



:_

:vp

set fp=* Vetted Pictures.

rem lu: Aug-2-2018

echo.
echo %fp%

set cbf_path=C:\Users\jonat\Documents\Dropbox\vetted pictures

exit/b



:_

:pinc

set fp=* Pinch gesture.

rem lu: Aug-3-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\xamarin-forms-samples\WorkingWithGestures\PinchGesture

exit/b



:_

:mob

set fp=* Mobility samples.

rem lu: Aug-3-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\mobile-samples

set cbf_url=https://github.com/xamarin/mobile-samples.git

exit/b



:_

:lp

set fp=* Live player samples!

rem lu: Aug-3-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\mobile-samples\liveplayer

exit/b



:_+ Xamarin-Related

rem (!xaba, !baxa)



::_

:xs

:xam_sam

set fp=* Xamarin Forms Samples.

rem Repository Data
rem   last updated: May-31-2018
rem       watchers:  524
rem           star:  2,267

rem lu: Jun-1-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\xamarin-forms-samples

set cbf_url=https://github.com/xamarin/xamarin-forms-samples.git

exit/b



::_

:plug

:xplug

set fp=* Plugins. Open Source Components for Xamarin. This is an active repository.

rem lu: Jan-31-2018

rem Repository Data
rem   last updated:  Jun-1-2018
rem       watchers:  312
rem           star:  1,241

echo.
echo %fp%

set cbf_url=https://github.com/Xamarin/Plugins.git

exit/b



::_

:jmplug

set fp=* James Montemagno's Xamarin Plugins.

rem lu: Jun-1-2018

rem Repository Data
rem   last updated:  Jan-10-2018
rem       watchers:  139
rem           star:  905

echo.
echo %fp%

set cbf_path=%aa%\repositories\Xamarin.Plugins

set cbf_url=https://github.com/jamesmontemagno/Xamarin.Plugins

exit/b



::_

:hwp

set fp=* Hello world prototype.

rem lu: May-30-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\xaml_prototype

set cbf_url=https://Jonathan17@bitbucket.org/jmd_mobile/xaml_prototype.git

exit/b



::_

:xa

set fp=* Xamarin folder.

rem lu: Mar-1-2018

echo.
echo %fp%

set cbf_path=%aa%\xamarin

exit/b



::_

:edsn

set fp=* Ed Snider's Xamarin book sample code from his Github, not the Pakt github page.

rem lu: Jul-5-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\Mastering-Xamarin.Forms-book

if "%~2" == "c" (
  set cbf_path=%aa%\repositories\Mastering-Xamarin.Forms-book\Complete
) else if not "%~2" == "" (
  set cbf_path=%aa%\repositories\Mastering-Xamarin.Forms-book\Chapter%2
)

set cbf_url=https://github.com/edsnider/mastering-xamarin.forms-book.git

exit/b



::_

:ed_p

set fp=* Ed Snider's book, the Packt Publishing version.

rem lu: Mar-1-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\Mastering-Xamarin.Forms-Second-Edition

set cbf_url=https://github.com/PacktPublishing/Mastering-Xamarin.Forms-Second-Edition

exit/b



::_

:fma1

set fp=* Jesse Liberty's Xamarin Pluralsight course.

rem lu: May-8-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\first-mobile-app-Jesse

set cbf_url=https://github.com/JesseLiberty/First-Mobile-App

exit/b



::_

:fma

:fma2

:fmajrj

set fp=* My implementation of Jesse Liberty's Xamarin Pluralsight course.

rem lu: May-8-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\first-mobile-app-Jonathan

set cbf_url=https://github.com/jonathan-r-jones/First-Mobile-App.git

exit/b



::_

:hwx

set fp=Hello World.

rem lu: Jan-16-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\HelloXamarinFormsWorld

exit/b



::_

:bugs

set fp=* Bugsweeper.

rem Bugsweeper (!bugs)

rem lu: Jun-1-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\xamarin-forms-samples\bugsweeper

exit/b



::_

:batt

set fp=* James' Battery solution.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\BatteryPlugin

set cbf_url=http://github.com/jamesmontemagno/BatteryPlugin

exit/b



::_

:media

set fp=* James' Media plugin.

rem lu: Jun-4-2018

echo.
echo %fp%

set cbf_url=http://github.com/jamesmontemagno/MediaPlugin

exit/b



::_

:wwi

set fp=* Xamarin Forms Samples - Working with images.

rem lu: Aug-7-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\xamarin-forms-samples\workingwithimages

set cbf_url=https://github.com/xamarin/xamarin-forms-samples.git

exit/b



:_

:pan

set fp=* Pan gesture.

rem lu: Aug-3-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\xamarin-forms-samples\WorkingWithGestures\PanGesture

exit/b



:_

:mod

set fp=* How to modularize a batch file.

rem lu: Aug-7-2018

echo.
echo %fp%

set cbf_filename=%dropbox%\it\composable-batch-files\how to modularize a batch file.asc

exit/b



:_

:mc

set fp=* Latest Music.

rem lu: Aug-8-2018

echo.
echo %fp%

set cbf_path=%dropbox%\mp3\Jun-5-2018

exit/b



:_

:ttdc

set fp=* Tech Talk DC.

rem lu: Aug-8-2018

echo.
echo %fp%

set cbf_url=https://www.meetup.com/techtalkdc/

exit/b



:_

:png

set fp=* CBF png file.

rem lu: Aug-8-2018

echo.
echo %fp%

set cbf_url=https://raw.githubusercontent.com/jonathan-r-jones/composable-batch-files/master/jj3d.png

exit/b



:_

:cppt

set fp=* CBF Powerpoint presentation.

rem lu: Aug-8-2018

echo.
echo %fp%

set cbf_filename=%composable_batch_files%\CBF.pptx

exit/b



:_

:nx

set fp=* VP folder.

rem lu: Aug-14-2018

echo.
echo %fp%

set cbf_path=%dropbox%\vetted pictures\new and exciting

exit/b



:_

:root

set fp=* Root

rem lu: Aug-10-2018

echo.
echo %fp%

set cbf_path=c:\

exit/b



:_

:hw

set fp=* Hello world batch file.

rem lu: Aug-10-2018

echo.
echo %fp%

set cbf_filename=%composable_batch_files%\hello_world.bat

exit/b



:_

:foo

set fp=* Foo takes you to the bar folder. Of course it does.

rem lu: Aug-10-2018

echo.
echo %fp%

set cbf_path=C:\Program Files\MSBuild\Microsoft\Windows Workflow Foundation\bar

exit/b



:_

:cj

:clipjam_podcasts

set fp=* ClipJam podcasts folder.

rem lu: Jul-15-2018

echo.
echo %fp%

set cbf_path=g:\podcasts

exit/b



:_

:temp

set fp=* Temp.

rem This is used as a cbf system default, if none is set. Please DO NOT DELETE.

rem lu: Jan-23-2018

echo.
echo %fp%

set cbf_path=%temp%

exit/b



:_

:gett

set fp=* Gettysburg Address.

rem lu: Aug-13-2018

echo.
echo %fp%

set cbf_filename=%composable_batch_files%\Gettysburg_Address.txt

exit/b



:_

:cnn

set fp=* Cnn.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_url=https://www.cnn.com

exit/b



:_

:covi

set fp=* Conference Vision.

rem lu: Aug-15-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\ConferenceVision

set cbf_url=https://github.com/Microsoft/ConferenceVision.git

exit/b



:_

:bufr

set fp=* Fresnel dated backup.

rem lu: Aug-16-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\Fresnel Dated Backups

exit/b



:_+ Mobile Apps



::_

:ma

:otzi

set fp=* Test the use of an enterprise profile on VSTS. Formerly the mobile app prototype that Brian saw.

rem lu: Aug-20-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\Mobile

set cbf_url=https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Mobile

exit/b



::_

:fr

:fres

set fp=* Fresnel Mobile App.

rem lu: Jun-21-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\fresnel

set cbf_url=https://github.com/jonathan-r-jones/fresnel.git

exit/b



::_

:fr_bu

set fp=* Fresnel Mobile App, local backup version.

rem lu: Jul-26-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\backups\fresnel

set cbf_url=https://github.com/jonathan-r-jones/fresnel.git

exit/b



::_

:ql_bu

set fp=* Quick Launcher, local backup version.

rem lu: Jul-26-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\backups\Quickla-for-Multi-Edit

set cbf_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

exit/b



::_

:cbf_bu

set fp=* CBF, local backup version.

rem lu: Jul-26-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\backups\Composable-Batch-Files

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files

exit/b



::_

:bu

set fp=* Backups folder.

rem lu: Jul-26-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\backups

exit/b



:_

:curl

set fp=* Curl.

rem lu: Aug-23-2018

echo.
echo %fp%

set cbf_path=c:\aa\curl-7.61.0-win64-mingw\bin

exit/b



:_

:t

set fp=* Test t from n.bat.

rem lu: Aug-23-2018

echo.
echo %fp%

exit/b



:_

:ques

set fp=* Apiary questions.

rem lu: Aug-23-2018

echo.
echo %fp%

set cbf_url=http://private-64c770-fresnelapi.apiary-mock.com/fresnelapi/questions

exit/b



:_

:503

set fp=* 503 Badapi.

rem lu: Aug-23-2018

echo.
echo %fp%

set cbf_url=503.badapi.net

exit/b



:_

:bel

:belf

set fp=* Belfy.

rem lu: Aug-24-2018

echo.
echo %fp%

set cbf_path=%savannah%\belfry

exit/b



:_

:404

set fp=* 404 badapi.

rem lu: Aug-23-2018

echo.
echo %fp%

set cbf_url=http://badapi.net/notfound

exit/b



:_

:p404

set fp=* Proxy endpoint 404 badapi.

rem lu: Aug-23-2018

echo.
echo %fp%

set cbf_url=GET http://404.badapi.net

exit/b



:_

:git_as

set fp=* Git API status.

rem lu: Aug-23-2018

echo.
echo %fp%

set cbf_url=https://status.github.com/api/status.json

exit/b



:_

:swpe

:swapi

set fp=* Star Wars Api people.

rem lu: Aug-24-2018

echo.
echo %fp%

set cbf_url=https://swapi.co/api/people

exit/b



:_+ APIs



::_

:inc

:injs

:lr

set fp=* Incidents JSON, a. k. a. logical razors.

rem lu: Aug-23-2018

echo.
echo %fp%

set cbf_filename=%dropbox%\it\fresnel\incidents.json

set cbf_url=https://raw.githubusercontent.com/jonathan-r-jones/Fresnel/master/incidents.json

exit/b



::_

:dmm

set fp=* Metro map.

rem lu: Aug-24-2018

echo.
echo %fp%

set cbf_url=https://raw.githubusercontent.com/jonathan-r-jones/For-Git-Testing/master/Art/dc_metro_map.jpg

exit/b



::_

:jpgh

set fp=* Json Placeholder on GitHub.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\jsonplaceholder

set cbf_url=https://github.com/typicode/jsonplaceholder.git

exit/b



::_

:jp

set fp=* Json Placeholder.

rem lu: Aug-24-2018

echo.
echo %fp%

set cbf_url=https://jsonplaceholder.typicode.com/users

exit/b



::_

:az

set fp=* Custom Azure Data. If data is returned you will see a wall of ascii.

rem lu: Aug-24-2018

echo.
echo %fp%

set cbf_header=zumo-api-version: 2.0.0

set cbf_url=https://hamster7.azurewebsites.net/tables/Open_Incidents

exit/b

This is what is returned from Curl:

< HTTP/1.1 200 OK
< Cache-Control: no-cache
< Pragma: no-cache
< Content-Length: 2433
< Content-Type: application/json; charset=utf-8
< Expires: 0
< ETag: W/"981-eiF699jjOyemXoG3NbLAcg"
< Server: Microsoft-IIS/10.0
< X-Powered-By: Express
< X-Powered-By: ASP.NET
< Set-Cookie: ARRAffinity=0a3517ba6ed8bb14ffe517099672a3eb4ea3c4b710ad8c6e0edaa70c2d244335;Path=/;HttpOnly;Domain=hamster7.azurewebsites.net
< Date: Fri, 24 Aug 2018 19:58:49 GMT            

<Then message payload>

exit/b



:_

:van

set fp=* Van's Azure Functions.

rem lu: Aug-29-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\Nova2018CodeCamp2

set cbf_url=https://github.com/lvanlowe/Nova2018CodeCamp2

exit/b



:_

:caz

set fp=* Custom Azure Data - Port Types.

rem lu: Aug-29-2018

echo.
echo %fp%

set cbf_header=zumo-api-version: 2.0.0

set cbf_url=https://hamster7.azurewebsites.net/tables/PortTypes

exit/b



:_

:dnc

:hwc

set fp=* Dot Net core HelloWorld conole application.

rem lu: Aug-31-2018

echo.
echo %fp%

set cbf_path=%aa%\HelloWorld

exit/b



:_

:mya

set fp=* Dot Net core myApp console application.

rem lu: Aug-31-2018

echo.
echo %fp%

set cbf_path=%aa%\myApp

exit/b



:_

:test1

set fp=* Test 1 path.

rem lu: Sep-2-2018

echo.
echo %fp%

set cbf_path=%aa%\test1

exit/b



:_

:test2

set fp=* Test 2 path.

rem lu: Sep-2-2018

echo.
echo %fp%

set cbf_path=%aa%\test2

exit/b



:_

:test3

set fp=* Test 3 path.

rem lu: Sep-4-2018

echo.
echo %fp%

set cbf_path=%aa%\test3

exit/b



:_+ Sean W.'s API Course



::_

:war

set fp=* Web api core resources for Shawn W.'s course.

rem lu: Sep-5-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\webapicoreresources\data

set cbf_url=https://github.com/shawnwildermuth/webapicoreresources

exit/b



::_

:mcc

:mcc_wild

:code_camp

set fp=* My code camp completed exercises by Shawn W.

rem lu: Sep-4-2018

echo.
echo %fp%

set cbf_path=C:\aa\MyCodeCampCompletedExercises

exit/b



::_

:mb

set fp=* Mobile back-end.

rem lu: Sep-4-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\MobileBackend

set cbf_url=https://github.com/jonathan-r-jones/MobileBackend.git

exit/b



:_+ DX Family



::_

:odx

set fp=* Original Kevin Dockx Restful API course.

rem lu: Sep-7-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\RESTfulAPIAspNetCore_Course

set cbf_url=https://github.com/KevinDockx/RESTfulAPIAspNetCore_Course.git

exit/b



::_

:dx

set fp=* Restful API Asp Net Core Course by Kevin Dockx - My modifications.

rem lu: Sep-7-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\dx

set cbf_url=https://github.com/jonathan-r-jones/dx.git

exit/b



:_

:vsi

set fp=* Visual Studio Installer.

rem lu: Sep-11-2018

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe

exit/b



:_

:bp

set fp=* Big project by Shawn Wildermuth.

rem lu: Sep-11-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\BigProject

set cbf_url=https://github.com/jonathan-r-jones/BigProject.git

exit/b



:_+ Git Ignore



::_

:rf_ig

set fp=* Code referenced Visual Studio Git Ignore.

rem lu: Sep-11-2018

echo.
echo %fp%

set cbf_filename=%dropbox%\it\gitignore\VisualStudio.gitignore

set cbf_path=%dropbox%\it\gitignore

set cbf_url=https://github.com/github/gitignore.git

exit/b



::_

:ig

:vs_ig

set fp=* Visual Studio Git Ignore.

rem lu: Jan-19-2018

echo.
echo %fp%

set cbf_filename=.gitignore

set cbf_url=https://github.com/github/gitignore/blob/master/VisualStudio.gitignore

exit/b



:_+ Dutch Treat



::_

:dutr

:dutch_treat

set fp=* DutchTreat by Shawn Wildermuth and me.

rem lu: Sep-11-2018

echo.
echo %fp%

if "%~2" == "" (
  rem Set the default chapter here.
  set chapter=08
) else (
  set chapter=%2
)

set cbf_path=%dropbox%\it\DutchTreat\%chapter%\demos\after\DutchTreat

rem set cbf_path=%aa%\Shawns Course\%chapter%\demos\after\DutchTreat

set cbf_url=https://github.com/jonathan-r-jones/DutchTreat.git

exit/b



::_

:dtr

set fp=* DutchTreat root.

rem lu: Sep-19-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\DutchTreat

exit/b



::_

:dt_res

set fp=* Shawn Wildermuth's Resources.

rem lu: Sep-12-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\BuildingASPNETCore2

set cbf_url=https://github.com/psauthor/BuildingASPNETCore2

exit/b



::_

:ce

:dt_ce

set fp=* Shawn's Completed exercises.

rem lu: Sep-18-2018

echo.
echo %fp%

if "%~2" == "" (
  rem Set the default chapter here.
  set chapter=08
) else (
  set chapter=%2
)

set cbf_path=%aa%\Shawns Course\%chapter%\demos\after\DutchTreat

exit/b



:_

:karl

set fp=* Karl.

rem lu: Sep-24-2018

echo.
echo %fp%

set cbf_path=%savannah%\karl

exit/b



:_

:poun

:pounders

set fp=* Pounders.

rem lu: Sep-27-2018

echo.
echo %fp%

set cbf_path=%dropbox%\Software\Tools

exit/b



:_

:devops

:wg

set fp=* DevOps Working Group.

rem lu: Oct-22-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\DevOps-WG

set cbf_url=https://github.com/DevTechnology/DevOps-WG

exit/b



:_

:arm

set fp=* ARM templates.

rem lu: Oct-23-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\

set cbf_url=https://github.com/Azure/azure-quickstart-templates

exit/b



:_

:wiki

set fp=* WG Wiki.

rem lu: Oct-24-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\

set cbf_url=https://github.com/DevTechnology/DevOps-WG/wiki

exit/b



:_

:dtg

:dtggit

set fp=* Dev Technology Group.

rem lu: Oct-22-2018

echo.
echo %fp%

set cbf_url=https://github.com/DevTechnology

exit/b



:_+ Cart



::_

:acrg

:acrj

:bgs

:bgs_cn

:bgs1

:bgs2

:bgsp

:btbt

:cap

:cart

:cartgit

:cart_git

:cart_cn

:cjt

:cix

:conf

:dese

:djjf

:earm_cn

:gaws

:paws

:gc

:gocl

:govc

:ht

:ij

:iaws

:ic_hp

:ic

:ic_info

:je2

:je2h

:je2r

:je2_h

:je2_help

:jf_acr

:jf_bgs

:jf_cap

:jf_dj

:jf_odl

:jf_odls

:jjigit

:ji

:jira

:jm

:rach

:earm_svcs

:cson

:mp

:rfd

:icd

:onbo

:cook

:p

:iccl

:m2

:nere

:nexu

:nexus

:nig

:oc

:ocgit

:oc_cn

:pass

:devgit

:chef

:icook

:api

:dapi

:capi

:dev

:n2

:n2r

:port

:s3

:gitcain

:je2cain

:pem

:earm

:nas

:ui

:cer

:tag

:sv1

:sv2

:sv3

:1

:2

:3

:ruby

:bgsc

:rec1

:rec2

:chef1

:chef2

:palm

:palms

:cat

:seca

:hede

:cartc

:bgsc

:clb

:sf1

:sf2

:sf3

:xcee

:igit

:appr

:sf1p

:sf1f

:mpj

:ckje

:pass-through

:pass_through

:iac

:cart_s3

:cain

:crai

:jj

:mc1

:mc2

:mdp

:pt

:sg_id

:sq

:subnet_id

:tf1

:tf2

:vpc_id

set fp=* Pass through.

echo.
echo %fp%

rem lu: Jan-11-2019

call %share-zone%\ni.bat %1

exit/b



::_

:apc

:c_apc

set fp=* iCart APC.

rem lu: Oct-17-2018

echo.
echo %fp%

set cbf_path=%userprofile%\j\cart

set cbf_url=https://github.com/DevTechnology/iCart-apc

exit/b



::_

:c_docs

set fp=* Cart Documents.

rem lu: Oct-24-2018

echo.
echo %fp%

set cbf_path=%share-zone%\Cart Documents

rem This is out of date in the sense that the most documents are not here.
set cbf_url=https://github.com/DevTechnology/iCart-Doco.git

exit/b



:_

:j5

set fp=* J5.

rem lu: Jan-17-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\j5.s

exit/b



:_

:tf

:terr

set fp=* Pluralsight's Terraform class.

rem lu: Oct-29-2018

echo.
echo %fp%

if "%~2" == "" (
  rem Set the default chapter here.
  set chapter=05
) else (
  set chapter=%2
)

set cbf_path=%dropbox%\it\Terraform - Getting Started - Pluralsight Class\%chapter%\demos

set cbf_url=https://www.terraform.io/

exit/b



:_+ My Terraform Plaralsight Training Modules



::_

:mod2

set fp=* Module 3. Website says "Teal/Green" alternating/load-balanced websites.

rem lu: Nov-1-2018

echo.
echo %fp%

call td tf 03

cd moduletwo

set cbf_path=%cd%

exit/b



::_

:mod3

set fp=* Module 3. Website shows Globomantics logo and says "Yeah!" if the logo has not loaded yet.

rem The "dev" tags control the "Name" field of the instance.

rem The Terraform output is the AWS Elastic Load Balancer Public DNS.

rem lu: Nov-1-2018

echo.
echo %fp%

call td tf 04

cd modulethree

set cbf_path=%cd%

exit/b



::_

:mod4

set fp=* Module 4. I didn't complete this module because it required some Azure setup, which I didn't want to do at the current time.

rem lu: Nov-1-2018

echo.
echo %fp%

call td tf 05

cd modulefour

set cbf_path=%cd%

exit/b



:_+ Repositories



::_

:r

:repos

:repository_folder

set fp=* Default repository folder.

rem lu: Jul-10-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%

exit/b



::_

:d_aa_repos

set fp=* D aa repositories.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf_path=d:\aa\repositories

exit/b



::_

:c_aa_repos

set fp=* C aa repositories.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf_path=c:\aa\repositories

exit/b



:_+ Program Files



::_

:pf

set fp=* Program files.

rem lu: Apr-24-2018

echo.
echo %fp%

set cbf_path=c:\program files

exit/b



::_

:pf86

set fp=* Program files x86.

rem lu: Apr-24-2018

echo.
echo %fp%

set cbf_path=c:\program files (x86)

exit/b



:_+ AWS CLI



::_

:cli_s

set fp=* AWS CLI sample code.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf_url=https://bootstrap-it.com/awscli/#intro

exit/b



::_

:cli_r

:cli_ref

set fp=* AWS CLI Reference.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf_url=https://docs.aws.amazon.com/cli/latest/reference/index.html

exit/b



::_

:cas

:cli_web

set fp=* My AWS CLI CART Admin website.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf_url=http://cartsite2018.com.s3-website-us-east-1.amazonaws.com/

set cbf_path=%dropbox%\it\CART Admin Site

exit/b



:_

:md

set fp=* My documents.

rem lu: Nov-19-2018

echo.
echo %fp%

set cbf_path=%homedrive%%homepath%\documents

exit/b



:_ + AWS Configuration



::_

:ac

:aws_creds

set fp=* AWS configuration credentials.

rem lu: Nov-19-2018

echo.
echo %fp%

set cbf_filename=%userprofile%\.aws\credentials

set cbf_path=%userprofile%\.aws

exit/b



:_

:mi

:misc

set fp=* Miscellany folder.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_path=%userprofile%\j\miscellany

exit/b



:_ + Appdata

::_

:lad

set fp=* Local app data.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_path=%localappdata%

exit/b



:_

:ad

:apda

set fp=* App data.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_path=%appdata%

exit/b



:_

:wp

:wopa

set fp=* WordPad.

rem lu: Aug-9-2018

echo.
echo %fp%

set cbf_application=c:\program files\windows nt\accessories\wordpad.exe

exit/b



:_

:dfw

set fp=* Download for windows.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_url=https://www.google.com/search?as_q=%2+download+windows

exit/b



:_

:gas

set fp=* Google advanced search

rem lu: Dec-5-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\

set cbf_url=https://www.google.com/advanced_search

exit/b



:_

:tc

set fp=* TC.

rem lu: Dec-5-2018

echo.
echo %fp%

set cbf_url=https://devtechnology.unanet.biz/devtechnology/action/home

exit/b



:_

:keys

:sh

:ssh

:ssh_keys

set fp=* Location that worked for the SSH keys folder.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_path=%userprofile%\.ssh

exit/b



:_

:certificate_setup_directions

set fp=* Certificate setup directions.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_url=https://blogs.msdn.microsoft.com/phkelley/2014/01/20/adding-a-corporate-or-self-signed-certificate-authority-to-git-exes-store/

exit/b



:_

:bit

set fp=* Bitbucket.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_url=https://bitbucket.org/dashboard/overview

exit/b



:_

:xt

set fp=* Xaml Mobile Test.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_url=https://Jonathan17@bitbucket.org/jmd_mobile/xaml_prototype.git

exit/b



:_

:test_private

set fp=* Test 1 - Private repo.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/test1.git

exit/b



:_

:tfkeys

set fp=* TF Keys.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf_path=%tfkeys% 

exit/b



:_

:awsam

set fp=* AirWatch Samples.

rem lu: Jul-20-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\AirWatch-samples

set cbf_url=https://github.com/vmwaresamples/AirWatch-samples.git

exit/b



:_

:aw

:airwatch

set fp=* VMware AirWatch SDK.

rem lu: Aug-16-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\Xamarin-AWSDK\samples\xamariniossampleapp

set cbf_url=https://github.com/vmwareairwatchsdk/Xamarin-AWSDK.git

exit/b



:_+ Java



::_

:jvoh

set fp=Java Opends Home.

rem fcd: Jul-6-2017

rem This is useful for new installs.

echo.
echo %fp%
echo.

set cbf_path=%opends_java_home%

exit/b



::_

:jvpf

set fp=* Java under Program Files.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_path=C:\Program Files\Java

exit/b



::_

:jvpf86

set fp=* Java under Program Files (x86).

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_path=C:\Program Files (x86)\Java

exit/b



:_

:cbfh

:cbfn

set fp=* Open a new Composable Batch Files Helper.

rem lu: Dec-13-2018

echo.
echo %fp%

set cbf_filename=%composable_batch_files%\Composable Batch Files Helper.lnk

exit/b



:_

:je_server

set fp=* Connect to my AWS instance from the command line!

rem lu: Dec-12-2018

echo.
echo %fp%

rem This filename is from Dec-14-2018
set cbf_filename=%userprofile%\downloads\ec2-18-253-148-152.us-gov-east-1.compute.amazonaws.com.rdp
                                         
rem This filename is from c. Dec-11-2018
set cbf_filename=%userprofile%\downloads\ec2-18-253-117-92.us-gov-east-1.compute.amazonaws.com.rdp

exit/b



:_

:de

:deen

:deve

set fp=* Dev environment Excel file.

rem lu: Dec-6-2018

echo.
echo %fp%

call n c_docs

set cbf_filename=%cbf_path%\development environment.xlsx

exit/b



:_+ Spring Boot Sample Projects



::_

:mysb

set fp=* My clone of the spring boot test code from the PluralSight Jenkins 2 course.

rem I did this so that I could fail the build to test failures.

rem lu: Dec-13-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\jenkins2-course-spring-boot

rem This needs to be updated.
set cbf_url=https://github.com/g0t4/jenkins2-course-spring-boot

exit/b



::_

:sbs

:sb_sample

set fp=* Spring boot test code from the PluralSight Jenkins 2 course.

rem lu: Jan-7-2019

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\jenkins2-course-spring-boot

set cbf_url=https://github.com/g0t4/jenkins2-course-spring-boot

exit/b



::_

:sbt

set fp=* Spring boot test code from the PluralSight Jenkins 2 course.

rem lu: Dec-13-2018

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\jenkins2-course-spring-boot\spring-boot-samples\spring-boot-sample-atmosphere

exit/b



::_

:wes

set fp=* Wes' challenge.

rem lu: Dec-15-2018

echo.
echo %fp%

set cbf_url=https://gist.github.com/g0t4/12d888d0ce9e40b79d8454dabdad7033

exit/b



:_

:ppt

set fp=* Powerpoint.

rem lu: Dec-18-2018

echo.
echo %fp%

set cbf_application=c:\program files\microsoft office\root\office16\powerpnt.exe

exit/b



:_

:hs

:hungry_shark

set fp=* Hungry shark.

rem lu: Dec-18-2018

echo.
echo %fp%

set cbf_url=https://www.youtube.com/watch?v=L8_GYxIOErQ

exit/b



:_

:jaws_ppt

set fp=* Jaws PowerPoint

rem lu: Dec-18-2018

echo.
echo %fp%

set cbf_filename=%composable_batch_files%\jaws.pptx

exit/b



:_

:s

:sz

set fp=* Share-Zone.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_url=https://Jonathan17@bitbucket.org/Jonathan17/share-zone.git
set cbf_url=git@bitbucket.org:Jonathan17/share-zone.git

set cbf_url=https://github.com/jonathan-r-jones/Share-Zone.git

set cbf_path=%share-zone%

exit/b



:_

:cs

set fp=* Copied software.

rem lu: Dec-19-2018

echo.
echo %fp%

call n sz

set cbf_path=%cbf_path%\copied software

exit/b



:_

:cc

set fp=* Copied clif file.

rem lu: Dec-19-2018

echo.
echo %fp%

call n sz

set cbf_filename=%cbf_path%\copy of cc.asc

exit/b



:_

:m

:mous

set fp=* Mouse.

rem lu: Dec-20-2018

echo.
echo %fp%

set cbf_filename=C:\Program Files\Microsoft Mouse and Keyboard Center\MouseKeyboardCenter.exe

set cbf_application=C:\Program Files\Microsoft Mouse and Keyboard Center\MouseKeyboardCenter.exe

exit/b



:_

:big

:g

:gf

:gfe

set fp=* Gfe.txt.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_filename=%share-zone%\gfe.asc

exit/b



:_+ Windows Folders



::_

:docs

set fp=* Documents folder.

rem lu: Jul-9-2018

echo.
echo %fp%

set cbf_path=%userprofile%\documents

exit/b



::_

:d

:desk

:desktop

set fp=* Windows desktop.

rem lu: Dec-27-2018

echo.
echo %fp%

set cbf_path=%userprofile%\desktop

exit/b



::_

:32

:sys32

set fp=* Windows system 32.

rem lu: Dec-27-2018

echo.
echo %fp%

set cbf_path=c:\windows\system32

exit/b



::_

:win

:wind

set fp=* Windows.

rem lu: Feb-5-2019

echo.
echo %fp%

set cbf_path=c:\windows

exit/b



:_+ Remote Double Click Candidates, a.k.a. lnk type files.



::_

:l_d

:lnk_d

set fp=* Show desktop.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf_path=%userprofile%\desktop

set cbf_filename=%appdata%\microsoft\internet explorer\quick launch\shows desktop.lnk

exit/b



::_

l_w

:lnk_w

set fp=* Show open windows.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf_filename=%appdata%\microsoft\internet explorer\quick launch\window switcher.lnk

exit/b



:_ + Git



::_

:gh

:git

set fp=* Git.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_path=%localappdata%\Programs\Git

set cbf_url=https://github.com

exit/b



::_

:gg

set fp=* Git gui.

rem lu: Aug-1-2018

echo.
echo %fp%

set cbf_application=C:\Program Files\Git\cmd\git-gui.exe

if exist C:\Users\JJones2\AppData\Local\Programs\Git\cmd\git-gui.exe set cbf_application=C:\Users\JJones2\AppData\Local\Programs\Git\cmd\git-gui.exe

set cbf_filename=%cbf_application%

exit/b



::_

:git_bin

:git_user_bin

:gu

:gub

:super_bin

:super_git

set fp=* Git user bin. Loaded with utilities. Super path. (skw: super git)

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_path=%localappdata%\Programs\Git\usr\bin

if exist "c:\Program Files\Git\usr\bin\" set cbf_path=c:\Program Files\Git\usr\bin

exit/b



:_

:aig

set fp=* Run a2.

rem lu: Dec-28-2018

echo.
echo %fp%

call n s

set cbf_filename=%cbf_path%\aig.bat

exit/b



:_

:mste

:team

:teams

set fp=* Microsoft Teams.

rem lu: Dec-28-2018

echo.
echo %fp%

call an edge

set cbf_url=https://teams.microsoft.com

exit/b



:_

:jsc

set fp=* Jenkins Slave Clone.

rem lu: Dec-30-2018

echo.
echo %fp%

set cbf_filename=%userprofile%\downloads\10.168.73.179.rdp

exit/b



:_

:bc

set fp=* Bee Clone.

rem lu: Dec-30-2018

echo.
echo %fp%

set cbf_filename=%userprofile%\downloads\10.168.73.223.rdp

exit/b



:_+ Reach Out



::_

:ro

set fp=* Reach out.

rem lu: Sep-15-2018

echo.
echo %fp%

set cbf_path=%reach out%

set cbf_url=https://github.com/jonathan-r-jones/Reach-Out.git

exit/b



::_

:ro_dr

:rodr

set fp=* Reach out on dropbox.

rem lu: Jan-2-2019

echo.
echo %fp%

set cbf_path=%dropbox%\!savannah\reach out

exit/b



:_

:cwk

:wkc

set fp=* Copy of work.asc.

rem lu: Sep-15-2018

echo.
echo %fp%

set cbf_filename=%share-zone%\copy of wk.asc

exit/b



:_

:o

set fp=* Microsoft Outlook.

rem lu: Jan-3-2019

echo.
echo %fp%

call an edge

set cbf_url=https://outlook.office.com/owa

exit/b



:_

:nj

set fp=* New Jenkins.

rem lu: Jan-4-2019

echo.
echo %fp%

set cbf_filename=%userprofile%\downloads\ec2-18-253-135-181.us-gov-east-1.compute.amazonaws.com.rdp

exit/b



:_

:dero

:map

:paro

:roma

set fp=* DevOps Roadmap, a.k.a. Pa's roadmap.  

rem lu: Jan-3-2019

echo.
echo %fp%

call %0 c_docs

set cbf_filename=%cbf_path%\DevOps Roadmap.xlsx

exit/b



:_

:fiex

set fp=* Filename extensions.

rem lu: Jan-8-2019

echo.
echo %fp%

set cbf_url=http://en.wikipedia.org/wiki/Alphabetical_list_of_file_extensions

exit/b



:_

:jtt

set fp=* Jenkins trigger test.

rem lu: Jan-8-2019

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\jenkins-trigger-test

set cbf_url=https://github.com/jonathan-r-jones/jenkins-trigger-test.git

exit/b



:_

:solsys

set fp=* Solitaire system.

rem lu: Jan-8-2019

echo.
echo.
echo %fp%

set cbf_url=https://github.com/g0t4/solitaire-systemjs-course

exit/b



:_

:j

set fp=* J folder and file.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_filename=%savannah%\belfry\j.bat

set cbf_path=%userprofile%\j

exit/b



:_

:acr

set fp=* ACR.

rem lu: Jan-10-2019

echo.
echo %fp%

set cbf_name=acr

set cbf_path=%cbf_default_repository_folder%\%cbf_name%

exit/b



:_

:gsg

:psg

set fp=* Pipeline script generator.

rem lu: Jan-11-2019

echo.
echo %fp%

call an kr

set cbf_url=http://localhost:8080/job/PipelineTest2/pipeline-syntax/

exit/b



:_+ MP3



::_

:mp3a

:mp3am

set fp=* MP3 accidentally moved.

rem lu: Jan-14-2019

echo.
echo %fp%

set cbf_path=%dropbox%\mp3\Jan-14-2019 - Accidentally Moved

exit/b



::_

:mp3

set fp=* MP3 root.

rem lu: Jan-14-2019

echo.
echo %fp%

set cbf_path=%dropbox%\mp3

exit/b



:_

:pc

:podcast_folder

set fp=* Podcaster.

rem lu: Jan-5-2019

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\gPodder\bin\gpodder.exe

set cbf_filename=%cbf_application%

set cbf_path=%my documents%\gpodder\downloads

exit/b



:_

:sa

:staging_area

set fp=* Staging area.

rem lu: Jan-14-2019

echo.
echo %fp%

set cbf_path=%my documents%\mp3 staging area

exit/b



:_

:c_db

set fp=* Cart local db folder.

rem lu: Jan-17-2019

echo.
echo %fp%

call n dev

set cbf_path=%cbf_path%\build\h2db

exit/b



:_

:8

set fp=* 8.

rem lu: Jan-22-2019

echo.
echo %fp%

set cbf_filename=%savannah%\belfry\synchronize with dropbox.bat

exit/b



:_+ Multi-Edit Config Files



::_

:mecfg

set fp=* Multi-Edit Config file folder.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_path=%appdata%\Multi Edit Software\Multi-Edit\11\Config.04

exit/b



::_

:mecfg_db

set fp=* Multi-Edit Config Files Dated Backups.

rem lu: Jan-3-2018

echo.
echo %fp%

set cbf_path=%dropbox%\IT\Multi-Edit\Multi-Edit Config Files Dated Backups

exit/b



::_

:mecfg_dr

set fp=* Multi-Edit Config file folder in DropBox.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_path=%dropbox%\Multi-Edit_2008_Config_Files

exit/b



::_

:mecfg_s

set fp=* Multi-Edit Config file folder in Share-Zone.

rem lu: Feb-13-2019

echo.
echo %fp%

set cbf_path=%share-zone%\Multi-Edit_2008_Config_Files

exit/b



:_+ Jenkins



::_

:je

set fp=* Jenkins.

rem lu: Dec-7-2018

echo.
echo %fp%

rem Admin password file.
set cbf_filename=%userprofile%\.jenkins\secrets\initialAdminPassword

rem If you delete things from here, Jenkins may reset things.
set cbf_path=%userprofile%\.jenkins

set cbf_url=https://jenkins.io

exit/b



::_

:jf

set fp=* Develop branch Jenkinsfile.

rem lu: Jan-15-2019

echo.
echo %fp%

call n dev

set cbf_filename=%cbf_path%\jenkinsfile

exit/b



::_

:jf_s

set fp=* Share-zone Jenkinsfile.

rem lu: Jan-15-2019

echo.
echo %fp%

call n dev

set cbf_filename=%share-zone%\jenkinsfile

exit/b



::_

:jew

set fp=* Jenkins workspace.

rem lu: Jan-7-2019

echo.
echo %fp%

set cbf_path=%userprofile%\.jenkins\workspace

exit/b



::_

:jfc

set fp=* Jenkinsfile in current folder.

rem lu: Jan-14-2019

echo.
echo %fp%

set cbf_filename=jenkinsfile

exit/b



::_

:jelo

:jl

set fp=* Jenkins Log.

rem lu: Jan-11-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\jenkins log.xlsx

exit/b



:_+ Microsoft Products



::_

:ex

set fp=* Excel.

rem lu: Jan-3-2019

echo.
echo %fp%

rem Determine installation path.

if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" set cbf_application=C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE

if "%cbf_application%" == "" (
  echo.
  echo * Excel is not installed.
  exit/b 1
)

set cbf_application=%cbf_application_location%
set cbf_path=%cbf_application_location:\excel.exe=%
set cbf_filename=%cbf_application%

exit/b



::_

:wo

set fp=* Word.

rem lu: Jan-24-2019

echo.
echo %fp%

rem Determine installation path.

if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\winword.exe" set cbf_application_location=C:\Program Files (x86)\Microsoft Office\root\Office16\winword.exe

if "%cbf_application_location%" == "" (
  echo.
  echo Notepad++ is not installed.
  exit/b
)

set cbf_application=%cbf_application_location%
set cbf_path=%cbf_application_location:\winword.exe=%
set cbf_filename=%cbf_application%

exit/b



:_+ Blank Documents



::_

:txb

set fp=* Edit a blank txt document.

rem lu: Jan-25-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\blank.txt

exit/b



::_

:wob

:woblk

set fp=* Use Word to edit a blank docx document.

rem lu: Jan-25-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\blank.docx

exit/b



::_

:exb

:exblk

set fp=* Use Excel to edit a blank docx document.

rem lu: Jan-25-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\blank.xlsx

exit/b



:_

:smgn

set fp=* Sm gradle nexus.

rem lu: Jan-25-2019

echo.
echo %fp%

set cbf_path=%cbf_default_repository_folder%\sm_gradle_nexus\api

exit/b



:_

:gwp

set fp=* Gradle wrapper properties

rem lu: Jan-29-2019

echo.
echo %fp%

call n jj

set cbf_path=%cbf_path%\gradle\wrapper

set cbf_filename=%cbf_path%\gradle-wrapper.properties

exit/b



:_

:coco

set fp=* Code compare.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_application=c:\program files\devart\code compare\codecompare.exe

set cbf_filename=%cbf_application%

exit/b



:_

:cm

:cmac

:ql

set fp=* Quickla CMAC.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_path=%savannah%\cmac\Quickla-for-Multi-Edit

exit/b



:_

:ctf

:cts

set fp=* Craig's Terraform State file.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\Craig's Terraform State file.txt

exit/b



:_

:ctfo

:cts

set fp=* Craig's Terraform State file - old.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\Craig's Terraform State file - old.txt

exit/b



:_

:sqlw

:wb

set fp=* SQL Workbench.

rem lu: Feb-4-2019

echo.
echo %fp%

set cbf_application=%aa%\SQL Workbench\SQLWorkbench.exe

set cbf_filename=%cbf_application%

exit/b



:_

:pga

:pgad

set fp=* PGAdmin.

rem lu: Feb-4-2019

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\pgAdmin 4\v4\runtime\pgAdmin4.exe

rem I commented the url because the correct way to start PGA is thought the exe.
rem Having the URL here kind of makes things confusing.
rem set cbf_url=http://127.0.0.1:50255/browser/

exit/b



:_+ Putty



::_

:putt

set fp=* Putty.

rem lu: Feb-5-2019

echo.
echo %fp%

set cbf_application=c:\program files\putty\putty.exe

exit/b



::_

:puge

:putg

:puttg

set fp=* Puttygen.

rem lu: Feb-5-2019

echo.
echo %fp%

set cbf_application=c:\program files\putty\puttygen.exe

exit/b



::_

:pug

set fp=* AWS Putty user guide.

rem lu: Feb-5-2019

echo.
echo %fp%

set cbf_url=https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html?icmpid=docs_ec2_console

exit/b



:_ 

:lu

:lul

set fp=* Last updated log file.

rem lu: Feb-8-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\last_updated_log.txt

exit/b



:_+ Home Folders



::_

:jh

:jvh

:jv_hm

:java_home

set fp=* Java Home.

rem fcd: Dec-14-2018

echo.
echo %fp%

set cbf_path=%java_home%

exit/b



::_

:nh

set fp=* Node home.

rem fcd: Feb-11-2019

echo.
echo %fp%

set cbf_path=%node_home%

exit/b



::_

:jre

:jreh

:jrh

:jvre

set fp=* Java runtime path.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_path=%jre_home%

exit/b



::_

:m2h

set fp=* M2 Home.

rem fcd: Feb-11-2019

echo.
echo %fp%

set cbf_path=%m2_home%

exit/b



::_

:mh

:mvh

:mv_hm

set fp=* Maven Home.

rem fcd: Jul-7-2017

rem This is useful for new installs.

echo.
echo %fp%

set cbf_path=%maven_home%

exit/b



::_

:aws

:aws_cfg

:aws_hm

:aws_home

set fp=* AWS configuration.

rem lu: Nov-6-2018

echo.
echo %fp%

set cbf_filename=%userprofile%\.aws\credentials

set cbf_path=%userprofile%\.aws

exit/b



::_

:je_hm

:je_home

set fp=* Jenkins home

rem lu: Dec-15-2018

echo.
echo %fp%

call n home

set cbf_path=%cbf_path%\.jenkins

exit/b



::_

:h

:hm

:home

:up

:user

:usr

set fp=* User profile/home.

rem lu: Dec-17-2018

echo.
echo %fp%

set cbf_path=%userprofile%

exit/b



::_

:wa

set fp=* Windows Apps.

rem lu: Dec-19-2018

echo.
echo %fp%

set cbf_path=%localappdata%\Microsoft\WindowsApps

exit/b



:_

:ub

set fp=* Ubuntu server.

rem lu: Feb-25-2019

echo.
echo %fp%

set cbf_instance_id=i-0ce1f47a5dcd7f7b0

exit/b



:_

:machine-specific-file

set fp=* Machine-specific file.

rem lu: Feb-27-2019

echo.
echo %fp%

set cbf_filename=%reach out%\%computername%.asc

exit/b



:_+ Windows Related Functions



::_

:copa

set fp=* Control panel.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_application=%systemroot%\system32\control.exe

set cbf_filename=%cbf_application%

exit/b



::_

:sk

:skyp

:skype

set fp=* Skype for business.

rem lu: Jan-18-2019

echo.
echo %fp%

set cbf_application=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business.lnk

set cbf_filename=%cbf_application%

exit/b



::_

:zoom

set fp=* ZoomIt

rem lu: Dec-14-2018

echo.
echo %fp%

call n pounders

set cbf_application=%cbf_path%\zoomit.exe

if not exist %cbf_application% set cbf_application=%share-zone%\copied software\zoomit.exe

set cbf_filename=%cbf_application%

exit/b



::_

:demo

set fp=* Demo on Jan-29-2019.

rem lu: Jan-29-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\demo.pptx

exit/b



::_

:clip

:snip

:snto

set fp=* Snipping tool.

rem lu: Feb-4-2019

rem clip, screen shot: skw

echo.
echo %fp%

set cbf_application=%windir%\system32\SnippingTool.exe

exit/b



::_

:start

set fp=Windows Startup.

rem fcd: May-9-2017

echo.
echo %fp%

set cbf_path=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup

exit/b



::_

:env

:oden

:odenv

set fp=* Open Environment Variable dialogue box.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_application=%systemroot%\system32\SystemPropertiesAdvanced.exe

set cbf_filename=%cbf_application%

exit/b



::_

:svc

set fp=* Start Windows Services viewer.

rem fcd: May-11-2017

echo.
echo %fp%

set cbf_application=c:\windows\system32\services.msc

exit/b



:_

:ty

set fp=* Type command.

rem lu: Mar-5-2019

echo.
echo %fp%

set cbf_application=type

exit/b



:_+ Message Center



::_

:mtw

set fp=* Message to work.

rem lu: Mar-5-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\mtw.asc

exit/b



::_

:mtg

set fp=* Message to GFE.

rem lu: Mar-5-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\mtg.asc

exit/b



:_

:h2

set fp=* H2.

rem lu: Jan-8-2019

echo.
echo %fp%

set cbf_url=http://localhost:8080/cart-api/h2-console

exit/b



:_

:swag

set fp=* Swagger on local.

rem lu: Jan-16-2019

echo.
echo %fp%

set cbf_url=http://localhost:8080/cart-api/swagger-ui.html

exit/b



:_

:ni

set fp=* Ni.

rem lu: Mar-5-2019

echo.
echo %fp%

call td s

set cbf_filename=%cbf_path%\ni.bat

exit/b



:_

:cart_recipes

set fp=* Cart recipes.

rem lu: Mar-6-2019

echo.
echo %fp%

call n cartc

set cbf_path=%cbf_path%\recipes

exit/b



:_

:devp

set fp=* DevPuzzler.

rem lu: Mar-7-2019

echo.
echo %fp%

set cbf_url=https://github.com/DevTechnology/DevPuzzlers

exit/b



:_

:tr

set fp=* Transfer.

rem lu: Mar-8-2019

echo.
echo %fp%

set cbf_path=%dropbox%\transfer

exit/b



:_

:n1

set fp=* N1.

rem lu: Mar-8-2019

echo.
echo %fp%

set cbf_filename=%share-zone%\ni.bat

exit/b



:_+ FGT



::_

:fgt

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_path=%aa%\repositories\For-Git-Testing

set cbf_url=https://github.com/jonathan-r-jones/For-Git-Testing.git

exit/b



::_

:fgt_d

:fgtd

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_path=%aa%\repositories\ForGitTesting_develop_branch

exit/b



::_

:fgt_j

:fgtj

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_path=%aa%\repositories\ForGitTesting_jj_devops_branch

exit/b



::_

:fgt_m

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_path=%aa%\repositories\ForGitTesting_master_branch

exit/b



:_ (!rfsp) (mov-6)