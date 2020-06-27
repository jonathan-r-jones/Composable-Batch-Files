:_ (!nb)

@echo off



:_

set filep=* Nickname/alias dictionary that sets recyclable environment variables ^
corresponding to a given unique nickname parameter. This can be thought of as a large ^
configuration file or data layer. The idea is that you register your folder, file, etc. here ^
and then you can easily access it via your chosen alias.



:_

set fp=* In order to promote freshness, reset the error level.

ver>nul



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [single parameter]

echo.
echo Parameter 1: Alias to run assignment for.

echo.
echo In the function block corresponding to the label, you can set any or all ^
of the CBF environment variables. Typically this batch file would be called by echo a ^
different batch file looking to set a particular CBF rem environment variable. However, ^
if you call it yourself from the command line, it will set the variable plus it will ^
describe itself.

echo.
echo Example(s):

echo.
echo %0 ma

exit/b



:_

Metadata: Track Size (!tsn)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Apr-8-2020  12,393    125,865      627

:Nov-11-2019  11,112    113,846      573

:May-27-2019   9,349     99,887      499

:Apr-15-2019   8,907     95,073      482

:Aug-24-2018   5,148     60,394      300

:Jun-13-2018   3,261     36,243      194



:_

Historical Rubric.

echo.
echo Notes: I kept the facade dictionaries because they help make clear the 
echo author's intent when calling which variable is being set.

rem global variable database

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



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:edsw

:system_widget

set fp=SystemWidget.js.

rem FCD: Apr-7-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\^
dashboard\SystemWidget.js

exit/b



:_

:pom_root

set fp=Pom root.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\mercury6\pom.xml

exit/b



:_

:pom_ear

set fp=Pom Ear.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\mercury6\Mercury-ear\pom.xml

exit/b



:_

:pom_ejb

set fp=Pom Ejb.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\mercury6\Mercury-ejb\pom.xml

exit/b



:_

:pom_web

set fp=Pom Web.

rem FCD: Apr-10-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\mercury6\Mercury-web\pom.xml

exit/b



:_

:td

set fp=* td.bat.

rem FCD: May-13-2017

echo.
echo %fp%

set cbf_fn=%COMPOSABLE_BATCH_FILES%\td.bat

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

set cbf_fn=%userprofile%\.m2\settings.xml

exit/b



:_

:cw

:edcw

:edit_contacts_widget

set fp=ContactsWidget.js.

rem FCD: Apr-7-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\ContactsWidget.js

exit/b



:_

:cwt

:contacts_widget_for_tablet

set fp=ContactsWidget.js for tablet.

rem FCD: Sep-25-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\tablet\dashboard\ContactsWidget.js

exit/b



:_+ Mobile Login Enabling



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

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\login.js

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

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\WIPPage.js

exit/b



:_

:mac

set fp=* Mobile log.

rem lu: Dec-4-2017

echo.
echo %fp%

set cbf_fn=c:\mercury\mobility\How to Build a Sencha App on Mac Using Cordova.asc

exit/b



:_

:aj

set fp=* App.json.

rem lu: Dec-4-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\app.json

exit/b



:_

:nc

set fp=Netconfig.

rem lu: Dec-6-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils\netconfig.js

exit/b



:_

:cwp

:contacts_widget_for_phone

set fp=ContactsWidget.js for phone.

rem FCD: Sep-25-2017

echo.
echo %fp%

set cbf_fn=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\phone\dashboard\ContactsWidget.js

exit/b



:_

:fn

set fp=* Filename nicknames.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_fn=%COMPOSABLE_BATCH_FILES%\fn.bat

exit/b



:_

:stan

set fp=Open folder standalone.

rem fcd: May-9-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_fn=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\configuration\standalone.xml

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

:tirem

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

:pub

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

:old_log

set fp=Wildfly server Log.

rem fcd: May-22-2017

echo.
echo %fp%

call m set_wildfly_location

set cbf_fn=%wildfly_location%\standalone\log\server.log

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

set cbf_fn=C:\ProgramData\MySQL\MySQL Server 5.7\my.ini

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

:ye

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

set cbf_url=http://www.dropbox.com

exit/b



:_

:pizza

set fp=Alex's pizza code.

rem lu: Feb-2-2018

echo.
echo %fp%

set cbf_fn=d:\aa\NovaCodeCamp.PizzaRatings\pizza.sln

set cbf_path=d:\aa\NovaCodeCamp.PizzaRatings

set cbf_url=https://github.com/jonathan-r-jones/NovaCodeCamp.PizzaRatings.git

exit/b



:_

:tt

set fp=TT VS solution.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf_fn=%dropbox%\it\ticktockmenu\TickTockMenu.sln

set cbf_path=%dropbox%\it\ticktockmenu

exit/b



:_

:cdr

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

set cbf_fn=%dropbox%\IT\Karl-2-C-Sharp-Testing\karl 2.sln

exit/b



:_

:etc

set fp=Karl 2 Testing Solution.

rem lu: Feb-16-2018

echo.
echo %fp%

set cbf_path=

set cbf_fn=

set cbf_url=http://europeantestingconference.eu/2018

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

:rm

set fp=* Readme.md.

rem lu: Mar-1-2018

echo.
echo %fp%

set cbf_fn=Readme.md

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



:_+ QuickLauncher



::_

:ql

:qlgit

set fp=* Quickla.

rem lu: Apr-10-2018

echo.
echo %fp%

set cbf_path=%savannah%\cmac\Quickla-for-Multi-Edit

exit/b



::_

:drql

:qldr

set fp=* Quickla CMAC on Dropbox.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_clone_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

set cbf_path=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit

set cbf_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

exit/b



:_+ CBF Path Automation



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

call m expand_to_path_only "%cbf_fn%"

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

set cbf_fn=C:\Program Files\nodejs\node_modules\npm\package.json

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

set cbf_fn=%dropbox%\it\various file types\filename with spaces.txt

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

:ghp

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

set cbf_fn=%COMPOSABLE_BATCH_FILES%\cbf.bat

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

:a

set fp=* A folder.

rem lu: Dec-12-2017

echo.
echo %fp%

set cbf_path=c:\a

exit/b



:_

:gdr

set fp=* G drive.

rem lu: Jul-15-2019

echo.
echo %fp%

set cbf_path=g:\

exit/b



:_

:hdr

set fp=* H drive.

rem lu: Jul-1-2019

echo.
echo %fp%

set cbf_path=h:\

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

:drawable

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

:solar_w

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

set cbf_fn=%Dropbox%\image manipulation\menu 4 square diamond icon.pdn

exit/b



:_

:cj_au

set fp=* ClipJam audiobooks folder.

rem lu: Jul-15-2018

echo.
echo %fp%

set cbf_path=h:\audiobooks

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

rem Determine installation path.

set cbf_application=

if exist "c:\program files\mozilla firefox\firefox.exe" set cbf_application=c:\program files\mozilla firefox\firefox.exe
if exist "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" set cbf_application=C:\Program Files (x86)\Mozilla Firefox\firefox.exe

if "%cbf_application%" == "" (
  echo.
  echo * Firefoxis not installed.
  exit/b 1
)

exit/b



::_

:vi

set fp=* Vivaldi.

rem lu: Feb-12-2020

echo.
echo %fp%

rem Determine installation path.

set cbf_application=

if exist "%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe" set cbf_application=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

if "%cbf_application%" == "" (
  echo.
  echo %fp% is not installed.
  exit/b 1
)

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

:wp

:wopa

set fp=* WordPad.

rem lu: Aug-9-2018

echo.
echo %fp%

set cbf_application=c:\program files\windows nt\accessories\wordpad.exe

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
  echo * Error: Notepad++ is not installed.
  exit/b
)

set cbf_application=%cbf_application_location%
set cbf_path=%cbf_application_location:\notepad++.exe=%

set cbf_url=
:download notepad++

exit/b



::_

:me

set fp=* Multi-Edit.

rem lu: Feb-7-2020

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\multi-edit 2008\mew32.exe

exit/b



::_

:sm

:subl

set fp=* Sublime.

rem lu: Oct-9-2019

echo.
echo %fp%

set cbf_application=C:\Program Files\Sublime Text 3\sublime_text.exe

exit/b



::_

:viva

set fp=* Vivaldi.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf_application=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

exit/b



:_

:feed

set fp=* Feed reader sample.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\feedreader

set cbf_url=https://github.com/codehollow/FeedReader.git

exit/b



:_

:mamo

set fp=* Madison Monkeys.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\madisonmonkeys

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

set cbf_path=%cbf_repo%\EasyLayout.Forms

set cbf_url=https://github.com/lprichar/EasyLayout.Forms.git

exit/b



:_

:caro

set fp=* Carousel.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\CarouselView

set cbf_url=https://github.com/alexrainman/CarouselView.git

exit/b



:_

:hans

set fp=* Hanselman forms.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\Hanselman.Forms

set cbf_url=https://github.com/jamesmontemagno/Hanselman.Forms.git

exit/b



:_

:jm_conf

set fp=* JM Conference app.

rem lu: Jul-18-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\app-conference\src

set cbf_url=https://github.com/xamarinhq/app-conference.git

exit/b



:_

:navd

set fp=* JM NavDrawer.

rem lu: Jul-18-2018

echo.
echo %fp%

rem set cbf_path=%cbf_repo%\Xam.NavDrawer

set cbf_url=https://github.com/jamesmontemagno/Xam.NavDrawer.git

exit/b



:_

:awrestapi

set fp=* AWRestAPI.

rem lu: Jul-20-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\AWRestAPI

set cbf_url=https://github.com/scotcurry/AWRestAPI.git

exit/b



:_

:beyo

set fp=* Beyond basics.

rem Radio button. skw

rem lu: Jul-23-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\Beyond-Basics

set cbf_url=

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

set cbf_path=%cbf_repo%\Xamarin.Forms-Monkeys\Monkeys-CarouselView

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

set cbf_path=%cbf_repo%\app-monkeys

set cbf_url=https://github.com/jamesmontemagno/app-monkeys.git

exit/b



:_

:caro

:weca

set fp=* Welcome carousel.

rem lu: Jul-24-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\WelcomeCarousel

set cbf_url=https://github.com/leroygumede/WelcomeCarousel.git

exit/b



:_

:resu

set fp=Resume.

rem lu: Jan-9-2020

echo.
echo %fp%

set cbf_fn=%savannah%\resume\jonathan jones' resume.doc

set cbf_path=%savannah%\resume

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

set cbf_fn=%cd%\AndroidManifest.xml

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

set cbf_fn=C:\a\skeptics.txt

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

set cbf_fn=C:\a\skeptics.txt

set cbf_url=file:///C:/a/skeptics.txt

exit/b



:_

:mgr

set fp=* Meetup Manager.

rem lu: Jul-30-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\MeetupManager

set cbf_url=https://github.com/jamesmontemagno/MeetupManager.git

exit/b



:_

:bsfr

set fp=* Buster from Fresnel.

rem lu: Jul-30-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\buster-from-fresnel

set cbf_url=https://github.com/jonathan-r-jones/buster-from-fresnel

exit/b



:_

:petz

set fp=* Petzold.

rem lu: Aug-2-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\xamarin-forms-book-samples

set cbf_url=https://github.com/xamarin/xamarin-forms-book-samples.git

exit/b



:_

:vp

set fp=* Vetted Pictures.

rem lu: Aug-2-2018

echo.
echo %fp%

set cbf_path=C:\Users\jonat\Documents\Dropbox\pictures

exit/b



:_

:pinc

set fp=* Pinch gesture.

rem lu: Aug-3-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\xamarin-forms-samples\WorkingWithGestures\PinchGesture

exit/b



:_

:mob

set fp=* Mobility samples.

rem lu: Aug-3-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\mobile-samples

set cbf_url=https://github.com/xamarin/mobile-samples.git

exit/b



:_

:lp

set fp=* Live player samples!

rem lu: Aug-3-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\mobile-samples\liveplayer

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

set cbf_path=%cbf_repo%\xamarin-forms-samples\WorkingWithGestures\PanGesture

exit/b



:_

:mod

set fp=* How to modularize a batch file.

rem lu: Aug-7-2018

echo.
echo %fp%

set cbf_fn=%dropbox%\it\composable-batch-files\how to modularize a batch file.asc

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

set cbf_fn=%composable_batch_files%\CBF.pptx

exit/b



:_

:nx

set fp=* New and exciting.

rem lu: May-16-2019

echo.
echo %fp%

set cbf_path=%dropbox%\pictures\new and exciting

exit/b



:_

:root

set fp=* Root

rem lu: Aug-10-2018

echo.
echo %fp%

set cbf_path=c:\a

exit/b



:_

:hw

set fp=* Hello world batch file.

rem lu: Aug-10-2018

echo.
echo %fp%

set cbf_fn=%composable_batch_files%\hello_world.bat

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

:gett

set fp=* Gettysburg Address.

rem lu: Aug-13-2018

echo.
echo %fp%

set cbf_fn=%composable_batch_files%\Gettysburg_Address.txt

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

:fox

set fp=* Fox.

rem lu: Jun-4-2020

echo.
echo %fp%

set cbf_url=https://www.foxnews.com

exit/b



:_

:wsj

set fp=* Wsj.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf_url=https://www.wsj.com

exit/b



:_

:covi

set fp=* Conference Vision.

rem lu: Aug-15-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\ConferenceVision

set cbf_url=https://github.com/Microsoft/ConferenceVision.git

exit/b



:_

:bufr

set fp=* Fresnel dated backup.

rem lu: Aug-16-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\Fresnel Dated Backups

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

set cbf_fn=%dropbox%\it\fresnel\incidents.json

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

set cbf_path=%cbf_repo%\jsonplaceholder

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

set cbf_path=%cbf_repo%\Nova2018CodeCamp2

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

:t1

:test1

set fp=* Test 1 path.

rem lu: Sep-2-2018

echo.
echo %fp%

set cbf_path=%aa%\test1

exit/b



:_

:t2

:test2

set fp=* Test 2 path.

rem lu: Sep-2-2018

echo.
echo %fp%

set cbf_path=%aa%\test2

exit/b



:_+ Sean W.'s API Course



::_

:war

set fp=* Web api core resources for Shawn W.'s course.

rem lu: Sep-5-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\webapicoreresources\data

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

:mb_old

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

set cbf_path=%cbf_repo%\RESTfulAPIAspNetCore_Course

set cbf_url=https://github.com/KevinDockx/RESTfulAPIAspNetCore_Course.git

exit/b



::_

:dockx

set fp=* Restful API Asp Net Core Course by Kevin Dockx - My modifications.

rem lu: Sep-7-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\dx

set cbf_url=https://github.com/jonathan-r-jones/dx.git

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

set cbf_fn=%dropbox%\it\gitignore\VisualStudio.gitignore

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

set cbf_fn=.gitignore

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

set cbf_path=%cbf_repo%\BuildingASPNETCore2

set cbf_url=https://github.com/psauthor/BuildingASPNETCore2

exit/b



::_

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

:devops

:wg

set fp=* DevOps Working Group.

rem lu: Oct-22-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\DevOps-WG

set cbf_url=https://github.com/DevTechnology/DevOps-WG

exit/b



:_

:arm

set fp=* ARM templates.

rem lu: Oct-23-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\

set cbf_url=https://github.com/Azure/azure-quickstart-templates

exit/b



:_

:wiki

set fp=* WG Wiki.

rem lu: Oct-24-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\

set cbf_url=https://github.com/DevTechnology/DevOps-WG/wiki

exit/b



:_

:testx

:rep18

:rep17

:troy

:oc

:sr27

:sr32

:fymls

:dymls

:yml

:sr1

:sr2

:sr3

:fqt

:sr4

:sr5

:sr7

:acrg

:acrj

:bgs

:bgs_cn

:bgs1

:bgs2

:bgsp

:btbt

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

:gocl

:govc

:ht

:iaws

:ic_hp

:ic

:ic_info

:je2

:je2h

:je2r

:je2_h

:je2_help

:test1

:test2

:test3

:test4

:test4

:test4

:test4

:test4

:test4

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

:clb

:sf1

:sf2

:sf3

:xcee

:igit

:appr

:sf1p

:sf1f

:copy_test_file

:d3

:uigit

:swag

:sw

:sw3

:dapi3

:gitjd

:zip

:unzip

:cart_svc

:runcart

:sc

:rc

:ldd

:ldds

:opt

:optj

:mb

:cart

:devo

:imm

:pems

:npji

:ymlp

:japi

:cart-412

:wb

:cart-412-2

:cart-412-3

:nds

:cart-412-5

:mapper

:crai

:gal

:mapper

:cade

:isso

:issoa

:cdocs

:ds

:awsr

:rl

:cbd

:full_pem

:cap

:odls

:chefsp

:chefsk

:cartje

:sr8

:ctf

:atr

:asr

:ecc

:acrc

:cr

:sr9

:sr11

:sr12

:sr10

:sr14

:y

:ct

:pare

:sr15

:sr16

:nl

:ja

:env1

:env2

:rf

:h2

:acrgit

:acrm

:acr

:ant

:gsl

:sl

:gfs

:ap

:cln

:sr19

:tu

:chje

:core

:eboc

:jj_jf

:comp

:earmjf

:cc2

:sr21

:sr20

:nast

:sr22

:sr23

:eat

:sr6

:cpam

:563

:zs

:rns

:tns

:ci

:xc

:sr28

:sr30

:563b

:563c

:attr

:sr31

:563d

:waas

:fqt3

:fqt2

:sr25

:sr26

:fqt_test

:ppfs

:sr33

:mc3

:cainm

:sr34

:sr35

:hldd

:dv

:ppf

:mode

:cit

:fp

:cf

:ts

:sshk

:fq

:dms

:dm1

:cgit

:990

:certs

:localyml

:cna

:cnc

:cnj

:ncart

:dvapi

:dvcart

:dvport

:cartzip

:cm

:lyr

:ksi

:cartdv

:iac

:cart_s3

:cain

:jj

:mpj

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

:ma

:mazip

:lyml

:c

:ly

:lyb

:jwt

:rnc

:caco

:dist

:kan

:dyml

:ened

:dymlb

:myc

:srap

:dp

:earm1

:earm2

:htearm

:rq

:magit

:fyml

:esw

:fqma

:dema

:desl

:dao

:prod

:cr1

:cr2

:cr3

:cr4

:1124

:cr5

:er2

:er1

:er3

:cfglq

:rep3

:rep2

:rep1

:rep4

:loca

:rulo

:maxm

:enad

:conflq

:m

:rcl

:esc

:esch

:esct

:devm

:devs

:ofs

:ofm

:fqsl

:aocs

:csia

:pap2

:pap1

:prsl

:prma

:dvt

:relegit

:releji

:relen2

:crelms

:elmsfc

:cerelms

:elmshp

:kdva

:kfq

:kdv

:elms

:cv

:l1

:l2

:l3

:l4

:rep5

:rep6

:rep7

:rep8

:1152

:hash

:ssi

:rf_ma

:catd

:rf_cade

:deuca

:deuca1

:deuca2

:deuca3

:fqtyml

:bsc

:sw_binu

:sw_tools

:lymlb

:CART-1168

:je

:jirele

:gitrele

:ver

:rep9

:rep10

:kri

:dvsl

:dvma

:cf1

:cf2

:reki

:logs

:1232

:ma_icp

:rf_ma_icp

:ma_api

:rf_ma_api

:jwtc

:ujwt

:sere

:carcon

:qpd

:sein

:csi

:stag

:rlc

:cpc

:immf

:pkix

:cert

:kl

:dy

:fy

:saml

:jks

:tls

:1253

:sf1d

:sec1

:sec2

:sec3

:sec4

:ssl

:sec_ssl

:sr45

:dvmq

:sr51

:fqmq

:amq

:fqam

:deam

:amq_dv

:amq_de

:mqfq

:mqdv

:nst

:nsr

:1250

:csts

:l5

:bh

:skfi

:kary

:amco

:amco2

:tesc

:pajs

:cvn

:iac2

:kart

:mapa

:fqin

:cius

:old_cart

:1295

:sr52

:uizip

:jira_url

:py

:occ

:chefdk

:ccd

:sec

:secs

:etds

:etd

:ets

:sy

:vdd

:1070

:enedh

:eden

:nex

:1070

:stma

:stsl

:usrc

:asrc

:enedh

:ssco

:rf_caco

:r6

:fbi

:jj_test

:1339

:pr

:pulls

:lbjj

:jj_devops

:sr51

:sr53

:fqam_old

:fqsl_old

:je2c

:immp

:feii

:imms

:immf

:immr

:oliv

:immi

:kar2

:klas

:repo

:qari

:sw_earm

:eald

:eal

:jev

:kiin

:cks

:rup

:ay

:ins

:sr55

:qt

:kary2

:kf1

:kf2

:budb

:gray

:ihd

:rep11

:rep12

:rep13

:rep14

:rep15

:khr2

:khr1

:khr3

:khr4

:repo1

:repo2

:rep_s

:rep_d

:khr5

:rep16

:kh_xml

:xmlc

:csv

:khr6

:lqc

:htlogs

:eit

:rf_api

:rf_ui

:snow

:nexus

:acin

:acgi

:acro

:htgray

:scerts

:jcerts

:acgt

:acgtfq

:deac

:fqac

:sr56

:sr57

:sr38

:acinfq

:acrofq

:liqu

:cami

:1568

:1568p

:reports

:views

:view

:v1

:v2

:v3

:rhp

:mlf

:ccbj

:chse

:acli

:lqma

:lqch

:lqconf

:lqchse

:lqchlo

:lq

:chse

:chlo

:juse

:abconf

:win10

:sr58

:1583

:1584

:ipconf

:iai

:1608

:team

:imm_old

:immd

:imms_ws

:trus

:kela

:saml

:sr59

:sr60

:sr61

:sr

:sr62

:sr63

:sr64

:sr65

:sr66

:sr67

:sr68

:sr69

:sr70

:sr71

:sr72

:sr73

:rpji

:case

:case_s

:acco

:icc

:cac

:sr74

:sr75

:sr76a

:sr76b

:juseconf

:rct

:swfq

:swdv

:crc

:rsi

:csc

:usq

:1257

:eds

:sms

:rp_desc

:rp_spec

:rp_view

:rp_jrh

:rp_arh

:rp_do

:rp_vw

:rp_ty

:rp_sv

:rp_view2

:rein

:rp_8

:icca

:rp_1

:rp_11

:v11

:pg_pwd

:lqfd

:v9

:v10

:max

:fmax

:rp_6

:rp_kios

:rp_ksit

:rp_3

:rp_2

:tory

:rp_5

:rp_7

:rp_10

:rp_4

:rp_18

:rp_ai

:views2

:rst

:rp_svc

:head

:v11b

:rp_13

:pure

:an

:anp

:rp_svc_test

:po_iccat

:rute

:backlog

:rp_14

:1714

:grem

:ari

:sr77

:sr78

:sra

:po_ui

:rp_rf

:rp

:trs

:msr

:db

:rp_

:relinf

:arl

:v12

:emax

:amp

:htan

:dean

:anpl

:anht

:anpp

:ansam

:immfws

:angs

:andocs

:andoc

:webi

:anwe

:csco

:jj_1_11

:jj_1_11b

:jj_1_11o

:jj_test

:rt1

:eec

:serv

:rf_rp

:po_dic

:httpd

:kanb

:kb

:cacof

:artui

:uiart

:po_ui

:rf_ui

:icp

:ui

:po_cm

:dic

:po_dict

:dict

:pass-through

set fp=* Pass through.

call %share-zone%\ni.bat %1

exit/b



:_

:apc

:c_apc

set fp=* iCart APC.

rem lu: Oct-17-2018

echo.
echo %fp%

set cbf_path=%userprofile%\j\cart

set cbf_url=https://github.com/DevTechnology/iCart-apc

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

set cbf_path=%cbf_repo%

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

:caw

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

set cbf_fn=%userprofile%\.aws\credentials

set cbf_path=%userprofile%\.aws

exit/b



:_

:mi

:misc

set fp=* Miscellany folder.

rem lu: Sep-30-2019

echo.
echo %fp%

set cbf_path=%dropbox%\jonathan\miscellany

exit/b



:_

:gas

set fp=* Google advanced search

rem lu: Dec-5-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\

set cbf_url=https://www.google.com/advanced_search

exit/b



:_

:keys

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

set cbf_path=%cbf_repo%\AirWatch-samples

set cbf_url=https://github.com/vmwaresamples/AirWatch-samples.git

exit/b



:_

:aw

:airwatch

set fp=* VMware AirWatch SDK.

rem lu: Aug-16-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\Xamarin-AWSDK\samples\xamariniossampleapp

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

set cbf_fn=%composable_batch_files%\Composable Batch Files Helper.lnk

exit/b



:_

:je_server

set fp=* Connect to my AWS instance from the command line!

rem lu: Dec-12-2018

echo.
echo %fp%

rem This filename is from Dec-14-2018
set cbf_fn=%userprofile%\downloads\ec2-18-253-148-152.us-gov-east-1.compute.amazonaws.com.rdp

rem This filename is from c. Dec-11-2018
set cbf_fn=%userprofile%\downloads\ec2-18-253-117-92.us-gov-east-1.compute.amazonaws.com.rdp

exit/b



:_

:deen

:deve

set fp=* Dev environment Excel file.

rem lu: Dec-6-2018

echo.
echo %fp%

call %0 c_docs

set cbf_fn=%cbf_path%\development environment.xlsx

exit/b



:_+ Spring Boot Sample Projects



::_

:mysb

set fp=* My clone of the spring boot test code from the PluralSight Jenkins 2 course.

rem I did this so that I could fail the build to test failures.

rem lu: Dec-13-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\jenkins2-course-spring-boot

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

set cbf_path=%cbf_repo%\jenkins2-course-spring-boot

set cbf_url=https://github.com/g0t4/jenkins2-course-spring-boot

exit/b



::_

:sbt

set fp=* Spring boot test code from the PluralSight Jenkins 2 course.

rem lu: Dec-13-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\jenkins2-course-spring-boot\spring-boot-samples\spring-boot-sample-atmosphere

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

:hush

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

set cbf_fn=%composable_batch_files%\jaws.pptx

exit/b



:_

:rf_s

:s

:sz

set fp=* Share-Zone.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_clone_url=https://github.com/jonathan-r-jones/Share-Zone.git

set cbf_path=%share-zone%

set cbf_url=https://github.com/jonathan-r-jones/Share-Zone.git

rem set cbf_url=git@bitbucket.org:Jonathan17/share-zone.git
rem set cbf_url=https://Jonathan17@bitbucket.org/Jonathan17/share-zone.git

exit/b



:_

:coso

set fp=* Copied software.

rem lu: Dec-19-2018

echo.
echo %fp%

call %0 sz

set cbf_path=%cbf_path%\copied software

exit/b



:_

:ccf

set fp=* Copied clif file.

rem lu: Dec-19-2018

echo.
echo %fp%

call %0 sz

set cbf_fn=%cbf_path%\copy of cc.asc

exit/b



:_

:gf

:gfe

set fp=* Gfe.txt.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_fn=%share-zone%\gfe.asc

exit/b



:_ + Git



::_

:git_bin

:git_user_bin

:gu

:gub

:pu

:sg

:super_bin

:super_git

set fp=* Git power user bin. Loaded with utilities.

rem lu: Jun-4-2020

echo.
echo %fp%

rem skw git super location, git super path, super git, GitHub super

set cbf_path=%localappdata%\Programs\Git\usr\bin

if exist "c:\Program Files\Git\usr\bin\" set cbf_path=c:\Program Files\Git\usr\bin

exit/b



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

set cbf_fn=%cbf_application%

exit/b



:_

:aig

set fp=* Run a2.

rem lu: Dec-28-2018

echo.
echo %fp%

call %0 s

set cbf_fn=%cbf_path%\aig.bat

exit/b



:_

:mste

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

set cbf_fn=%userprofile%\downloads\10.168.73.179.rdp

exit/b



:_

:bc

set fp=* Bee Clone.

rem lu: Dec-30-2018

echo.
echo %fp%

set cbf_fn=%userprofile%\downloads\10.168.73.223.rdp

exit/b



:_+ Reach Out



::_

:ro

:drro

set fp=* Reach out.

rem lu: Sep-15-2018

echo.
echo %fp%

set cbf_path=%dropbox%\savannah\reach out

set cbf_url=https://github.com/jonathan-r-jones/Reach-Out.git

exit/b



::_

:ldro

:rold

set fp=* Reach out local drive.

rem lu: May-4-2020

echo.
echo %fp%

set cbf_path=%my documents%\savannah\reach out

exit/b



:_

:cwk

:wkc

set fp=* Copy of work.asc.

rem lu: Sep-15-2018

echo.
echo %fp%

set cbf_fn=%share-zone%\copy of wk.asc

exit/b



:_

:nj

set fp=* New Jenkins.

rem lu: Jan-4-2019

echo.
echo %fp%

set cbf_fn=%userprofile%\downloads\ec2-18-253-135-181.us-gov-east-1.compute.amazonaws.com.rdp

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

set cbf_fn=%cbf_path%\DevOps Roadmap.xlsx

exit/b



:_

:jtt

set fp=* Jenkins trigger test.

rem lu: Jan-8-2019

echo.
echo %fp%

set cbf_path=%cbf_repo%\jenkins-trigger-test

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

:jfold

set fp=* J folder and file.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_fn=%savannah%\belfry\j.bat

set cbf_path=%userprofile%\j

exit/b



:_

:c_db

set fp=* Cart local db folder.

rem lu: Jan-17-2019

echo.
echo %fp%

call %0 dev

set cbf_path=%cbf_path%\build\h2db

exit/b



:_

:8

:f8

set fp=* Synchronize with dropbox.

rem lu: Jan-22-2019

rem echo.
rem echo %fp%

set cbf_fn=%savannah%\belfry\synchronize with dropbox.bat

exit/b



:_+ Microsoft Products



::_

:ex

set fp=* Excel.

rem lu: Jan-3-2019

echo.
echo %fp%

rem Determine installation path.

set cbf_application=

if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" set cbf_application=C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE
if exist "c:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE" set cbf_application=c:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE

if "%cbf_application%" == "" (
  echo.
  echo * Excel is not installed.
  exit/b 1
)

set cbf_path=%cbf_application:\excel.exe=%
rem Commented the following line because it breaks f.bat. Nov-26-2019 11:28 AM
rem set cbf_fn=%cbf_application%

exit/b



::_

:wo

set fp=* Word.

rem lu: Jan-24-2019

echo.
echo %fp%

rem Determine installation path.

set cbf_application=

if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\winword.exe" set cbf_application=C:\Program Files (x86)\Microsoft Office\root\Office16\winword.exe
if exist "c:\Program Files\Microsoft Office\root\Office16\winword.exe" set cbf_application=c:\Program Files\Microsoft Office\root\Office16\winword.exe

if "%cbf_application%" == "" (
  echo.
  echo * Word is not installed.
  exit/b
)

set cbf_path=%cbf_application:\winword.exe=%
rem Commented the following line because it breaks f.bat. Nov-26-2019 11:28 AM
rem set cbf_fn=%cbf_application%

exit/b



:_

:smgn

set fp=* Sm gradle nexus.

rem lu: Jan-25-2019

echo.
echo %fp%

set cbf_path=%cbf_repo%\sm_gradle_nexus\api

exit/b



:_

:gwp

set fp=* Gradle wrapper properties

rem lu: Jan-29-2019

echo.
echo %fp%

call %0 jj

set cbf_path=%cbf_path%\gradle\wrapper

set cbf_fn=%cbf_path%\gradle-wrapper.properties

exit/b



:_

:ql

set fp=* Quickla CMAC.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_clone_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

set cbf_path=%savannah%\cmac\Quickla-for-Multi-Edit

set cbf_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit

exit/b



:_

:ctf

:cts

set fp=* Craig's Terraform State file.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\Craig's Terraform State file.txt

exit/b



:_

:ctfo

:ctsf

set fp=* Craig's Terraform State file - old.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\Craig's Terraform State file - old.txt

exit/b



:_

:sqlw

set fp=* SQL Workbench.

rem lu: Feb-4-2019

echo.
echo %fp%

set cbf_application=%aa%\SQL Workbench\SQLWorkbench.exe

set cbf_fn=%cbf_application%

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

set cbf_fn=%share-zone%\last_updated_log.txt

exit/b



:_

:machine-specific-file

set fp=* Machine-specific file.

rem lu: Feb-27-2019

echo.
echo %fp%

set cbf_fn=%dropbox%\savannah\reach out\%computername%.asc

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

set cbf_fn=%share-zone%\mtw.asc

exit/b



::_

:mtg

set fp=* Message to GFE.

rem lu: Mar-5-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\mtg.asc

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

:n1

set fp=* N1.

rem lu: Mar-8-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\ni.bat

exit/b



:_+ FGT



::_

:fgt

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_branch=Branch2

set cbf_clone_url=https://github.com/jonathan-r-jones/For-Git-Testing.git

set cbf_path=%cbf_repo%\For-Git-Testing

set cbf_url=https://github.com/jonathan-r-jones/For-Git-Testing.git

exit/b



::_

:fgt1

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_branch=Branch1

set cbf_clone_url=https://github.com/jonathan-r-jones/For-Git-Testing.git

set cbf_path=%cbf_repo%\For-Git-Testing_%cbf_branch%

set cbf_url=https://github.com/jonathan-r-jones/For-Git-Testing.git

exit/b



::_

:fgt2

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_branch=Branch2

set cbf_clone_url=https://github.com/jonathan-r-jones/For-Git-Testing.git

set cbf_path=%cbf_repo%\For-Git-Testing_%cbf_branch%

set cbf_url=https://github.com/jonathan-r-jones/For-Git-Testing.git

exit/b



::_

:fgt_d

:fgtd

set fp=* ForGitTesting, develop branch.

rem lu: Mar-20-2019

echo.
echo %fp%

call %0 fgt

set cbf_branch=develop

set cbf_path=%cbf_path%_develop_branch

exit/b



::_

:fgt_j

:fgtj

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo.
echo %fp%

call %0 fgt

set cbf_branch=jj_devops

set cbf_path=%cbf_path%_jj_devops_branch

exit/b



:_+ J Files



::_

:j1

set fp=* J1.txt.

rem lu: Feb-1-2018

echo.
echo %fp%

set cbf_fn=c:\a\j1.txt

set cbf_java=c:\a\j1.java

exit/b



::_

:j2

set fp=* J2.txt.

rem lu: Feb-1-2018

echo.
echo %fp%

set cbf_fn=c:\a\j2.txt

exit/b



::_

:j5

set fp=* %1.txt.

rem lu: Mar-29-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\%1.txt

exit/b



::_

:j6

set fp=* %1.txt.

rem lu: Mar-29-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\%1.txt

exit/b



::_

:j7

set fp=* %1.txt.

rem lu: Dec-5-2019

echo.
echo %fp%

call n cade

set cbf_fn=%cbf_path%\%1.txt

exit/b



::_

:shl

set fp=* sh.log

rem lu: Feb-1-2018

echo.
echo %fp%

set cbf_log_file=c:\a\sh.log

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

set cbf_fn=%tmp%\certutil_input.txt

exit/b



::_

:gencred_output

set fp=Credential generator output file. Copy this into you m2's settings.xml file.

rem fcd: Jul-17-2017

echo.
echo %fp%
echo.

set cbf_fn=%tmp%\certutil_output.txt

exit/b



:_+ Search Results



::_

:tsr

set fp=* Temporary search results.

rem lu: Jun-14-2018

echo.
echo %fp%

set cbf_fn=%temp%\search_results.txt

exit/b



::_

:sr_fs

set fp=* Temporary search results for fs.

rem lu: Jun-14-2018

echo.
echo %fp%

set cbf_fn=%temp%\search_results_fs.txt

exit/b



::_

:sr_cs

set fp=* Temporary search results for cs.

rem lu: Jun-14-2018

echo.
echo %fp%

set cbf_fn=%temp%\search_results_cs.txt

exit/b



:_

:mock

set fp=* Mockaroo.

rem lu: Apr-2-2019

echo.
echo %fp%

rem call m set_specific_browser fx

set cbf_url=https://www.mockaroo.com/schemas/162497

exit/b



:_

:aqua

set fp=* Ascii aquarium.

rem lu: Apr-2-2019

echo.
echo %fp%

set cbf_url=https://www.cyberciti.biz/tips/linux-unix-apple-osx-terminal-ascii-aquarium.html

exit/b



:_+ Bookmark



::_

:sbm

set fp=* Set bookmark.

rem lu: Apr-9-2019

echo.
echo %fp%

set cbf_bookmark=%cd%

exit/b



::_

:bm

set fp=* Go back to bookmark.

rem lu: Apr-9-2019

echo.
echo %fp%

set cbf_path=%cbf_bookmark%

exit/b



:_

:back

:bk

set fp=* Back button.

rem lu: Apr-9-2019

echo.
echo %fp%

set cbf_path=%cbf_back%

exit/b



:_

:it2

set fp=* IT2.

rem lu: Apr-15-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\iT2.asc

exit/b



:_

:arp

set fp=* Add or Remove Programs.

rem lu: Apr-17-2019

echo.
echo %fp%

set cbf_application=appwiz.cpl

exit/b



:_

:dfw

set fp=* Download for windows.

rem lu: Apr-29-2019

echo.
echo %fp%

set cbf_appended_words=%%20download%%20for%%20windows

rem Old Way set cbf_url=https://www.google.com/search?as_q=%2+download+windows

exit/b



:_

:k

set fp=* One file.

rem lu: Apr-25-2019

echo.
echo %fp%

set cbf_path=%share-zone%\one-file

exit/b



:_

:npl

set fp=* Now playing.

rem lu: Apr-29-2019

echo.
echo %fp%

set cbf_npl=1037

exit/b



:_

:kcom

:kitchen_commands

set fp=* Kichen (executable).

rem kitchen commands: skw

rem lu: May-6-2019

echo.
echo %fp%

set cbf_url=https://docs..io/ctl_kitchen.html

exit/b



:_

:cart_recipes

:ccr

set fp=* Cart recipes.

rem lu: Mar-6-2019

echo.
echo %fp%

call %0 cc

set cbf_path=%cbf_path%\recipes

exit/b



:_+ Mobile Apps



::_

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

set cbf_clone_url=https://github.com/jonathan-r-jones/fresnel.git

set cbf_path=%dropbox%\it\fresnel

set cbf_url=https://github.com/jonathan-r-jones/fresnel.git

exit/b



::_

:fr_bu

set fp=* Fresnel Mobile App, local backup version.

rem lu: Jul-26-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\backups\fresnel

set cbf_url=https://github.com/jonathan-r-jones/fresnel.git

exit/b



::_

:ql_bu

set fp=* Quick Launcher, local backup version.

rem lu: Jul-26-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\backups\Quickla-for-Multi-Edit

set cbf_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

exit/b



::_

:cbf_bu

set fp=* CBF, local backup version.

rem lu: Jul-26-2018

echo.
echo %fp%

set cbf_path=%cbf_repo%\backups\Composable-Batch-Files

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files

exit/b



:_

:glued_path

set fp=* Glued path.

rem lu: May-10-2019

rem echo.
rem echo %fp%

set cbf_path=%cbf_glued_path%

exit/b



:_

:ti

set fp=* Test Integration relative path.

rem lu: May-10-2019

echo.
echo %fp%

set cbf_path=\test\integration

exit/b



:_

:re

set fp=* Recipe relative path.

rem lu: May-14-2019

echo.
echo %fp%

set cbf_path=\recipes

exit/b



:_+ Instances



::_

:sr17

set fp=* Gaws centos practice server.

rem lu: May-7-2019

echo.
echo %fp%

set cbf_host=

set cbf_instance_id=i-02bd7157f98da14aa

set cbf_ip=18.253.66.185

set cbf_public_dns=ec2-18-253-135-154.us-gov-east-1.compute.amazonaws.com

set cbf_url=http://%cbf_ip%

exit/b



::_

:ub

:sr18

set fp=* Gaws Ubuntu practice server.

rem lu: May-13-2019

echo.
echo %fp%

set cbf_host=

set cbf_instance_id=i-0ce1f47a5dcd7f7b0

set cbf_ip=18.253.125.85

set cbf_public_dns=ec2-18-253-117-88.us-gov-east-1.compute.amazonaws.com

set cbf_url=http://%cbf_ip%

exit/b



:_+ App Center Demo



::_

:imdx

set fp=* Introduction to Mobile Development with Xamarin by James Montemagno.

rem lu: Apr-13-2019

echo.
echo %fp%

set cbf_branch=master

set cbf_clone_url=https://github.com/dotnet-presentations/xamarin.git

set cbf_path=%cbf_repo%\imdx\Introduction to Mobile Development with Xamarin

set cbf_fn=%cbf_path%\Introduction to Mobile Development with Xamarin.pptx

set cbf_url=https://github.com/dotnet-presentations/xamarin.git

exit/b



::_

:bike

set fp=* Bike search.

rem lu: Jun-20-2018

echo.
echo %fp%

set cbf_path=%aa%\repositories\AppCenterDemo.BikeSearch

set cbf_url=https://github.com/alexsorokoletov/AppCenterDemo.BikeSearch.git

exit/b



::_

:yapps

set fp=* My apps in AppCenter.

rem lu: Jun-21-2018

echo.
echo %fp%

set cbf_path=

set cbf_url=https://appcenter.ms/apps

exit/b



::_

:apce

set fp=* App center.

rem lu: May-20-2019

echo.
echo %fp%

set cbf_url=https://www.visualstudio.com/app-center/

exit/b



::_

:10

:p10

set fp=* Page 10.

rem lu: Jun-27-2018

echo.
echo %fp%

set cbf_path=%dropbox%\it\fresnel\fresnel\Views

set cbf_fn=%dropbox%\it\fresnel\fresnel\Views\AboutPage.xaml

exit/b



::_

:acd

set fp=* App Center Demo.

rem lu: Apr-13-2019

echo.
echo %fp%

set cbf_root=%1

set cbf_branch=master

set cbf_clone_url=https://github.com/jonathan-r-jones/App-Center-Demo.git

set cbf_fc_path=%cbf_repo%\acd\buster\buster\views

set cbf_fn=%cbf_repo%\acd\App Center Demo.pptx

set cbf_android_manifest_file=%cbf_repo%\%cbf_root%\buster\buster.Android\Properties\AndroidManifest.xml

set cbf_path=%cbf_repo%\acd

set cbf_settings_file=%cbf_repo%\acd\buster\buster\Views\Page1.xaml

set cbf_url=https://github.com/jonathan-r-jones/App-Center-Demo.git

exit/b



:_

:gitacd

set fp=* ACD on GitHub.

rem lu: May-20-2019

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/App-Center-Demo.git

exit/b



:_

:pain

set fp=* Paint.Net.

rem lu: May-20-2019

echo.
echo %fp%

set cbf_application=c:\program files\paint.net\paintdotnet.exe

exit/b



:_

:bb

set fp=* Build button for Android.

rem lu: May-20-2019

echo.
echo %fp%

set cbf_url=https://appcenter.ms/users/jonathan.r.jones.3/apps/Fresnel.iOS/build/branches/master

exit/b



:_

:bust

set fp=* Buster.

rem lu: May-21-2019

echo.
echo %fp%

set cbf_clone_url=https://github.com/jonathan-r-jones/Buster.git

set cbf_fn=%dropbox%\it\buster\buster\Buster\Views\Page1.xaml

set cbf_path=%dropbox%\it\buster

set cbf_url=https://github.com/jonathan-r-jones/Buster.git

exit/b



:_+ Home Folders



::_

:jdk

:jdkh

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

:jre

:jreh

:jrh

:jvre

set fp=* Java runtime path.

rem According to Craig M., this should be %java_home%\jre.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf_path=%jre_home%

exit/b



::_

:nh

:node_home

set fp=* Node home.

rem fcd: Feb-11-2019

echo.
echo %fp%

set cbf_path=%node_home%

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

set cbf_fn=%userprofile%\.aws\credentials

set cbf_path=%userprofile%\.aws

exit/b



::_

:je_hm

:je_home

set fp=* Jenkins home

rem lu: Dec-15-2018

echo.
echo %fp%

call %0 home

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



:_+ Visual Studio



::_

:vsi

set fp=* Visual Studio Installer.

rem lu: Sep-11-2018

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe

exit/b



::_

:vs

set fp=* Visual Studio 2019.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf_path=c:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe

exit/b



::_

:vs17

set fp=* Visual Studio 2017.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf_path=c:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe

exit/b



:_

:bz

:buzz

set fp=* Buzz.

rem lu: May-26-2019

echo.
echo %fp%

set cbf_fn=%dropbox%\savannah\reach out\buzz.asc

exit/b



:_

:xps

set fp=* Xps.

rem lu: May-26-2019

echo.
echo %fp%

set cbf_fn=%dropbox%\savannah\reach out\xps.asc

exit/b



:_

:app2

set fp=* App2. App Center Demo 2.

rem lu: May-26-2019

echo.
echo %fp%

set cbf_clone_url=https://github.com/jonathan-r-jones/app2.git

set cbf_path=%cbf_repo%\app2

exit/b



:_

:app3

set fp=* App Center Demo 3.

rem lu: May-27-2019

echo.
echo %fp%

set cbf_clone_url=https://github.com/jonathan-r-jones/app3.git

set cbf_path=%cbf_repo%\app3

exit/b



:_

:app4

set fp=* App Center Demo 4.

rem lu: May-27-2019

echo.
echo %fp%

set cbf_clone_url=https://github.com/jonathan-r-jones/app5.git

set cbf_path=%cbf_repo%\app3

exit/b



:_

:app1

:app5

:app6

:app7

:app8

:app9

:app10

set fp=* App Center Demo test apps.

rem lu: May-27-2019

echo.
echo %fp%

set cbf_root=%1

set cbf_android_manifest_file=%cbf_repo%\%cbf_root%\%cbf_root%\%cbf_root%.Android\Properties\AndroidManifest.xml

set cbf_clone_url=https://github.com/jonathan-r-jones/%cbf_root%.git

set cbf_path=%cbf_repo%\%cbf_root%

set cbf_settings_file=%cbf_repo%\%cbf_root%\%cbf_root%\%cbf_root%\Views\Page1.xaml

exit/b



:_

:gps

set fp=* Gil's pipeline script.

rem lu: May-28-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\gils_pipeline_script

exit/b



:_

:t2

set fp=* Test 2

rem lu: Jun-13-2019

echo.
echo %fp%

set cbf_application=

set cbf_fn=

set cbf_path=%cbf_repo%\

set cbf_url=

exit/b



:_

:qr

set fp=* QR Stuff.

rem lu: Jun-27-2019

echo.
echo %fp%

set cbf_url=https://www.qrstuff.com/

exit/b



:_+ BDSO



::_

:bdg

set fp=* BDSO-Gateway.

rem lu: Jun-28-2019

echo.
echo %fp%

set cbf_application=

set cbf_clone_url=https://github.com/DevTechnology/bdso-gateway.git

set cbf_fn=

set cbf_path=%cbf_repo%\bdso-gateway

set cbf_url=https://github.com/DevTechnology/bdso-gateway

exit/b



::_

:bdso

set fp=* BDSO-MSA.

rem lu: Jun-28-2019

echo.
echo %fp%

set cbf_application=

set cbf_clone_url=https://github.com/DevTechnology/BDSO-MSA.git

set cbf_fn=

set cbf_path=%cbf_repo%\bdso-msa

set cbf_url=https://github.com/DevTechnology/BDSO-MSA

exit/b



::_

:bd15

set fp=* BDSO-Gateway, issue 15 branch.

rem lu: Jun-28-2019

echo.
echo %fp%

set cbf_branch=issue15

set cbf_path=%cbf_repo%\bdso-gateway-%cbf_branch%-branch

rem >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< >< Variables are alphabetized below here.

set cbf_clone_url=https://github.com/DevTechnology/bdso-gateway.git

set cbf_fc_path=%cbf_path%

set cbf_fn=%cbf_path%\platform\ci\Jenkinsfile

set cbf_jf=%cbf_path%\platform\ci\Jenkinsfile

set cbf_je=

set cbf_url=https://github.com/DevTechnology/bdso-gateway/tree/issue15

exit/b



::_

:bdj

set fp=* BDSO Jenkins instance.

rem lu: Jun-28-2019

echo.
echo %fp%

set cbf_application=

set cbf_fn=

set cbf_path=%cbf_repo%\

set cbf_url=http://35.168.72.223:9090/login?from=%2F

exit/b



::_

:bds

set fp=* BDSO SonarQube.

rem lu: Jun-28-2019

echo.
echo %fp%

set cbf_application=

set cbf_fn=

set cbf_path=%cbf_repo%\

set cbf_url=http://35.169.150.151:9000/dashboard?id=BioService

exit/b



:_

:mobp

set fp=* Mob programming doc.

rem lu: Jun-28-2019

echo.
echo %fp%

set cbf_application=

set cbf_fn=%share-zone%\mob.docx

set cbf_path=%cbf_repo%\

set cbf_url=

exit/b



:_

:golf

:pga

:pgad

set fp=* Connect to our Postgres database using PGAdmin.

rem lu: Jul-2-2019

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\pgAdmin 4\v4\runtime\pgAdmin4.exe

rem I commented the url because the correct way to start PGA is thought the exe.
rem Having the URL here kind of makes things confusing.
rem set cbf_url=http://127.0.0.1:50255/browser/
rem set cbf_url=http://127.0.0.1:59171/browser/

rem  I added this line so that sf golf would work.
rem set cbf_url=http://127.0.0.1:59171/?key=74c91a8a-0ef6-4550-9e08-7b7f4c0e3f09

exit/b



:_

:pa

:poan

set fp=* Port analysis.

rem lu: Jul-17-2019

echo.
echo %fp%

set cbf_fn=C:\Users\JJones2\j\Share-Zone\PPF\port analysis.xlsx

exit/b



:_

:te

set fp=* Template batch file.

rem lu: Jul-22-2019

echo.
echo %fp%

set cbf_fn=%composable_batch_files%\te.bat

exit/b



:_

:myca

set fp=* My cartys.

rem lu: Jul-30-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\my_cartys.xlsx

exit/b



:_+ Data Model



::_

:cdm

:dmsc

:dm

:dmc

:dm3

set fp=* Cart Data Model source code.

rem data diagram: skw

rem lu: Aug-2-2019

echo.
echo %fp%

set cbf_fn=%cbf_repo%\cade\Data Model\Data Model source code.jh

set cbf_path=%cbf_repo%\cade\Data Model

exit/b



::_

:jdl

:jh

:jhip

:dm2

:dme

set fp=* JDL Studio by JHipster, a.k.a. data model editor.

rem lu: Aug-2-2019

echo.
echo %fp%

set cbf_url=https://start.jhipster.tech/jdl-studio

exit/b



:_

:exre

set fp=* Expense Reports.

rem lu: Aug-8-2019

echo.
echo %fp%

call n s

set cbf_path=%cbf_path%\Expense Reports

exit/b



:_

:wk

set fp=* Work.

rem lu: Aug-8-2019

echo.
echo %fp%

set cbf_fn=%reach out%\wk.asc

set cbf_path=%dropbox%\work\wk

exit/b



:_

:ij

set fp=* IntelliJ.

rem lu: Aug-9-2019

echo.
echo %fp%

set cbf_application=C:\Program Files\JetBrains\IntelliJ IDEA 2019.2\bin\idea64.exe

exit/b



:_+ Localhost



::_

:h2lh

set fp=* H2 on local host.

rem lu: Jan-8-2019

echo.
echo %fp%

set cbf_url=http://localhost:8080/cart-api/h2-console

exit/b



::_

:gsg

:psg

set fp=* Pipeline script generator.

rem lu: Jan-11-2019

echo.
echo %fp%

call an kr

set cbf_url=http://localhost:8080/job/PipelineTest2/pipeline-syntax/

exit/b



::_

:42

:4200

:lh

:ui_lh

:uilh

set fp=* Localhost port 4200.

rem lu: Mar-18-2019

echo.
echo %fp%

set cbf_url=http://localhost:4200

exit/b



::_

:88

:8800

:lh

set fp=* Localhost port 8800.

rem lu: Mar-18-2019

echo.
echo %fp%

set cbf_url=http://localhost:4200

exit/b



:_

:krm

set fp=* Chromium.

rem lu: Aug-12-2019

echo.
echo %fp%

set cbf_application=c:\aa\ChromiumPortable\ChromiumPortable.exe

exit/b



:_

:bash

set fp=* Git bash.

rem lu: Aug-12-2019

echo.
echo %fp%

set cbf_application=C:\Users\JJones2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk

set cbf_fn=C:\Users\JJones2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk

set cbf_path=C:\Users\JJones2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Git

exit/b



:_+ Multi-Edit Configuration Files (skw Multi-Edit Config Files)



::_

:mecfg

set fp=* Multi-Edit Config file folder.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_path=%appdata%\Multi Edit Software\Multi-Edit\11\Config.04

exit/b



::_

:drmecfg

set fp=* Dropbox Multi-Edit Config files.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf_path=%dropbox%\Multi-Edit_2008_Config_Files

exit/b



::_

:bumecfg

set fp=* Multi-Edit Config Files Backups.

rem lu: Jan-3-2018

echo.
echo %fp%

set cbf_path=%dropbox%\Backups\Multi-Edit Config Files

exit/b



::_

:smecfg

set fp=* Multi-Edit Config file folder in Share-Zone.

rem lu: Feb-13-2019

echo.
echo %fp%

set cbf_path=%share-zone%\Multi-Edit_2008_Config_Files

exit/b



:_

:pgdata

set fp=* PGData.

rem lu: Aug-13-2019

echo.
echo %fp%

set cbf_path=c:\aa\pgdata

exit/b



:_

:dg

set fp=* Datagrip.

rem lu: Aug-22-2019

echo.
echo %fp%

set cbf_application=C:\aa\DataGrip 2019.2.2\bin\datagrip.exe

exit/b



:_

:anwo

set fp=* Angular Workshop.

rem lu: Sep-12-2019

echo.
echo %fp%

set cbf_url=https://gitlab.com/gzson79/angularworkshopdevtech

exit/b



:_

:shic

set fp=* Share-zone Icons.

rem lu: Sep-24-2019

echo.
echo %fp%

set cbf_path=%share-zone%\icons

exit/b



:_ + EQ



::_

:eq1

set fp=* Enrollment quandary.

rem lu: Sep-25-2019

echo.
echo %fp%

call n c

set cbf_fn=%cbf_path%\enrollment quandary.xlsx

exit/b



::_

:eq2

set fp=* Enrollment quandary 2.

rem lu: Sep-25-2019

echo.
echo %fp%

call n c

set cbf_fn=%cbf_path%\enrollment quandary 2.xlsx

exit/b



::_

:eq3

set fp=* Enrollment quandary 3.

rem lu: Sep-25-2019

echo.
echo %fp%

call n c

set cbf_fn=%cbf_path%\enrollment quandary 3.xlsx

exit/b



::_

:aeq

set fp=* Amalgamated Enrollment quandary.

rem lu: Sep-25-2019

echo.
echo %fp%

call n c

set cbf_fn=%cbf_path%\3 anumbers enrollment quandary.png

exit/b



::_

:eq

:eq4

set fp=* Enrollment quandary 4.

rem lu: Sep-25-2019

echo.
echo %fp%

call n c

set cbf_fn=%cbf_path%\amalgamated enrollment quandary.xlsx

exit/b



:_

:redo

set fp=* Release documents.

rem lu: Oct-7-2019

echo.
echo %fp%

call n cade

set cbf_path=%cbf_path%\release documents

exit/b



:_

:prex

:tama

set fp=* Process explorer.

rem task manager, sysinternals: skw

rem lu: Oct-9-2019

echo.
echo %fp%

set cbf_application=%dropbox%\Software\Tools\Process Explorer\procexp64.exe

exit/b



:_+ Juxtaposing Files



::_

:jxo

set fp=* Original file.

rem lu: Oct-29-2019

echo.
echo %fp%

call n rf_s

set cbf_fn=%cbf_path%\juxtapose original file.txt

exit/b



::_

:jxm

set fp=* My modified file.

rem lu: Oct-29-2019

echo.
echo %fp%

call n rf_s

set cbf_fn=%cbf_path%\juxtapose my modified file.txt

exit/b



:_+ Bootstrap Family (!fybs)



::_

:bs

set fp=* Migrating to BootStrap 4 documentation.

rem lu: Oct-24-2019

echo.
echo %fp%

set cbf_url=https://getbootstrap.com/docs/4.3/migration/

exit/b



::_

:bsi

set fp=* Font Awesome icon library.

rem lu: Oct-29-2019

echo.
echo %fp%

set cbf_url=https://fontawesome.com/icons?d=gallery

exit/b



::_

:bsw3c

set fp=* Bootstarp 4 at w3c.

rem lu: Oct-29-2019

echo.
echo %fp%

set cbf_url=https://www.w3schools.com/bootstrap4/default.asp

exit/b



:_

:swte

set fp=* SwaggerTest.

rem lu: Oct-31-2019

echo.
echo %fp%

set cbf_path=%cbf_repo%\SwaggertTest

exit/b



:_

:6

set fp=* Go to 6.

rem lu: Nov-1-2019

echo.
echo %fp%

set cbf_path=d:\aa\1\2\3\4\5\6

exit/b



:_

:ctt

set fp=* CBF test definition.

rem lu: Nov-5-2019

echo.
echo %fp%

set cbf_application=xx

set cbf_fn=xx

set cbf_je=https

set cbf_path=%cbf_repo%\x

set cbf_url=xxx

exit/b



:_+ Chef Family (!fych)



::_

:krb

set fp=* Knife.rb file.

rem lu: May-1-2019

echo.
echo %fp%

set cbf_fn=%userprofile%\.chef\knife.rb

exit/b



:_+ ASCII Art Family (!fyaa)



::_

:ascii_art_sailboat

:aass

set fp=* ASCII Art - %1.

rem lu: Nov-25-2019

echo.
echo %fp%

call n cbf

set cbf_fn=%cbf_path%\ascii_art_sailboat.txt

exit/b



::_

:ascii_art_sea_scene

:aass

set fp=* ASCII Art - %1.

rem lu: Nov-6-2019

echo.
echo %fp%

call n cbf

set cbf_fn=%cbf_path%\ascii_art_sea_scene.txt

exit/b



::_

:ascii_art_scuba

:aa_sc

set fp=* Ascii art - scuba.

rem lu: Nov-6-2019

echo.
echo %fp%

call n cbf

set cbf_fn=%cbf_path%\ascii_art_scuba.txt

exit/b



::_

:parrot

set fp=* Parrot.

rem lu: Apr-1-2019

echo %fp%

set cbf_fn=%composable_batch_files%\parrot.txt

exit/b



::_

:ascii_art

set fp=* ASCII art.

rem lu: Apr-1-2019

rem echo %fp%

set cbf_fn=%composable_batch_files%\ascii_art.txt

exit/b



::_

:ascii_art_2

set fp=* ASCII art.

rem lu: Apr-1-2019

rem echo %fp%

set cbf_fn=%composable_batch_files%\ascii_art_2.txt

exit/b



:_

:gpod

set fp=* G drive podcasts folder.

rem lu: Nov-9-2019

echo.
echo %fp%

set cbf_path=h:\podcasts

exit/b



:_

:ang

:ang_docs

set fp=* Angular docs.

rem lu: Nov-12-2019

echo.
echo %fp%

set cbf_url=https://valor-software.com/ngx-bootstrap/#/datepicker

exit/b



:_

:asus

set fp=* Asus.

rem lu: Nov-12-2019

echo.
echo %fp%

set cbf_fn=%reach out%\asus.asc

exit/b



:_+ Screen Shots



::_

:prsc

:scsh

:scre

set fp=* Screenshots folder. To get a screen shot into this folder, click windows key + print screen.

rem lu: Jun-3-2019

echo.
echo %fp%

set cbf_path=%userprofile%\Pictures\Screenshots

exit/b



::_

:sscsh

:sscre

set fp=* Share-zone screenshots.

rem lu: Mar-12-2020

echo.
echo %fp%

call n s

set cbf_path=%cbf_path%\Screenshots

exit/b



::_

:cscsh

set fp=* Cade screenshots.

rem lu: Apr-17-2020

echo.
echo %fp%

call pn cade

set cbf_path=%cbf_path%\Screenshots

exit/b



:_

:endv

set fp=* Environment Dv.

rem lu: Nov-25-2019

echo.
echo %fp%

set cbf_fn=c:\environments\dv\.kitchen-aws.yml

set cbf_path=c:\environments\dv

exit/b



:_

:tran

set fp=* Transfer folder.

rem lu: Oct-7-2019

echo.
echo %fp%

set cbf_path=%dropbox%\Transfer

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

:inwa

set fp=* Inactivity warning.

rem lu: Dec-3-2019

echo.
echo %fp%

call n usrc

set cbf_fn=%cbf_path%\app\services\dialog.service.ts

exit/b



:_

:apco

set fp=* App component

rem lu: Dec-3-2019

echo.
echo %fp%

call n usrc

set cbf_fn=%cbf_path%\app\app.component.ts

exit/b



:_+ Jenkins Family 2 (!fyje)



::_

:bujf

:jfbu

:jft

set fp=* Jenkinsfile backup.

rem lu: May-16-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\jenkinsfiles\jenkinsfile_backup

exit/b



::_

:arc

:ckje

:ckjf

set fp=* Code keepers for Jenkinsfile.

rem lu: Mar-11-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\Jenkinsfiles\Jenkinsfile_Code_Keepers

exit/b



::_

:jf

set fp=* Jenkinsfile folder.

rem lu: Jun-11-2019

echo.
echo %fp%

call pn api>nul
set cbf_fn=%cbf_path%\Jenkinsfile

set cbf_path=%share-zone%\jenkinsfiles

set cbf_cs=Jenkinsfile

exit/b



::_

:jt

set fp=* Jenkinsfile tester.

rem lu: Jun-2-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\jenkinsfiles\jenkinsfile_tester

exit/b



::_

:jenk

set fp=* Jenkins.

rem lu: Dec-7-2018

echo.
echo %fp%

rem Admin password file.
set cbf_fn=%userprofile%\.jenkins\secrets\initialAdminPassword

rem If you delete things from here, Jenkins may reset things.
set cbf_path=%userprofile%\.jenkins

set cbf_url=https://jenkins.io

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

set cbf_fn=jenkinsfile

exit/b



::_

:jelo

:jl

set fp=* Jenkins Log.

rem lu: Jan-11-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\jenkins log.xlsx

exit/b



::_

:rhje

:rhjf

set fp=* Red Hat Jenkinsfile from Jan-15-2020.

rem lu: Jan-15-2020

echo.
echo %fp%

set cbf_fn=%share-zone%\Jenkinsfiles\Jenkinsfile_Red_Hat

exit/b



:_

:ab

set fp=* Anisble.

rem lu: Dec-17-2019

echo.
echo %fp%

set cbf_path=%dropbox%\it\ansible

exit/b



:_

:abw

set fp=* Ansible workshop.

rem lu: Sep-6-2017

echo.
echo %fp%

set cbf_branch=master

set cbf_clone_url=https://github.com/jonathan-r-jones/ansible-for-devops-workshop.git

set cbf_path=%cbf_repo%\Ansible_Workshop

exit/b



:_+ Blank Documents



::_

:wob

:woblk

set fp=* Use Word to edit a blank docx document. (skw blank word document)

rem lu: Jan-25-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\blank.docx

exit/b



::_

:wobc

set fp=* Use Word to edit a blank docx document in Cade.

rem lu: Aug-15-2019

echo.
echo %fp%

call n cade

set cbf_fn=%cbf_path%\blank.docx

exit/b



::_

:bed

:exb

:exblk

set fp=* Use Excel to edit a blank document. (skw blank Excel document, blank excel file)

rem lu: Mar-22-2020

echo.
echo %fp%

set cbf_fn=%share-zone%\blank.xlsx

exit/b



::_

:exbc

set fp=* Use Excel to edit a blank docx document in Cade.

rem lu: Aug-15-2019

echo.
echo %fp%

call n cade

set cbf_fn=%cbf_path%\blank.xlsx

exit/b



::_

:txb

set fp=* Edit a blank txt document.

rem lu: Jan-25-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\blank.txt

exit/b



:_

:bases

:bashs

:sh

:shor

set fp=* Base shortcuts.

rem base icons: skw

rem lu: Jan-9-2020

echo.
echo %fp%

set cbf_path=%dropbox%\it\shortcuts\base

exit/b



:_

:csaa

set fp=* AWS Certified Solutions Architect - Associate prep document.

rem lu: Jan-23-2020

echo.
echo %fp%

set cbf_fn=AWS Certified Solutions Architect - Associate - Prep Materials.pdf

exit/b



:_

:dtg

set fp=* Dev Technology Group.

rem lu: Feb-3-2020

echo.
echo %fp%

set cbf_fn=%reach out%\dtg.asc

exit/b



:_

:mtdd

set fp=* Microsoft Teams down detector.

rem lu: Feb-3-2020

echo.
echo %fp%

set cbf_url=https://downdetector.com/status/teams/

exit/b



:_

:bugr

set fp=* Build.gradle. Here is the version number for releases.

rem lu: Feb-6-2020

echo.
echo %fp%

call n rf_ma

set cbf_fn=%cbf_path%\api\build.gradle

exit/b



:_

:1484

set fp=* Cart-1484.

rem lu: Feb-7-2020

echo.
echo %fp%

call n rf_ma

set cbf_fn=%cbf_path%\api\src\main\java\gov\dhs\ice\cart\service\CartPortalCriteriaServiceImpl.java

exit/b



:_

:go

set fp=* Google.

rem lu: Jul-16-2019

echo.
echo %fp%

set cbf_url=https://www.google.com/advanced_search

exit/b



:_

:yt

set fp=* YouTube.

rem lu: Feb-25-2018

echo.
echo %fp%

set cbf_url=https://www.youtube.com

call m set_specific_browser fx

exit/b



:_+ Software



::_

:poun

:pounders

:soto

:tools

set fp=* Pounders.

rem lu: Sep-27-2018

echo.
echo %fp%

set cbf_path=%dropbox%\Software\Tools

exit/b



::_

:soft

set fp=* Software.

rem lu: Feb-13-2020

echo.
echo %fp%

set cbf_path=%dropbox%\Software

exit/b



:_+ CMAC



::_

:cmac

set fp=* Local CMAC.

rem lu: Feb-18-2020

echo.
echo %fp%

set cbf_path=C:\Users\jonat\documents\Savannah\cmac

exit/b



::_

:drcmac

set fp=* Dropbox CMAC.

rem lu: Feb-18-2020

echo.
echo %fp%

set cbf_path=%dropbox%\savannah%\cmac

exit/b



:_

:mido

set fp=* Miscellaneous documents.

rem lu: Feb-18-2020

echo.
echo %fp%

set cbf_path=%dropbox%\miscellaneous documents

exit/b



:_

:concop_f

set fp=* Conflicted copy problem file.

rem lu: Feb-18-2020

echo.
echo %fp%

set cbf_fn=%dropbox%\miscellaneous documents\concop.txt

exit/b



:_

:soco

set fp=* CMAC source code.

rem lu: Feb-18-2020

echo.
echo %fp%

set cbf_path=C:\Users\jonat\dropbox\savannah\cmac\Source Code\.git\

exit/b



:_+ Savannah



::_

:sv

set fp=* Local Savannah.

rem lu: May-26-2019

echo.
echo %fp%

set cbf_path=%savannah%\

exit/b



::_

:drsv

set fp=* Dropbox Savannah.

rem lu: Feb-21-2020

echo.
echo %fp%

set cbf_path=%dropbox%\savannah

exit/b



:_ + Appdata



::_

:ad

:apda

:appd

set fp=* App data.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_path=%appdata%

exit/b



::_

:lad

set fp=* Local app data.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf_path=%localappdata%

exit/b



::_

:dtbg

set fp=* Desktop background.

rem lu: Feb-24-2020

echo.
echo %fp%

set cbf_path=%localappdata%\microsoft\windows\themes\roamedthemefiles\desktopbackground

exit/b

:+ desktopbackground

::C:\%appdata%

::C:\Users\jonat\AppData\Local\Microsoft\Windows\Themes\RoamedThemeFiles\DesktopBackground

::C:\Users\      jonat\AppData\Local\Microsoft\Windows\Themes\RoamedThemeFiles\DesktopBackground

::C:\Users\jrj.GCITECH\AppData\Local\Microsoft\Windows\Themes\Snowy Nig\DesktopBackground





:_

:ea

:earl

set fp=* Earl.

rem lu: Jun-30-2019

echo.
echo %fp%

set cbf_fn=%dropbox%\savannah\reach out\earl.asc

exit/b



:_

:sp7

set fp=* SP7.

rem lu: Feb-25-2020

echo.
echo %fp%

set cbf_fn=%dropbox%\savannah\reach out\sp7.asc

exit/b



:_+ Mouse and Keyboard Center



::_

:imous

set fp=* Install Mouse and Keyboard Center.

rem lu: Feb-26-2020

echo.
echo %fp%

set cbf_application=%dropbox%\Software\Tools\MouseKeyboardCenter_64bit_ENG_11.1.exe

exit/b



::_

:mous

:mouse

set fp=* Run Mouse and Keyboard Center.

rem lu: Feb-26-2020

echo.
echo %fp%

set cbf_application=C:\Program Files\Microsoft Mouse and Keyboard Center\MouseKeyboardCenter.exe

exit/b



:_+ Code Compare



::_

:icoco

set fp=* Install Code Compare.

rem lu: Feb-27-2020

echo.
echo %fp%

set cbf_application=C:\Users\jonat\Dropbox\Software\Code Compare\codecomparepro40.exe

set cbf_fn=%cbf_application%

exit/b



::_

:coco

set fp=* Run Code compare.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_application=c:\program files\devart\code compare\codecompare.exe

set cbf_fn=%cbf_application%

exit/b



:_+ Belfry



::_

:bel

:belf

set fp=* Belfy.

rem lu: Aug-24-2018

echo.
echo %fp%

set cbf_path=%savannah%\belfry

exit/b



::_

:drbelf

set fp=* Dropbox Belfy.

rem lu: Mar-1-2020

echo.
echo %fp%

set cbf_path=%dropbox%\savannah\belfry

exit/b



:_

:cc

set fp=* Clif collection.

rem lu: Mar-1-2020

echo.
echo %fp%

set cbf_fn=%reach out%\cc.asc

exit/b



:_

:itin

set fp=* Itinerary.

rem lu: Mar-1-2020

echo.
echo %fp%

set cbf_fn=%dropbox%\miscellaneous documents\itinerary.xlsx

exit/b



:_+ Deli Family (!fydeli)



::_

:deli

set fp=* Dev library.

rem lu: Feb-21-2020

echo.
echo %fp%

set cbf_path=%dropbox%\savannah

set cbf_fn=%cbf_repo%\deli\src\main\resources\config\bootstrap-prod.yml

set cbf_clone_url=https://github.com/DevTechnology/dev-library.git

set cbf_gh=https://github.com/DevTechnology/dev-library

set cbf_path=%cbf_repo%\deli

set cbf_url=http://localhost:8080

exit/b


>< >< Footnote:

The creds for local deli are admin/admin.



::_

:jhre

set fp=* JHipster Registry.

rem lu: Mar-6-2020

echo.
echo %fp%

set cbf_url=http://localhost:8761

exit/b


>< >< Footnote:

Credentials are admin/admin.



::_

:boym

set fp=* Bootstrap yml.

rem lu: Mar-6-2020

echo.
echo %fp%

set cbf_fn=%cbf_repo%\deli\src\main\resources\config\bootstrap-prod.yml

exit/b


>< >< Footnote:

On Mar-6-2020, Kurt had me change this to:

fail-fast: false



:_+ Draw.Io



::_

:draw

:drawio

:visi

set fp=* Draw.io. A nice network diagram drawing tool that Adam used to create an ldd.

rem A possible Visio substitute.

rem lu: Apr-26-2019

echo.
echo %fp%

set cbf_url=https://www.draw.io/

exit/b



::_

:drawaws

set fp=* Use Draw.io to make an AWS diagram.

rem lu: Apr-26-2019

echo.
echo %fp%

set cbf_url=https://www.draw.io/?libs=aws2

exit/b


>< >< Footnote:

I used this on the Dev Library project and it worked really well.



::_

:drawawsc

set fp=* Use Draw.io to make an AWS diagram - Confluence Article..

rem lu: Apr-26-2019

echo.
echo %fp%

set cbf_url=https://support.draw.io/display/DO/2014/10/06/Using+AWS+2.0+icons+to+create+free+Amazon+architecture+diagrams+in+draw.io

exit/b



:_+ My YouTube



::_

:myl

:myt

:myyt

set fp=* My YouTube library - liked videos.

rem lu: Mar-15-2020

echo.
echo %fp%

set cbf_url=https://www.youtube.com/playlist?list=LLot7_lTZm_-7EYorAzrq4Dw

rem This works too, but not as well.
rem https://www.youtube.com/feed/library

exit/b



::_

:bemi

set fp=* Ben Mikha.

rem lu: Mar-15-2020

echo.
echo %fp%

set cbf_url=https://www.youtube.com/watch?v=5896syoWgKA

exit/b


>< >< Footnote:

Bookmark Mar-16-2020: 56:00

Summer Music Mix 2019 | Best Of Tropical & Deep House Sessions Chill Out #34 Mix By Music Trap

:Ben Mikha (travel videos)

:Wait For This by Nutriao

:Dancer in the Dark by Belluti



:_

:slac

set fp=* Slack

rem lu: Mar-13-2020

echo.
echo %fp%

set cbf_application=

set cbf_fn=

set cbf_path=%cbf_repo%\

set cbf_url=https://app.slack.com/client

set cbf_url=https://app.slack.com/client/TTZULSTT5/CUAV0HTGC

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



:_+ Windows Application Family (!fywin)



::_

:clip

:shot

:snap

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

:copa

set fp=* Control panel.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_application=%systemroot%\system32\control.exe

set cbf_fn=%cbf_application%

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

set cbf_fn=%cbf_application%

exit/b



::_

:zoomit

set fp=* ZoomIt

rem lu: Dec-14-2018

echo.
echo %fp%

call %0 pounders

set cbf_application=%cbf_path%\zoomit.exe

if not exist %cbf_application% set cbf_application=%share-zone%\copied software\zoomit.exe

set cbf_fn=%cbf_application%

exit/b



::_

:demo

set fp=* Demo on Jan-29-2019.

rem lu: Jan-29-2019

echo.
echo %fp%

set cbf_fn=%share-zone%\demo.pptx

exit/b



::_

:add_to_path

:add_path

:addpath

:env

:envi

:oden

:odenv

set fp=* Open Environment Variable dialogue box.

rem lu: Apr-29-2019

rem System Properties, Advanced System Settings, edit path, edit you path, edit env, set env: skw

echo.
echo %fp%

set cbf_application=%systemroot%\system32\SystemPropertiesAdvanced.exe

set cbf_fn=%cbf_application%

exit/b



::_

:svc

set fp=* Start Windows Services viewer.

rem fcd: May-11-2017

echo.
echo %fp%

set cbf_application=c:\windows\system32\services.msc

exit/b



::_

:shde

set fp=* Show desktop.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf_path=%userprofile%\desktop

set cbf_fn=%appdata%\microsoft\internet explorer\quick launch\shows desktop.lnk

exit/b



::_

:sow

set fp=* Show open windows.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf_fn=%appdata%\microsoft\internet explorer\quick launch\window switcher.lnk

exit/b



:_+ Windows Folders Family (!fywin)



::_

:d

set fp=* Downloads folder.

rem lu: Jun-7-2018

echo.
echo %fp%

set cbf_path=%userprofile%\downloads

exit/b



::_

:rece

set fp=* Recents folder.

rem lu: Nov-19-2019

echo.
echo %fp%

set cbf_path=%appdata%\Microsoft\Windows\Recent

exit/b



::_

:stme

set fp=* Open Windows start menu folder.

rem lu: Mar-27-2020

echo.
echo %fp%

set cbf_path=%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu

exit/b



::_

:star

:start

set fp=Windows Startup folder.

rem fcd: May-9-2017

echo.
echo %fp%

set cbf_path=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup

exit/b



::_

:docs

set fp=* Documents folder.

rem lu: Jul-9-2018

echo.
echo %fp%

set cbf_path=%userprofile%\documents

exit/b



::_

:de

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



:_

:dock

set fp=* Docker and Docker workshop.

rem lu: Feb-16-2018

echo.
echo %fp%

set cbf_application=C:\Program Files\Docker\Docker\Docker Desktop.exe

set cbf_url=https://github.com/AlinaIo/etc2018.git

exit/b



:_+ MP3 Family (!fymp3)



::_

:mc

set fp=* Latest Music.

rem lu: Aug-8-2018

echo.
echo %fp%

set cbf_fn=%Dropbox%\Miscellaneous Documents\groove is in the heart.xlsx

set cbf_path=%dropbox%\mp3\Jun-5-2018

exit/b



::_

:mp3

set fp=* MP3 root.

rem lu: Jan-14-2019

echo.
echo %fp%

set cbf_path=%dropbox%\mp3

exit/b



::_

:tagpr

set fp=* Tagging program.

rem lu: May-26-2019

echo.
echo %fp%

set cbf_application=C:\Program Files (x86)\Mp3tag\mp3tag.exe

exit/b



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

:bdm

set fp=* Baryonic Dark Matter.

rem lu: Feb-10-2020

echo.
echo %fp%

set cbf_path=%dropbox%\mp3\Baryonic Dark Matter

exit/b



:_+ Backups Family



::_

:mibu

set fp=* Mission backups.

rem lu: Jan-8-2020

echo.
echo %fp%

set cbf_path=%dropbox%\backups\mission

exit/b



::_

:svbu

set fp=* Savannah backups.

rem lu: Jan-8-2020

echo.
echo %fp%

set cbf_path=%dropbox%\backups\savannah

exit/b



::_

:bu

set fp=* Dropbox backups.

rem lu: Jan-8-2020

echo.
echo %fp%

set cbf_path=%dropbox%\backups

exit/b



:_

:jona

set fp=* Jonathan folder.

rem lu: Apr-2-2020

echo.
echo %fp%

set cbf_path=%dropbox%\jonathan

exit/b



:_

:mah

set fp=* Mission at home.

rem lu: Apr-2-2020

echo.
echo %fp%

set cbf_ex=%dropbox%\backups\mission\mission at home.xlsx

exit/b



:_

:acti

set fp=* ActiveMQ analysis.

rem lu: Apr-7-2020

echo.
echo %fp%

call pn cm

set cbf_fn=%cbf_path%\ActiveMQ Analysis.xlsx

exit/b



:_

:temp

:tmp

set fp=* Temp.

rem This is used as a cbf system default, if none is set. Please DO NOT DELETE.

rem lu: Jan-23-2018

echo.
echo %fp%

set cbf_path=%temp%

exit/b



:_+ Chef Logs



::_

:klog

set fp=* Kitchen Log.

rem lu: Apr-30-2019

echo.
echo %fp%

call n cc

set cbf_fn=%cbf_path%\.kitchen\logs\kitchen.log

set cbf_path=%cbf_path%\.kitchen\logs

exit/b



::_

:chlog

set fp=* Example chef log.

rem lu: Apr-13-2020

echo.
echo %fp%

set cbf_fn=c:\cookbook_test\cart\.kitchen\logs\sr75-centos-7.log

exit/b



:_

:of

:wiex

set fp=* Windows Explorer.

rem lu: Apr-22-2020

echo.
echo %fp%

set cbf_application=%systemroot%\explorer.exe

exit/b



:_

:cqb

:cqbu

:qcb

:x

set fp=* Code Quick Backup folder.

rem lu: Apr-27-2020

echo.
echo %fp%

call n c>nul

set cbf_path=%cbf_path%\Quick Code Backup

exit/b



:_+ Artifacts (!arts)



::_

:aaf

:artapi

:arta

:apiart

:lib

:libs

set fp=* API artifact folder.

rem lu: Jan-17-2020

rem skw stores the jar, where the jar, builds the jar

echo.
echo %fp%

call n rf_ma

set cbf_path=%cbf_path%\api\build\libs

exit/b



:_

:winz

:wizi

set fp=* Winzip.

rem lu: Apr-27-2020

echo.
echo %fp%

set cbf_application=c:\program files\winzip\winzip64.exe

exit/b



:_

:cs

set fp=* Set file type group to Cs.bat helper.

rem lu: Apr-28-2020

echo.
echo %fp%

set cbf_file_type=*.asc *.txt

set cbf_path=c:\aa\cs

exit/b



:_

:buma

set fp=* Build Master.

rem lu: Apr-30-2020

echo.
echo %fp%

call pn rf_cade

set cbf_path=%cbf_path%\Build Master

exit/b



:_

:1657

set fp=* %1.

rem lu: May-1-2020

echo.
echo %fp%

call pn rf_cade>nul

set cbf_path=%cbf_path%\tickets\%1

set cbf_fn=%cbf_path%\1657 display options.xlsx

set cbf_ex=%cbf_path%\CART_ENROLLMENTS__report_highlighted.xlsx

set cbf_png=%cbf_path%\demo.png

exit/b



:_

:mcd

set fp=* My color dictionary.

rem lu: May-12-2020

echo.
echo %fp%

set cbf_ex=%dropbox%\jonathan\miscellany\My Color Dictionary.xlsx

exit/b



:_

:po_ti

set fp=* Path only for the tickets folder.

rem lu: May-14-2020

echo.
echo %fp%

set cbf_path=%cbf_repo%\cade\tickets

exit/b



:_

:gas

set fp=* Google advanced search.

rem lu: May-14-2020

echo.
echo %fp%

set cbf_url=https://www.google.com/advanced_search

exit/b



:_

:smco

set fp=* Smart Commits.

rem lu: May-15-2020

echo.
echo %fp%

set cbf_conf=https://confluence.atlassian.com/bitbucket/use-smart-commits-298979931.html

exit/b



:_

:test

set fp=* Test folder.

rem lu: May-19-2020

echo.
echo %fp%

set cbf_path=%aa%\test

exit/b



:_

:tick

set fp=* Tickets.

rem lu: May-19-2020

echo.
echo %fp%

call n c>nul

set cbf_path=%cbf_path%\tickets

exit/b



:_

:jjgh

set fp=*

rem lu: May-22-2020

echo.
echo %fp%

set cbf_url=https://github.com/jonathan-r-jones

exit/b



:_

:hcp

:mhcp

set fp=* My house cleaning project.

rem lu: May-26-2020

echo.
echo %fp%

call n dr>nul

set cbf_ex=%cbf_path%\jonathan\miscellany\my house cleaning project.xlsx

exit/b



:_

:expo

set fp=* Poker results.

rem lu: May-26-2020

echo.
echo %fp%

set cbf_ex=%savannah%\Excels\Poker_Results.xls

exit/b



:_

:log_size

set fp=*

rem lu: May-27-2020

echo.
echo %fp%

call pn cm>nul
set cbf_ex=%cbf_path%\log size.xlsx

exit/b



:_

:mosf

set fp=* Manage Office Settings form.

rem lu: May-28-2020

echo.
echo %fp%

call pn po_ui>nul

set cbf_path=%cbf_path%\src\app\office-settings

set cbf_fn=%cbf_path%\office-settings.component.html

set cbf_ts=%cbf_path%\office-settings.component.ts

exit/b



:_

:tc

:ctc

:tcc

set fp=* Timecard calculator.

rem lu: Dec-5-2018

echo.
echo %fp%

set cbf_fn=%share-zone%\Cart Timecard Calculator.xlsx

set cbf_url=https://devtechnology.unanet.biz/devtechnology/action/home

exit/b



:_

:ruse

set fp=* Running services.

rem lu: Jun-1-2020

echo.
echo %fp%

call pn cm>nul

set cbf_ex=%cbf_path%\running services.xlsx

exit/b



:_

:1730

set fp=* %1.

rem lu: Jun-2-2020

echo.
echo %fp%

call pn v12>nul
set cbf_xml=%cbf_path%\1_12_0_x17_rename_table_columns_2.xml

call pn tick>nul

set cbf_path=%cbf_path%\%1

set cbf_conf=https://confluence.ice.dhs.gov/display/CART/Database+Field+changes

set cbf_ex=%cbf_path%\%1.xlsx

set cbf_now=%cbf_path%\%1.now

exit/b



:_

:java

set fp=* %1.

rem lu: Jun-2-2020

echo.
echo %fp%

call pn api>nul

set cbf_path=%cbf_path%\src\main\%1

exit/b



:_

:vsc

set fp=* Visual Studio Code.

rem lu: Jun-9-2020

echo.
echo %fp%

rem set cbf_application=C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe

set cbf_application=C:\Users\JJones2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk

rem set cbf_fn=C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe

exit/b



:_

:caset

set fp=* cart.service.ts

rem lu: Jun-11-2020

echo.
echo %fp%

call pn serv>nul

set cbf_fn=%cbf_path%\cart.service.ts

exit/b



:_

:1625

set fp=* %1.

rem lu: Jun-12-2020

echo.
echo %fp%

call pn tick>nul

set cbf_path=%cbf_path%\%1

set cbf_ex=%cbf_path%\%1.xlsx

exit/b



:_+ PO_ (!po_)



::_

:po_ma

set fp=* Path only ma.

rem lu: Jun-11-2020

echo.
echo %fp%

set cbf_path=%userprofile%\dev\cart

exit/b



::_

:po_api

set fp=* CART API folder.

rem lu: Jun-17-2020

echo.
echo %fp%

call pn po_ma>nul

set cbf_path=%cbf_path%\api

exit/b



:_

:isee

set fp=* InternalServerErrorException.java.

rem lu: Jun-17-2020

echo.
echo %fp%

call pn po_dic>nul

set cbf_fn=%cbf_path%\web\rest\exception\InternalServerErrorException.java

exit/b



:_

:cove

set fp=* Cookbook version number.

rem skw: Chef version number.

rem lu: Jun-17-2020

echo.
echo %fp%

call pn caco>nul

set cbf_fn=%cbf_path%\metadata.rb

exit/b



:_

:ruli

set fp=* Run list document.

rem lu: Jun-22-2020

echo.
echo %fp%

call pn po_cm>nul

set cbf_wo=%cbf_path%\run list document.docx

exit/b



:_

:chch

set fp=* Chef changes.

rem lu: Jun-22-2020

echo.
echo %fp%

call pn po_cm>nul

set cbf_ex=%cbf_path%\chef changes.xlsx

exit/b



:_+ Podcast and ClipJam Folders



::_

:pc

:podcast_folder

set fp=* Podcaster.

rem lu: Jun-24-2020

echo.
echo %fp%

set cbf_path=%my documents%\gpodder\downloads

set cbf_application=C:\Program Files (x86)\gPodder\bin\gpodder.exe

exit/b

     

::_

:audi

:cja

set fp=* Audiobooks.

rem lu: May-19-2020

echo.
echo %fp%

set cbf_path=h:\audiobooks

exit/b



::_

:cjp

:clipjam_podcasts

set fp=* ClipJam podcasts folder.

rem lu: Jul-15-2018

echo.
echo %fp%

set cbf_path=h:\podcasts

exit/b



::_

:sa

:staging_area

set fp=* Staging area.

rem lu: Jan-14-2019

echo.
echo %fp%

set cbf_path=%my documents%\mp3 staging area

exit/b



:_

:wcj

set fp=* %1.

rem lu: Jun-25-2020

call pn po_dic>nul

set cbf_path=%cbf_path%\config

set cbf_fn=%cbf_path%\WebConfigurer.java

exit/b



:_

:wcjt

set fp=* %1 test.

rem lu: Jun-25-2020

call pn po_dict>nul

set cbf_path=%cbf_path%\config

set cbf_fn=%cbf_path%\WebConfigurerTest.java

exit/b



:_

:lbs

set fp=* logback-spring.xml. This is where the Cart logs output target is configured.

rem lu: Jun-25-2020

echo.
echo %fp%

call pn po_api>nul

set cbf_path=%cbf_path%\src\main\resources

set cbf_fn=%cbf_path%\logback-spring.xml

exit/b



:_ (!efnb, !efn, !rfsp) (mov-6)
