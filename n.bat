:_

@echo off



:_

set filep=* Nickname dictionary that sets the envrionment variables corresponding to a given unique nickname parameter.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo %filep%

echo.
echo Last Updated: May-8-2018

echo.
echo The filename stands for: Nickname dictionary.

echo.
echo Usage: %0 [single parameter]

echo.
echo In the function block corresponding to the label, you can set any or all 
echo of the CBF environment variables. Typically this batch file would be 
echo called by echo a different batch file looking to set a particular CBF 
echo envrionment variable. However, if you call it yourself from the command 
echo line, it will set the variable plus it will describe itself.

echo.
echo Notes: I kept the facade dictionaries because they help make clear the 
echo author's intent when calling which variable is being set.

echo.
echo Parm/Nickname  Target
echo -------------  -----------------------------------------------------------
echo             a  a.
echo            ba  c:\mercury\batch_files
echo            bu  c:\mercury\backups
echo           cbf  Composable Batch Files.
echo           cnn  CNN.com
echo           cwp  ContactsWidget for Phone
echo           cwt  ContactsWidget for Tablet
echo          depl  [wildfly_location]\standalone\deployments
echo            fx  Firefox
echo             g  %COMPOSABLE_BATCH_FILES%\g.bat
echo            gh  GitHub.com
echo           git  GitHub.com
echo         gpcbf  Google Pages for Composable Batch Files on GitHub
echo       heatmap  \standalone\tmp\vfs\temp\[dynamically generated]
echo           hex  \standalone\tmp\vfs\temp\[dynamically generated]
echo      hex_root  [wildfly_location]\standalone\tmp\vfs\temp
echo            j1  c:\a\j1.txt
echo            j2  c:\a\j2.txt
echo            kr  Chrome
echo           log  %wildfly_location%\standalone\log\server.log
echo             m  %COMPOSABLE_BATCH_FILES%\m.bat
echo            me  Multi-Edit
echo            m2  %userprofile%\.m2
echo            m6  c:\projects\netbeans\mercury6
echo   nb [or] prj  c:\projects\netbeans
echo           npp  Notepad++
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
echo            sm  Suplime
echo            sr  [wildfly_location]
echo          stan  [wildfly_location]\standalone\configuration
echo          stan  Standalone.xml, WildFly config file.
echo            sw  \classic\src\view\dashboard\SystemWidget.js
echo          targ  \projects\netbeans\mercury6\Mercury-web\target
echo            td  %COMPOSABLE_BATCH_FILES%\td.bat
echo          temp  User's temp.
echo            ti  \projects\netbeans\mercury6\mercury-tirem
echo            vs  Visual Studio.

m exitb



:_ Begin body. (!bb)



:_

:sm

set fp=* Sublime.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files\Sublime Text 3\sublime_text.exe

m exitb



:_

:dc

set fp=* Simulate a double click in CBF.

rem lu: Feb-1-2018

echo %fp%

rem Strangely, this also works. Feb-1-2018
rem set cbf_application="%cbf_filename% - Shortcut.lnk"

set cbf_application=%cbf_filename%
set cbf_parameter=

m exitb



:_+ Browsers



::_

:ie

set fp=* Internet Explorer.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\program files\internet explorer\iexplore.exe

m exitb



::_

:kr

set fp=* Chrome.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe

m exitb



::_

:fx

set fp=* Firefox.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\program files\mozilla firefox\firefox.exe

m exitb



:_

:pc

set fp=* Gpodder podcaster.

rem lu: Feb-2-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\gPodder\gpodder.exe

m exitb



:_

:edsw

:sw

:system_widget

set fp=SystemWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\SystemWidget.js

m exitb



:_

:pom_root

set fp=Pom root.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\pom.xml

m exitb



:_

:pom_ear

set fp=Pom Ear.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ear\pom.xml

m exitb



:_

:pom_ejb

set fp=Pom Ejb.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ejb\pom.xml

m exitb



:_

:pom_web

set fp=Pom Web.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-web\pom.xml

m exitb



:_

:td

set fp=td.bat.

rem FCD: May-13-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\td.bat

m exitb



:_

:tags

:update_tags

set fp=Update tag files.

rem Tag 6.2017.5.6.1200 for successful production deployment

rem fcd: May-8-2017

echo %fp%

call %0 pom_root %2

call %0 pom_ear %2

call %0 pom_ejb %2

call %0 pom_web %2

call %0 system_widget %2

m exitb



:_

:g

set fp=G.bat.

rem FCD: Jun-1-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\g.bat

m exitb



:_

:settings_xml

set fp=M2's settings.xml file.

rem lu: Nov-21-2017

echo %fp%
echo.

set cbf_filename=%userprofile%\.m2\settings.xml

m exitb



:_

:s

set fp=S.bat.

rem FCD: Jul-27-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\s.bat

m exitb



:_

:cw

:edcw

:edit_contacts_widget

set fp=ContactsWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\ContactsWidget.js

m exitb



:_

:cwt

:contacts_widget_for_tablet

set fp=ContactsWidget.js for tablet.

rem FCD: Sep-25-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\tablet\dashboard\ContactsWidget.js

m exitb



:_ + Mobile Login Enabling



::_

:emb1

:edit_mobile_blocker_1

set fp=Mobile blocker 1.

rem FCD: Sep-25-2017

echo %fp%

rem     // OPEN mobile login.
rem     xtype: 'login',
rem     // CLOSE mobile login.
rem     //xtype:'loginDisabled',

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\login.js

m exitb



::_

:emb2

:edit_mobile_blocker_2

set fp=Mobile blocker 2.

rem FCD: Sep-25-2017

echo %fp%

rem     // OPEN mobile login.
rem     xtype:'loginDisabled',
rem     // CLOSE mobile login.
rem     //xtype: 'login',

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\WIPPage.js

m exitb



:_

:msg

set fp=Message from batch files.

rem lu: Nov-17-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\message from batch files.txt

m exitb



:_

:mde

set fp=Mercury devevelopment environment.

rem lu: Nov-17-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Mercury Development Environment.xlsx - Shortcut.lnk

m exitb



:_

:mac

set fp=Mobile log.

rem lu: Dec-4-2017

echo %fp%

set cbf_filename=c:\mercury\mobility\How to Build a Sencha App on Mac Using Cordova.asc

m exitb



:_

:aj

set fp=App.json.

rem lu: Dec-4-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\app.json

m exitb



:_

:nc

set fp=Netconfig.

rem lu: Dec-6-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils\netconfig.js

m exitb



:_

:cwp

:contacts_widget_for_phone

set fp=ContactsWidget.js for phone.

rem FCD: Sep-25-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\phone\dashboard\ContactsWidget.js

m exitb



:_

:m

set fp=M.bat.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\m.bat

m exitb



:_

:fn

set fp=Filename nicknames.

rem lu: Jan-24-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\fn.bat

m exitb



:_

:batt

set fp=Battery solution.

rem lu: Jan-31-2018

echo %fp%

set cbf_filename=d:\aa\james_montemagno_battery_plugin\src\Battery.sln

m exitb



:_

:j1

set fp=J1.txt.

rem lu: Feb-1-2018

echo %fp%

set cbf_filename=c:\a\j1.txt

m exitb



:_

:j2

set fp=J2.txt.

rem lu: Feb-1-2018

echo %fp%

set cbf_filename=c:\a\j2.txt

m exitb



:_

:start

set fp=Windows Startup.

rem fcd: May-9-2017

echo %fp%

set cbf_path=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup

m exitb



:_

:stan

set fp=Open folder standalone.

rem fcd: May-9-2017

echo %fp%

call m set_wildfly_location

set cbf_filename=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\configuration\standalone.xml

set cbf_path=%wildfly_location%\standalone\configuration

m exitb



:_

:sr

set fp=Open folder server.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%

m exitb



:_

:ti

set fp=Tirem.

rem FCD: Mar-6-2017

echo %fp%

set cbf_path=c:\projects\netbeans\mercury6\mercury-tirem

m exitb



:_

:m6

set fp=Mercury 6.

rem FCD: Mar-15-2017

echo %fp%

set cbf_path=c:\projects\netbeans\mercury6

m exitb



:_

:depl

set fp=Deployment.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%\standalone\deployments

m exitb



:_

:targ

set fp=Target. (WAR file creation location)

rem FCD: Apr-7-2017

echo %fp%

set cbf_path=C:\projects\netbeans\mercury6\Mercury-web\target

m exitb



:_

:pu

set fp=Public.

rem FCD: Apr-14-2017

echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html

m exitb



:_

:bk

:bu

set fp=Mercury backups.

rem fcd: May-12-2017

echo %fp%

set cbf_path=c:\mercury\backups

m exitb



:_

:se

:s6

:sencha

set fp=Sencha.

rem FCD: Mar-22-2017

echo %fp%

set cbf_path=c:\projects\netbeans\sencha

m exitb



:_

:cd

:ex

:here

:this

:x

set fp=Current directory.

rem fcd: May-9-2017

echo %fp%

echo.
cd

m exitb



:_

:hex

:open_hex_folder

:set_wildfly_dynamic_folder

set fp=Set WildFly dynamic temporary folder location.

rem Function Creation Date: Feb-9-2017

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

m exitb



:_

:hex_root

set fp=Hex root.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%\standalone\tmp\vfs\temp

m exitb



:_

:heatmap

set fp=Heatmap. Where TIREM puts its image files.

rem skw: Heatmap image generation location.

rem fcd: May-17-2017

echo %fp%

call %0 hex
echo.
set cbf_path=.\resources\WorldWind\images

m exitb



:_

:nb

:prj

:proj

:projects

set fp=Mercury projects.

rem fcd: May-12-2017

echo %fp%

set cbf_path=c:\projects\netbeans

m exitb



:_

:log

set fp=Wildfly server Log.

rem fcd: May-22-2017

echo %fp%

call m set_wildfly_location

set cbf_filename=%wildfly_location%\standalone\log\server.log

set cbf_path=%wildfly_location%\standalone\log

m exitb



:_

:wildr

set fp=WildFly resources folder.

rem fcd: Jun-2-2017

echo %fp%

call td hex

set cbf_path=resources

m exitb



:_

:mac

set fp=MacOS dropbox folder.

rem fcd: Jun-22-2017

echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh

m exitb



:_

:mysql

set fp=MySql configuration file in order to close open port at 3306.

rem fcd: Jun-26-2017

echo %fp%

set cbf_filename=C:\ProgramData\MySQL\MySQL Server 5.7\my.ini

set cbf_path=C:\ProgramData\MySQL\MySQL Server 5.7

m exitb



:_

:ldap

set fp=Ldap.

rem fcd: Jul-5-2017

echo %fp%

set cbf_path=C:\Mercury\LDAP\OpenDS-2.2.1

m exitb



:_

:jh

set fp=Java Home.

rem fcd: Jul-6-2017

rem This is useful for new installs.

echo %fp%
echo.

set cbf_path=%java_home%

m exitb



:_

:mh

set fp=Maven Home.

rem fcd: Jul-7-2017

rem This is useful for new installs.

echo %fp%
echo.

set cbf_path=%maven_home%

m exitb



:_

:ojh

set fp=Opends Java Home.

rem fcd: Jul-6-2017

rem This is useful for new installs.

echo %fp%
echo.

set cbf_path=%opends_java_home%

m exitb



:_

:usr

set fp=User profile.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=%userprofile%

m exitb



:_

:ext

set fp=Ext.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\ext

m exitb



:_

:mr

:merc

set fp=Mercury.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=C:\mercury

m exitb



:_

:m2

set fp=M2.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=%userprofile%\.m2

m exitb



:_

:m2h

set fp=M2 Home.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=%m2_home%

m exitb



:_

:stdr

set fp=Sencha class folder on Dropbox.

rem fud: Aug-4-2017

echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\Documents\dropbox\IT\Sencha Class on Aug-7-2017

m exitb



:_

:st

set fp=Sencha class folder.

rem fud: Aug-4-2017

echo %fp%

set cbf_path=C:\SenchaTraining

m exitb



:_

:war

set fp=In the future please use "targ" instead of "war" for this folder.

rem fud: Aug-7-2017

echo %fp%

call %0 targ

m exitb



:_

:labs

set fp=Sencha training labs.

rem fud: Aug-8-2017

echo %fp%

set cbf_path=c:\senchatraining\labs

m exitb



:_

:sdk

set fp=Android SDK.

rem fud: Aug-8-2017

echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\AppData\Local\Android\sdk

m exitb



:_

:y

set fp=Yelp Extplorer.

rem fud: Aug-15-2017

echo %fp%

set cbf_path=c:\senchatraining\labs\yelpextplorer

m exitb



:_

:dupr

:pudr

set fp=Public @ Dropbox.

rem fud: Aug-15-2017

echo %fp%

set cbf_path=C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha\HTML5Application\public_html

m exitb



:_

:s6dr

:drs6

set fp=S6 @ Dropbox.

rem fud: Aug-15-2017

echo %fp%
echo.

set cbf_path=C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha

m exitb



:_

:nc

:util

:utilr

set fp=Utils relative path.

rem fud: Aug-17-2017

echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

m exitb



:_

:cutils

set fp=Classic utils.

rem lu: Sep-6-2017

echo %fp%
echo.

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

m exitb



:_

:mutils

set fp=Modern utils.

rem fud: Aug-17-2017

echo %fp%
echo.

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

m exitb



:_+ AGI Licenses



::_

:agi

set fp=AGI Licenses.

rem lu: Nov-9-2017

echo %fp%

set cbf_path=C:\mercury\agi licenses

m exitb



::_

:agi_ejb

set fp=AGI License file on development machine.

rem lu: Sep-26-2017

echo %fp%

set cbf_path=C:\projects\netbeans\mercury6\Mercury-ejb\src\main\resources

m exitb



::_

:agis

set fp=AGI License file on the server.

rem lu: Sep-26-2017

echo %fp%

set cbf_path=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\lib

m exitb



:_

:mob

set fp=Mobility.

rem lu: Oct-23-2017

echo %fp%

set cbf_path=C:\Mercury\Mobility

m exitb



:_

:lat

:lwf

set fp=Latest WAR File.

rem lu: Oct-24-2017

echo %fp%

set cbf_path=C:\Mercury\Latest WAR File

m exitb



:_

:wir1

set fp=Wildfly Image Resource 1.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

set cbf_path=resources\images

m exitb



:_

:wir2

set fp=Wildfly Image Resource 2 - classic.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

set cbf_path=classic\resources\images

m exitb



:_

:wir3

set fp=Wildfly Image Resource 3 - modern.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

set cbf_path=modern\resources\images

m exitb



:_

:netcon_sr

set fp=Netconfig on server.

rem lu: Nov-14-2017

echo %fp%

call %0 hex

set cbf_path=modern\resources\images

m exitb



:_

:psc

set fp=Paul Sheriff Course.

rem lu: Dec-18-2017

echo %fp%

set cbf_path=%dropbox%\it\Paul Sheriff Unit Testing Course\UnitTestProject4\bin\debug

m exitb



:_

:a

set fp=A folder.

rem lu: Dec-12-2017

echo %fp%

set cbf_path=c:\a

m exitb



:_

:it

set fp=IT.

rem lu: Jan-18-2018

echo %fp%

set cbf_path=%dropbox%\it\

m exitb



:_

:temp

set fp=Temp.

rem lu: Jan-23-2018

echo %fp%

set cbf_path=%temp%

m exitb



:_

:dr

set fp=* Dropbox.

rem lu: Feb-2-2018

echo %fp%

set cbf_path=%dropbox%

m exitb



:_

:cnn

set fp=* Cnn.

rem lu: Jan-24-2018

echo %fp%

set cbf_url=http://www.cnn.com

m exitb



:_

:batt

set fp=James Montemagno Battery Plugin.

rem lu: Jan-31-2018

echo %fp%

set cbf_url=http://github.com/jamesmontemagno/BatteryPlugin

m exitb



:_

:gh

:git

set fp=GitHub.

rem lu: Feb-2-2018

echo %fp%
          
set cbf_url=https://github.com

m exitb



:_

:pizza

set fp=Alex's pizza code.

rem lu: Feb-2-2018

echo %fp%

set cbf_filename=d:\aa\NovaCodeCamp.PizzaRatings\pizza.sln

set cbf_path=d:\aa\NovaCodeCamp.PizzaRatings

set cbf_url=https://github.com/jonathan-r-jones/NovaCodeCamp.PizzaRatings.git

m exitb



:_+ Git Ignore



::_

:ig

set fp=Git Ignore in the current folder.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=.gitignore

set cbf_url=https://github.com/github/gitignore/blob/master/VisualStudio.gitignore

m exitb



::_

:vs_ig

set fp=Git Ignore Visual Studio Sample File.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Git Ignore Sample File - Visual Studio.txt

set cbf_url=https://github.com/github/gitignore/blob/master/VisualStudio.gitignore

m exitb



::_

:ig_sample_old

set fp=Git Ignore Sample File.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Git Ignore Sample File.txt

m exitb



:_

:aa

set fp=Aa.

rem lu: Jan-15-2018

echo %fp%

set cbf_path=c:\aa

if %COMPUTERNAME%==XPS set cbf_path=d:\aa

m exitb



:_

:pc

set fp=Gpodder podcaster.

rem lu: Jan-15-2018

echo %fp%

set cbf_path=c:\aa

set cbf_application=C:\Program Files (x86)\gPodder\gpodder.exe

m exitb



:_

:vs

set fp=Visual Studio.

rem lu: Jan-31-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe

m exitb



:_

:tt

set fp=TT VS solution.

rem lu: Jan-31-2018

echo %fp%

set cbf_filename=%dropbox%\it\ticktockmenu\TickTockMenu.sln

set cbf_path=%dropbox%\it\ticktockmenu

m exitb



:_+ Gencred Files



::_

:gencred_input

set fp=Credential generator input file. The format is: username:password.

rem fcd: Jul-17-2017

echo %fp%

if not exist %tmp%\certutil_input.txt echo.
if not exist %tmp%\certutil_input.txt xcopy /d /h /r /s /y "%COMPOSABLE_BATCH_FILES%\certutil_input.txt" "%tmp%"

set cbf_filename=%tmp%\certutil_input.txt

m exitb



::_

:gencred_output

set fp=Credential generator output file. Copy this into you m2's settings.xml file.

rem fcd: Jul-17-2017

echo %fp%
echo.

set cbf_filename=%tmp%\certutil_output.txt

m exitb



:_

:c

set fp=Root of the C Drive.

rem lu: Feb-5-2018

echo %fp%

set cbf_path=c:\

m exitb



:_

:d

set fp=Root of the D Drive.

rem lu: Feb-5-2018

echo %fp%

set cbf_path=d:\

m exitb



:_

:bowl

set fp=Bowling solution.

rem lu: Feb-6-2018

echo %fp%

set cbf_path=%dropbox%\it

set cbf_url=https://github.com/jonathan-r-jones/Bowling-Score-Calculator.git

m exitb



:_

:karl

set fp=Karl.

rem lu: Feb-6-2018

echo %fp%

set cbf_filename=%savannah%\karl\karl.sln

m exitb



:_

:doc

:docs

set fp=Documentation.

rem fcd: May-25-2017

echo %fp%

set cbf_path=c:\mercury\documentation

m exitb



:_

:do

set fp=Download folder.

rem lu: Feb-7-2018

echo %fp%

set cbf_path=%userprofile%\downloads

m exitb



:_

:etc

set fp=European Testing Conference.

rem lu: Feb-7-2018

echo %fp%

set cbf_url=http://europeantestingconference.eu/2018/location/

m exitb



:_

:res

set fp=Resume.

rem lu: Feb-7-2018

echo %fp%

set cbf_filename=%dropbox%\resume\jonathan jones' resume.doc

set cbf_path=%dropbox%\resume

set cbf_url=https://bitbucket.org/Jonathan17/resume

m exitb



:_

:ed

:edge

set fp=Microsoft Edge.

rem lu: Feb-7-2018

echo %fp%

set cbf_application=microsoft-edge

m exitb



:_

:gm

set fp=Gmail.

rem lu: Feb-13-2018

echo %fp%

set cbf_url=https://mail.google.com

m exitb



:_

:op

set fp=Opera.

rem lu: Feb-13-2018

echo %fp%

set cbf_application=c:\program files\opera\launcher.exe

m exitb



:_

:so

set fp=Stack Overflow

rem lu: Feb-15-2018

echo %fp%

set cbf_url=http://stackoverflow.com/

m exitb



:_

:pash

set fp=Paul Sherriff's Unit Testing Course from Pluralsight.

rem lu: Feb-16-2018

echo %fp%

set cbf_filename=D:\Dropbox\IT\Paul Sheriff Unit Testing Course\PaulSheriffUnitTestingCourse.sln

m exitb



:_

:k2

set fp=Karl 2 Testing Solution.

rem lu: Feb-16-2018

echo %fp%

set cbf_path=%dropbox%\IT\Karl-2-C-Sharp-Testing

set cbf_filename=%dropbox%\IT\Karl-2-C-Sharp-Testing\karl 2.sln

m exitb



:_

:etc

set fp=Karl 2 Testing Solution.

rem lu: Feb-16-2018

echo %fp%

set cbf_path=

set cbf_filename=

set cbf_url=http://europeantestingconference.eu/2018

m exitb



:_

:dock

set fp=Docker workshop.

rem lu: Feb-16-2018

echo %fp%

set cbf_url=https://github.com/AlinaIo/etc2018.git

m exitb



:_

:dhub

set fp=Docker hub.

rem lu: Feb-16-2018

echo %fp%

set cbf_url=https://hub.docker.com

m exitb



:_

:yt

set fp=YouTube.

rem lu: Feb-25-2018

echo %fp%

set cbf_url=https://www.youtube.com

m exitb



:_

:desk

set fp=Show desktop.

rem lu: Mar-1-2018

echo %fp%

set cbf_filename=%appdata%\microsoft\internet explorer\quick launch\shows desktop.lnk

m exitb



:_

:w

:win

set fp=Show open windows.

rem lu: Mar-1-2018

echo %fp%

set cbf_filename=%appdata%\microsoft\internet explorer\quick launch\window switcher.lnk

m exitb



:_

:rm

set fp=Readme.md.

rem lu: Mar-1-2018

echo %fp%

set cbf_filename=Readme.md

m exitb



:_

:all

:allstar

:fcc

set fp=* GitHub all-star.

rem lu: Mar-1-2018

echo %fp%

set cbf_path=%aa%\freecodecamp

set cbf_url=https://github.com/freeCodeCamp/freeCodeCamp.git

m exitb



:_

:mrdoc

set fp=* Mercury documentation.

rem lu: Mar-1-2018

echo %fp%

set cbf_url=https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git

m exitb



:_

:me

set fp=* Multi-Edit.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\multi-edit 2008\mew32.exe

m exitb



:_

:no

set fp=* Notepad.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\windows\system32\notepad.exe

m exitb



:_

:mecfig

set fp=* Multi-Edit Config Files Dated Backups.

rem lu: Jan-3-2018

echo %fp%

set cbf_path=%dropbox%\IT\Multi-Edit\Multi-Edit Config Files Dated Backups

m exitb



:_+ CBF-related links.



::_

:gp

:gpcbf

set fp=* CBF on GitHub Pages.

rem lu: Jan-31-2018

echo %fp%

set cbf_url=https://jonathan-r-jones.github.io/Composable-Batch-Files/

m exitb



::_

:ba

:cbf

set fp=* CBF on GitHub.

rem lu: Jan-24-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\cbf.bat

set cbf_path=%composable_batch_files%

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files

m exitb



:_

:ql

set fp=* Quickla.

rem lu: Apr-10-2018

echo %fp%

set cbf_path=%savannah%\cmac\Quickla-for-Multi-Edit

set cbf_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

m exitb



:_

:npp

set fp=* Notepad++.

rem lu: Mar-9-2018

echo %fp%

rem Determine installation path.

if exist "c:\program files\notepad++\notepad++.exe" set cbf_App_Location=c:\program files\notepad++\notepad++.exe
if exist "c:\program files (x86)\notepad++\notepad++.exe" set cbf_App_Location="c:\program files (x86)\notepad++\notepad++.exe"

if "%cbf_App_Location%" == "" (
  echo.
  echo Notepad++ is not installed.
  m exitb
)

set cbf_application=%cbf_App_Location%

m exitb



:_+ CBF Path Automation



::_

:cbfp

set fp=* CBF Path. Set CBF_Path based on the currently set CBF_Path.

rem lu: Mar-9-2018

echo %fp%

rem Don't need to set it because it's already set.

m exitb



::_

:cbfa

set fp=* CBF Application. Set CBF_Path based on the currently set CBF_Application.

rem lu: Mar-9-2018

echo %fp%

call m transform_cbf_application "%cbf_application%"

m exitb



::_

:cbff

set fp=* CBF Filename.

rem lu: Mar-9-2018

echo %fp%

call m transform_cbf_application "%cbf_filename%"

m exitb



:_

:pf

set fp=Program files.

rem lu: Apr-24-2018

echo %fp%

set cbf_path=c:\program files

m exitb



:_

:pajs

:pack

:pj

set fp=* Package.json file.

rem lu: Apr-24-2018

echo %fp%

set cbf_filename=package.json

m exitb



:_

:fgt

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo %fp%

set cbf_path=%aa%\for-git-testing

set cbf_url=https://github.com/jonathan-r-jones/For-Git-Testing

m exitb



:_

:npc

set fp=* NPM Playbook Course.

rem lu: Apr-24-2018

echo %fp%

set cbf_url=https://github.com/joeeames/NPMPlaybookCourse

m exitb



:_

:npm_s

set fp=* NPM shortcuts.

rem lu: Apr-24-2018

echo %fp%

set cbf_url=https://docs.npmjs.com/misc/config

m exitb



:_

:express

set fp=* Express.

rem lu: Apr-24-2018

echo %fp%

set cbf_url=https://github.com/strongloop/express

m exitb



:_

:cbf_on_npm

set fp=* CBF on MPM.

rem lu: Apr-25-2018

echo %fp%

set cbf_url=npm.im/composable-batch-files

m exitb



:_

:glpj

set fp=* Global package.json file.

rem lu: May-4-2018

echo %fp%

set cbf_filename=C:\Program Files\nodejs\node_modules\npm\package.json

m exitb



:_+ Xamarin-Related



::_

:hw

set fp=Hello World.

rem lu: Jan-16-2018

echo %fp%

set cbf_path=%dropbox%\it\HelloXamarinFormsWorld

m exitb



::_

:xplug

set fp=Plugins. Open Source Components for Xamarin.

rem lu: Jan-31-2018

echo %fp%

set cbf_url=https://github.com/Xamarin/Plugins.git

m exitb



::_

:jmplug

set fp=James Montemagno's Xamarin Plugins.

rem lu: Jan-31-2018

echo %fp%

set cbf_url=https://github.com/jamesmontemagno/Xamarin.Plugins

m exitb



::_

:xam_sam

set fp=* Xamarin Forms Samples.

rem lu: Mar-1-2018

echo %fp%

set cbf_url=https://github.com/xamarin/xamarin-forms-samples.git

m exitb



::_

:book

:book_code

set fp=* Ed Snider's Xamarin book sample code.

rem lu: Mar-1-2018

echo %fp%

set cbf_path=D:\aa\xamarin\Mastering-Xamarin.Forms-Second-Edition

set cbf_url=https://github.com/PacktPublishing/Mastering-Xamarin.Forms-Second-Edition

m exitb



::_

:xa

set fp=* Xamarin folder.

rem lu: Mar-1-2018

echo %fp%

set cbf_path=D:\aa\xamarin

m exitb



::_

:fma1

set fp=* Jesse Liberty's Xamarin Pluralsight course.

rem lu: May-8-2018

echo %fp%

set cbf_path=d:\aa\xamarin\first-mobile-app-Jesse

set cbf_url=https://github.com/JesseLiberty/First-Mobile-App

m exitb



::_

:fma

:fma2

:fmajrj

set fp=* My implementation of Jesse Liberty's Xamarin Pluralsight course.

rem lu: May-8-2018

echo %fp%

set cbf_path=d:\aa\xamarin\first-mobile-app-Jonathan

set cbf_url=https://github.com/jonathan-r-jones/First-Mobile-App.git

m exitb



:_

:jjgit

set fp=* My Git website.

rem lu: May-9-2018

echo %fp%

set cbf_url=https://github.com/jonathan-r-jones

m exitb



:_ (!rfsp) (mov-6)