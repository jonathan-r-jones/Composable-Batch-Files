:_

@echo off



:_

set filep=* Nickname dictionary that sets the envrionment variables corresponding to a given unique nickname parameter.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

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
echo Parameter 1: Function to execute.

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
echo            gh  GitHub.com
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
echo          stan  Standalone.xml, which is a WildFly config file.
echo            sw  \classic\src\view\dashboard\SystemWidget.js
echo          targ  \projects\netbeans\mercury6\Mercury-web\target
echo            td  %COMPOSABLE_BATCH_FILES%\td.bat
echo          temp  User's temp.
echo            ti  \projects\netbeans\mercury6\mercury-tirem
echo            vs  Visual Studio.

exit/b



:_ Begin body. (!bb)



:_

:sm

set fp=* Sublime.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files\Sublime Text 3\sublime_text.exe

exit/b



:_

:pc

set fp=* Gpodder podcaster.

rem lu: Feb-2-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\gPodder\gpodder.exe

exit/b



:_

:edsw

:system_widget

set fp=SystemWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\SystemWidget.js

exit/b



:_

:pom_root

set fp=Pom root.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\pom.xml

exit/b



:_

:pom_ear

set fp=Pom Ear.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ear\pom.xml

exit/b



:_

:pom_ejb

set fp=Pom Ejb.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ejb\pom.xml

exit/b



:_

:pom_web

set fp=Pom Web.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-web\pom.xml

exit/b



:_

:td

set fp=td.bat.

rem FCD: May-13-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\td.bat

exit/b



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

exit/b



:_

:g

set fp=G.bat.

rem FCD: Jun-1-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\g.bat

exit/b



:_

:settings_xml

set fp=M2's settings.xml file.

rem lu: Nov-21-2017

echo %fp%
echo.

set cbf_filename=%userprofile%\.m2\settings.xml

exit/b



:_

:s

set fp=S.bat.

rem FCD: Jul-27-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\s.bat

exit/b



:_

:cw

:edcw

:edit_contacts_widget

set fp=ContactsWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\ContactsWidget.js

exit/b



:_

:cwt

:contacts_widget_for_tablet

set fp=ContactsWidget.js for tablet.

rem FCD: Sep-25-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\tablet\dashboard\ContactsWidget.js

exit/b



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

exit/b



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

exit/b



:_

:mac

set fp=Mobile log.

rem lu: Dec-4-2017

echo %fp%

set cbf_filename=c:\mercury\mobility\How to Build a Sencha App on Mac Using Cordova.asc

exit/b



:_

:aj

set fp=App.json.

rem lu: Dec-4-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\app.json

exit/b



:_

:nc

set fp=Netconfig.

rem lu: Dec-6-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils\netconfig.js

exit/b



:_

:cwp

:contacts_widget_for_phone

set fp=ContactsWidget.js for phone.

rem FCD: Sep-25-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\phone\dashboard\ContactsWidget.js

exit/b



:_

:m

set fp=M.bat.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\m.bat

exit/b



:_

:fn

set fp=Filename nicknames.

rem lu: Jan-24-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\fn.bat

exit/b



:_

:j1

set fp=* J1.txt.

rem lu: Feb-1-2018

echo %fp%

set cbf_filename=%temp%\j1.txt

exit/b



:_

:j2

set fp=* J2.txt.

rem lu: Feb-1-2018

echo %fp%

set cbf_filename=%temp%\j2.txt

exit/b



:_

:start

set fp=Windows Startup.

rem fcd: May-9-2017

echo %fp%

set cbf_path=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup

exit/b



:_

:stan

set fp=Open folder standalone.

rem fcd: May-9-2017

echo %fp%

call m set_wildfly_location

set cbf_filename=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\configuration\standalone.xml

set cbf_path=%wildfly_location%\standalone\configuration

exit/b



:_

:folder_server

set fp=Open folder server.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%

exit/b



:_

:ti

set fp=Tirem.

rem FCD: Mar-6-2017

echo %fp%

set cbf_path=c:\projects\netbeans\mercury6\mercury-tirem

exit/b



:_

:m6

set fp=Mercury 6.

rem FCD: Mar-15-2017

echo %fp%

set cbf_path=c:\projects\netbeans\mercury6

exit/b



:_

:depl

set fp=Deployment.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%\standalone\deployments

exit/b



:_

:targ

set fp=Target. (WAR file creation location)

rem FCD: Apr-7-2017

echo %fp%

set cbf_path=C:\projects\netbeans\mercury6\Mercury-web\target

exit/b



:_

:pu

set fp=Public.

rem FCD: Apr-14-2017

echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html

exit/b



:_

:se

:s6

:sencha

set fp=Sencha.

rem FCD: Mar-22-2017

echo %fp%

set cbf_path=c:\projects\netbeans\sencha

exit/b



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

exit/b



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

exit/b



:_

:hex_root

set fp=Hex root.

rem FCD: Apr-5-2017

echo %fp%

call m set_wildfly_location

set cbf_path=%wildfly_location%\standalone\tmp\vfs\temp

exit/b



:_

:heatmap

set fp=Heatmap. Where TIREM puts its image files.

rem skw: Heatmap image generation location.

rem fcd: May-17-2017

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

echo %fp%

set cbf_path=c:\projects\netbeans

exit/b



:_

:log

set fp=Wildfly server Log.

rem fcd: May-22-2017

echo %fp%

call m set_wildfly_location

set cbf_filename=%wildfly_location%\standalone\log\server.log

set cbf_path=%wildfly_location%\standalone\log

exit/b



:_

:wildr

set fp=WildFly resources folder.

rem fcd: Jun-2-2017

echo %fp%

call td hex

set cbf_path=resources

exit/b



:_

:mac

set fp=MacOS dropbox folder.

rem fcd: Jun-22-2017

echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh

exit/b



:_

:mysql

set fp=MySql configuration file in order to close open port at 3306.

rem fcd: Jun-26-2017

echo %fp%

set cbf_filename=C:\ProgramData\MySQL\MySQL Server 5.7\my.ini

set cbf_path=C:\ProgramData\MySQL\MySQL Server 5.7

exit/b



:_

:ldap

set fp=Ldap.

rem fcd: Jul-5-2017

echo %fp%

set cbf_path=C:\Mercury\LDAP\OpenDS-2.2.1

exit/b



:_

:jh

set fp=Java Home.

rem fcd: Jul-6-2017

rem This is useful for new installs.

echo %fp%
echo.

set cbf_path=%java_home%

exit/b



:_

:mh

set fp=Maven Home.

rem fcd: Jul-7-2017

rem This is useful for new installs.

echo %fp%
echo.

set cbf_path=%maven_home%

exit/b



:_

:ojh

set fp=Opends Java Home.

rem fcd: Jul-6-2017

rem This is useful for new installs.

echo %fp%
echo.

set cbf_path=%opends_java_home%

exit/b



:_

:usr

set fp=User profile.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=%userprofile%

exit/b



:_

:ext

set fp=Ext.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\ext

exit/b



:_

:mr

:merc

set fp=Mercury.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=C:\mercury

exit/b



:_

:m2

set fp=M2.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=%userprofile%\.m2

exit/b



:_

:m2h

set fp=M2 Home.

rem fcd: Jul-7-2017

echo %fp%

set cbf_path=%m2_home%

exit/b



:_

:stdr

set fp=Sencha class folder on Dropbox.

rem fud: Aug-4-2017

echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\Documents\dropbox\IT\Sencha Class on Aug-7-2017

exit/b



:_

:st

set fp=Sencha class folder.

rem fud: Aug-4-2017

echo %fp%

set cbf_path=C:\SenchaTraining

exit/b



:_

:war

set fp=In the future please use "targ" instead of "war" for this folder.

rem fud: Aug-7-2017

echo %fp%

call %0 targ

exit/b



:_

:labs

set fp=Sencha training labs.

rem fud: Aug-8-2017

echo %fp%

set cbf_path=c:\senchatraining\labs

exit/b



:_

:sdk

set fp=Android SDK.

rem fud: Aug-8-2017

echo %fp%

set cbf_path=C:\Users\jonathan.r.jones\AppData\Local\Android\sdk

exit/b



:_

:y

set fp=Yelp Extplorer.

rem fud: Aug-15-2017

echo %fp%

set cbf_path=c:\senchatraining\labs\yelpextplorer

exit/b



:_

:dupr

:pudr

set fp=Public @ Dropbox.

rem fud: Aug-15-2017

echo %fp%

set cbf_path=C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha\HTML5Application\public_html

exit/b



:_

:s6dr

:drs6

set fp=S6 @ Dropbox.

rem fud: Aug-15-2017

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

echo %fp%

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

exit/b



:_

:cutils

set fp=Classic utils.

rem lu: Sep-6-2017

echo %fp%
echo.

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

exit/b



:_

:mutils

set fp=Modern utils.

rem fud: Aug-17-2017

echo %fp%
echo.

set cbf_path=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

exit/b



:_+ AGI Licenses



::_

:agi

set fp=AGI Licenses.

rem lu: Nov-9-2017

echo %fp%

set cbf_path=C:\mercury\agi licenses

exit/b



::_

:agi_ejb

set fp=AGI License file on development machine.

rem lu: Sep-26-2017

echo %fp%

set cbf_path=C:\projects\netbeans\mercury6\Mercury-ejb\src\main\resources

exit/b



::_

:agis

set fp=AGI License file on the server.

rem lu: Sep-26-2017

echo %fp%

set cbf_path=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\lib

exit/b



:_

:mob

set fp=Mobility.

rem lu: Oct-23-2017

echo %fp%

set cbf_path=C:\Mercury\Mobility

exit/b



:_

:lat

:lwf

set fp=Latest WAR File.

rem lu: Oct-24-2017

echo %fp%

set cbf_path=C:\Mercury\Latest WAR File

exit/b



:_

:wir1

set fp=Wildfly Image Resource 1.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

set cbf_path=resources\images

exit/b



:_

:wir2

set fp=Wildfly Image Resource 2 - classic.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

set cbf_path=classic\resources\images

exit/b



:_

:wir3

set fp=Wildfly Image Resource 3 - modern.

rem lu: Nov-1-2017

echo %fp%

call %0 hex

set cbf_path=modern\resources\images

exit/b



:_

:netcon_sr

set fp=Netconfig on server.

rem lu: Nov-14-2017

echo %fp%

call %0 hex

set cbf_path=modern\resources\images

exit/b



:_

:psc

set fp=Paul Sheriff Course.

rem lu: Dec-18-2017

echo %fp%

set cbf_path=%dropbox%\it\Paul Sheriff Unit Testing Course\UnitTestProject4\bin\debug

exit/b



:_

:it

set fp=* IT.

rem lu: Jan-18-2018

echo %fp%

set cbf_path=%dropbox%\it\

exit/b



:_

:temp

set fp=* Temp.

rem lu: Jan-23-2018

echo %fp%

set cbf_path=%temp%

exit/b



:_

:dr

set fp=* Dropbox.

rem lu: Feb-2-2018

echo %fp%

set cbf_path=%dropbox%

exit/b



:_

:cnn

set fp=* Cnn.

rem lu: Jan-24-2018

echo %fp%

set cbf_url=http://www.cnn.com

exit/b



:_

:gh

:git

set fp=GitHub.

rem lu: Feb-2-2018

echo %fp%
          
set cbf_url=https://github.com

exit/b



:_

:pizza

set fp=Alex's pizza code.

rem lu: Feb-2-2018

echo %fp%

set cbf_filename=d:\aa\NovaCodeCamp.PizzaRatings\pizza.sln

set cbf_path=d:\aa\NovaCodeCamp.PizzaRatings

set cbf_url=https://github.com/jonathan-r-jones/NovaCodeCamp.PizzaRatings.git

exit/b



:_+ Git Ignore



::_

:giig

:ig

set fp=* Git Ignore in the current folder.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=.gitignore

set cbf_url=https://github.com/github/gitignore/blob/master/VisualStudio.gitignore

exit/b



::_

:vs_ig

set fp=Git Ignore Visual Studio Sample File.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Git Ignore Sample File - Visual Studio.txt

set cbf_url=https://github.com/github/gitignore/blob/master/VisualStudio.gitignore

exit/b



::_

:ig_sample_old

set fp=Git Ignore Sample File.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Git Ignore Sample File.txt

exit/b



:_

:pc

set fp=Gpodder podcaster.

rem lu: Jan-15-2018

echo %fp%

set cbf_path=%aa%

set cbf_application=C:\Program Files (x86)\gPodder\gpodder.exe

exit/b



:_

:vs

set fp=* Visual Studio.

rem lu: Jan-31-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe

exit/b



:_

:tt

set fp=TT VS solution.

rem lu: Jan-31-2018

echo %fp%

set cbf_filename=%dropbox%\it\ticktockmenu\TickTockMenu.sln

set cbf_path=%dropbox%\it\ticktockmenu

exit/b



:_+ Gencred Files



::_

:gencred_input

set fp=Credential generator input file. The format is: username:password.

rem fcd: Jul-17-2017

echo %fp%

if not exist %tmp%\certutil_input.txt echo.
if not exist %tmp%\certutil_input.txt xcopy /d /h /r /s /y "%COMPOSABLE_BATCH_FILES%\certutil_input.txt" "%tmp%"

set cbf_filename=%tmp%\certutil_input.txt

exit/b



::_

:gencred_output

set fp=Credential generator output file. Copy this into you m2's settings.xml file.

rem fcd: Jul-17-2017

echo %fp%
echo.

set cbf_filename=%tmp%\certutil_output.txt

exit/b



:_

:c

set fp=Root of the C Drive.

rem lu: Feb-5-2018

echo %fp%

set cbf_path=c:\

exit/b



:_

:d

set fp=Root of the D Drive.

rem lu: Feb-5-2018

echo %fp%

set cbf_path=d:\

exit/b



:_

:bowl

set fp=Bowling solution.

rem lu: Feb-6-2018

echo %fp%

set cbf_path=%dropbox%\it

set cbf_url=https://github.com/jonathan-r-jones/Bowling-Score-Calculator.git

exit/b



:_

:karl

set fp=Karl.

rem lu: Feb-6-2018

echo %fp%

set cbf_filename=%savannah%\karl\karl.sln

exit/b



:_

:do

set fp=Download folder.

rem lu: Feb-7-2018

echo %fp%

set cbf_path=%userprofile%\downloads

exit/b



:_

:etc

set fp=European Testing Conference.

rem lu: Feb-7-2018

echo %fp%

set cbf_url=http://europeantestingconference.eu/2018/location/

exit/b



:_

:res

set fp=Resume.

rem lu: Feb-7-2018

echo %fp%

set cbf_filename=%dropbox%\resume\jonathan jones' resume.doc

set cbf_path=%dropbox%\resume

set cbf_url=https://bitbucket.org/Jonathan17/resume

exit/b



:_

:gm

set fp=Gmail.

rem lu: Feb-13-2018

echo %fp%

set cbf_url=https://mail.google.com

exit/b



:_

:so

set fp=Stack Overflow

rem lu: Feb-15-2018

echo %fp%

set cbf_url=http://stackoverflow.com/

exit/b



:_

:pash

set fp=Paul Sherriff's Unit Testing Course from Pluralsight.

rem lu: Feb-16-2018

echo %fp%

set cbf_filename=D:\Dropbox\IT\Paul Sheriff Unit Testing Course\PaulSheriffUnitTestingCourse.sln

exit/b



:_

:k2

set fp=Karl 2 Testing Solution.

rem lu: Feb-16-2018

echo %fp%

set cbf_path=%dropbox%\IT\Karl-2-C-Sharp-Testing

set cbf_filename=%dropbox%\IT\Karl-2-C-Sharp-Testing\karl 2.sln

exit/b



:_

:etc

set fp=Karl 2 Testing Solution.

rem lu: Feb-16-2018

echo %fp%

set cbf_path=

set cbf_filename=

set cbf_url=http://europeantestingconference.eu/2018

exit/b



:_

:dock

set fp=Docker workshop.

rem lu: Feb-16-2018

echo %fp%

set cbf_url=https://github.com/AlinaIo/etc2018.git

exit/b



:_

:dhub

set fp=Docker hub.

rem lu: Feb-16-2018

echo %fp%

set cbf_url=https://hub.docker.com

exit/b



:_

:yt

set fp=YouTube.

rem lu: Feb-25-2018

echo %fp%

set cbf_url=https://www.youtube.com

exit/b



:_

:rm

set fp=* Readme.md.

rem lu: Mar-1-2018

echo %fp%

set cbf_filename=Readme.md

exit/b



:_

:all

:allstar

:fcc

set fp=* GitHub all-star.

rem lu: Mar-1-2018

echo %fp%

set cbf_path=%aa%\freecodecamp

set cbf_url=https://github.com/freeCodeCamp/freeCodeCamp.git

exit/b



:_

:mrdoc

set fp=* Mercury documentation.

rem lu: Mar-1-2018

echo %fp%

set cbf_url=https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git

exit/b



:_

:no

set fp=* Notepad.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\windows\system32\notepad.exe

exit/b



:_

:mecfig

set fp=* Multi-Edit Config Files Dated Backups.

rem lu: Jan-3-2018

echo %fp%

set cbf_path=%dropbox%\IT\Multi-Edit\Multi-Edit Config Files Dated Backups

exit/b



:_

:ql

set fp=* Quickla.

rem lu: Apr-10-2018

echo %fp%

set cbf_path=%savannah%\cmac\Quickla-for-Multi-Edit

set cbf_url=https://github.com/jonathan-r-jones/Quickla-for-Multi-Edit.git

exit/b



:_

:npp

set fp=* Notepad++.

rem lu: Mar-9-2018

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

exit/b



:_+ CBF Path Automation



::_

:cbfp

set fp=* CBF Path. Set CBF_Path based on the currently set CBF_Path.

rem lu: Mar-9-2018

echo %fp%

rem Don't need to set it because it's already set.

exit/b



::_

:cbfa

set fp=* CBF Application. Set CBF_Path based on the currently set CBF_Application.

rem lu: Mar-9-2018

echo %fp%

call m transform_cbf_application "%cbf_application%"

exit/b



::_

:cbff

set fp=* CBF Filename.

rem lu: Mar-9-2018

echo %fp%

call m transform_cbf_application "%cbf_filename%"

exit/b



:_

:pf

set fp=Program files.

rem lu: Apr-24-2018

echo %fp%

set cbf_path=c:\program files

exit/b



:_

:pajs

:pack

:pj

set fp=* Package.json file.

rem lu: Apr-24-2018

echo %fp%

set cbf_filename=package.json

exit/b



:_

:fgt

set fp=* ForGitTesting.

rem lu: Sep-6-2017

echo %fp%

set cbf_path=%aa%\for-git-testing

set cbf_url=https://github.com/jonathan-r-jones/For-Git-Testing

exit/b



:_

:npc

set fp=* NPM Playbook Course.

rem lu: Apr-24-2018

echo %fp%

set cbf_url=https://github.com/joeeames/NPMPlaybookCourse

exit/b



:_

:npm_s

set fp=* NPM shortcuts.

rem lu: Apr-24-2018

echo %fp%

set cbf_url=https://docs.npmjs.com/misc/config

exit/b



:_

:express

set fp=* Express.

rem lu: Apr-24-2018

echo %fp%

set cbf_url=https://github.com/strongloop/express

exit/b



:_

:cbf_on_npm

set fp=* CBF on MPM.

rem lu: Apr-25-2018

echo %fp%

set cbf_url=npm.im/composable-batch-files

exit/b



:_

:glpj

set fp=* Global package.json file.

rem lu: May-4-2018

echo %fp%

set cbf_filename=C:\Program Files\nodejs\node_modules\npm\package.json

exit/b



:_

:jjgit

set fp=* My Git website.

rem lu: May-9-2018

echo %fp%

set cbf_url=https://github.com/jonathan-r-jones

exit/b



:_

:mad

set fp=* Mobile App Development requirements.

rem lu: May-18-2018

echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/mobile-app.git

exit/b



:_

:moca

set fp=* Monkey cache.

rem lu: May-18-2018

echo %fp%

set cbf_url=https://github.com/jamesmontemagno/monkey-cache.git

exit/b



:_

:cake

set fp=* Cake sample.

rem lu: May-21-2018

echo %fp%

set cbf_url=https://github.com/lprichar/CakeSample

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

echo %fp%

set cbf_url=https://github.com/Xamarin/Plugins.git

exit/b



::_

:jmplug

set fp=James Montemagno's Xamarin Plugins.

rem lu: Jun-1-2018

rem Repository Data
rem   last updated:  Jan-10-2018
rem       watchers:  139
rem           star:  905

echo %fp%

set cbf_path=%aa%\repositories\Xamarin.Plugins

set cbf_url=https://github.com/jamesmontemagno/Xamarin.Plugins

exit/b



::_

:hwp

set fp=* Hello world prototype.

rem lu: May-30-2018

echo %fp%

set cbf_path=%aa%\repositories\xaml_prototype

set cbf_url=https://Jonathan17@bitbucket.org/jmd_mobile/xaml_prototype.git

exit/b



::_

:xa

set fp=* Xamarin folder.

rem lu: Mar-1-2018

echo %fp%

set cbf_path=%aa%\xamarin

exit/b



::_

:ed

set fp=* Ed Snider's Xamarin book sample code from his Github, not the Pakt github page.

rem lu: Jul-5-2018

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

echo %fp%

set cbf_path=%aa%\repositories\Mastering-Xamarin.Forms-Second-Edition

set cbf_url=https://github.com/PacktPublishing/Mastering-Xamarin.Forms-Second-Edition

exit/b



::_

:fma1

set fp=* Jesse Liberty's Xamarin Pluralsight course.

rem lu: May-8-2018

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

echo %fp%

set cbf_path=%aa%\repositories\first-mobile-app-Jonathan

set cbf_url=https://github.com/jonathan-r-jones/First-Mobile-App.git

exit/b



::_

:hw

set fp=Hello World.

rem lu: Jan-16-2018

echo %fp%

set cbf_path=%dropbox%\it\HelloXamarinFormsWorld

exit/b



::_

:bugs

set fp=* Bugsweeper.

rem Bugsweeper (!bugs)

rem lu: Jun-1-2018

echo %fp%

set cbf_path=%aa%\repositories\xamarin-forms-samples\bugsweeper

exit/b



::_

:batt

set fp=* James' Battery solution.

rem lu: Jan-31-2018

echo %fp%

set cbf_path=%aa%\repositories\BatteryPlugin

set cbf_url=http://github.com/jamesmontemagno/BatteryPlugin

exit/b



::_

:media

set fp=* James' Media plugin.

rem lu: Jun-4-2018

echo %fp%

set cbf_url=http://github.com/jamesmontemagno/MediaPlugin

exit/b



:_

:saru

set fp=* Alex' sort and remove usings.

rem lu: Jun-4-2018

echo %fp%

set cbf_url=https://github.com/alexsorokoletov/VisualStudioMac.SortRemoveUsings

exit/b



:_

:caro

set fp=* Cool carousel.

rem lu: Jun-4-2018

echo %fp%

set cbf_path=%aa%\repositories\xamarin-forms-samples\Navigation\CarouselPage

exit/b



:_

:xsk

set fp=* Xamarin Forms starter kit.

rem lu: Jun-5-2018

echo %fp%

set cbf_url=https://github.com/NowBI/Xamarin-Forms-Mobile-Template

exit/b



:_

:wa

set fp=* WindowsApps.

rem lu: Jun-5-2018

echo %fp%

set cbf_path=%localappdata%\Microsoft\WindowsApps

exit/b



:_

:dn

set fp=* Downloads folder.

rem lu: Jun-7-2018

echo %fp%

set cbf_path=%userprofile%\downloads

exit/b



:_

:vft

set fp=* Various file types.

rem lu: Jun-8-2018

echo %fp%

set cbf_path=%dropbox%\it\various file types

exit/b



:_

:fws

set fp=* Filename with spaces.

rem lu: Jun-8-2018

echo %fp%

set cbf_filename=%dropbox%\it\various file types\filename with spaces.txt

exit/b



:_

:205

set fp=* XU Xam 205.

rem lu: Jun-8-2018

echo %fp%

set cbf_path=%aa%\repositories\Xamarin_University\AllCourseExercises\xam205

exit/b



:_

:me

set fp=* Multi-Edit.

rem lu: Jun-8-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\multi-edit 2008\mew32.exe

exit/b



:_

:xfcss

set fp=* Xamarin forms css.

rem lu: Jun-8-2018

echo %fp%

set cbf_url=https://github.com/jamcneil/XamarinFormsCSS.git

exit/b



:_

:dd

set fp=* Dunkin donuts.

rem lu: Jun-10-2018

echo %fp%

set cbf_url=https://github.com/jCho23/DunkinDonuts.git

exit/b



:_

:hamb

:hamburger

set fp=* Hamburger menu xamarin forms.

rem lu: Jun-10-2018

echo %fp%

set cbf_url=https://github.com/twolfprogrammer/Xamarin.Forms-Hamburger-Menu-Example.git

exit/b



:_

:md

:made

set fp=* Master detail.

rem lu: Jun-10-2018

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

echo %fp%

set cbf_path=%aa%\repositories\hamster

set cbf_url=https://github.com/jonathan-r-jones/hamster.git

exit/b



:_

:xapp

set fp=* Xamarin Forms Simple App, Simple Xapp, Simple Jack.

rem lu: Jun-12-2018

echo %fp%

set cbf_path=%aa%\repositories\SimpleXapp

set cbf_url=https://github.com/jonathan-r-jones/SimpleXapp.git

exit/b



:_

:marvel

set fp=* Marvel.

rem lu: Jun-12-2018

echo %fp%

set cbf_path=

set cbf_url=https://github.com/edsnider/marvel-xfdemo.git

exit/b



:_

:og

set fp=* Open governance.

rem lu: Jun-12-2018

echo %fp%

set cbf_path=%aa%\open-governance

set cbf_url=https://github.com/techtalkdc/Open-Governance.git

exit/b



:_

:ogf

set fp=* Open governance fork.

rem lu: Jun-12-2018

echo %fp%

set cbf_path=%aa%\open-governance-fork

set cbf_url=https://github.com/jonathan-r-jones/Open-Governance.git

exit/b



:_

:jj3d

:clcr

set fp=* Closing credits.

rem lu: Jun-12-2018

echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files/blob/master/jj3d.png

exit/b



:_

:im

set fp=* Image Manipualtion.

rem lu: Jun-13-2018

echo %fp%

set cbf_path=%dropbox%\Image Manipulation

exit/b



:_+ Remote Double Click Candidates, a.k.a. lnk type files.



::_

:desk

set fp=* Show desktop.

rem lu: Jun-13-2018

echo %fp%

set cbf_path=%userprofile%\desktop

set cbf_filename=%appdata%\microsoft\internet explorer\quick launch\shows desktop.lnk

exit/b



::_

:w

:win

set fp=* Show open windows.

rem lu: Jun-13-2018

echo %fp%

set cbf_filename=%appdata%\microsoft\internet explorer\quick launch\window switcher.lnk

exit/b



:_

Metadata: Track Size (!tsn)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

:Jun-13-2018   3,261     36,243      194



:_

:pm

:post

set fp=* Postman.

rem lu: Jun-14-2018

echo %fp%

set cbf_application=C:\Users\jonat\AppData\Local\Postman\Update.exe --processStart "Postman.exe"

exit/b



:_+ Search Results



::_

:sr

set fp=* Temporary search results.

rem lu: Jun-14-2018

echo %fp%

set cbf_filename=%temp%\search_results.txt

exit/b



::_

:sr_fs

set fp=* Temporary search results for fs.

rem lu: Jun-14-2018

echo %fp%

set cbf_filename=%temp%\search_results_fs.txt

exit/b



::_

:sr_cs

set fp=* Temporary search results for cs.

rem lu: Jun-14-2018

echo %fp%

set cbf_filename=%temp%\search_results_cs.txt

exit/b



:_

:xam_ess

set fp=* Xamarin Essentials Demo.

rem lu: Jun-18-2018

echo %fp%

set cbf_url=https://github.com/marcofolio/XamSMS

exit/b



:_+ CBF-related links.



::_

:cbfgp

set fp=* CBF on GitHub Pages.

rem lu: Jan-31-2018

echo %fp%

set cbf_url=https://jonathan-r-jones.github.io/Composable-Batch-Files/

exit/b



::_

:cbf

set fp=* CBF on GitHub.

rem lu: Jan-24-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\cbf.bat

set cbf_path=%composable_batch_files%

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files

exit/b



::_

:cbf_p

set fp=* CBF Pulse on GitHub.

rem lu: Jan-24-2018

echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/Composable-Batch-Files/pulse

exit/b



:_

:220

:ios220

set fp=* Publishing an iOS App.

rem lu: Jun-19-2018

echo %fp%

set cbf_path=c:\aa\Xamarin\Xamarin_University\AllCourseExercises\IOS220

set cbf_url=https://university.xamarin.com/classes/track/all#publishing-an-ios-app-ios220

exit/b



:_

:bike

set fp=* Bike search.

rem lu: Jun-20-2018

echo %fp%

set cbf_path=%aa%\repositories\AppCenterDemo.BikeSearch

set cbf_url=https://github.com/alexsorokoletov/AppCenterDemo.BikeSearch.git

exit/b



:_

:ctr

set fp=* AppCenter.

rem lu: Jun-21-2018

echo %fp%

set cbf_path=

set cbf_url=https://appcenter.ms/apps

exit/b



:_

:a

set fp=* A folder.

rem lu: Dec-12-2017

echo %fp%

set cbf_path=c:\a

exit/b



:_

:aa

set fp=* Aa.

rem lu: Jan-15-2018

echo %fp%

set cbf_path=c:\aa

if %COMPUTERNAME%==XPS set cbf_path=d:\aa

exit/b



:_

:csamaa

set fp=* CSAM Asset Data

rem lu: Jun-19-2018

echo %fp%

set cbf_path=%aa%\csamaa

set cbf_url=https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Csam.Asset.Data

exit/b



:_

:spdr

set fp=* SPDR.

rem lu: Jun-18-2018

echo %fp%

set cbf_path=

set cbf_url=https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Csam.Normalization.Service

exit/b



:_

:draw

set fp=* Drawable folder.

rem lu: Jun-22-2018

echo %fp%

set cbf_path=.\NavigationMasterDetail\NavigationMasterDetail.Droid\Resources\Drawable

exit/b



:_+ Mobile Apps



::_

:ma

set fp=* Mobile App Prototype that Brian saw.

rem lu: Jun-18-2018

echo %fp%

set cbf_path=%dropbox%\it\Mobile

set cbf_url=https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Mobile

exit/b



::_

:fr

:fres

set fp=* Fresnel Mobile App.

rem lu: Jun-21-2018

echo %fp%

set cbf_path=%dropbox%\it\fresnel

set cbf_url=https://github.com/jonathan-r-jones/fresnel.git

exit/b



:_

:splunk

set fp=* MVC Splunk REST API.

rem lu: Jun-26-2018

echo %fp%

set cbf_path=

set cbf_url=https://github.com/lopezunwired/MVC_Splunk_REST_API.git

exit/b



:_+ Xamarin University



::_

:xu

set fp=* Xamarin University.

rem lu: Jun-5-2018

echo %fp%

set cbf_path=%aa%\repositories\xamarin_university\AllCourseExercises

set cbf_url=https://github.com/XamarinUniversity

exit/b



::_

:xul

set fp=* Xamarin lightning talks.

rem lu: Jun-5-2018

echo %fp%

set cbf_url=https://university.xamarin.com/lightninglectures

exit/b



::_

:xul1

set fp=* BUILD 2018 Workshops by Xamarin University.

rem lu: Jun-5-2018

echo %fp%

set cbf_url=https://github.com/XamarinUniversity/build2018-labs.git

exit/b



::_

:xu_all

set fp=* XU all exercises.

rem lu: Jun-5-2018

echo %fp%

set cbf_url=https://github.com/XamarinUniversity/AllCourseExercises.git

exit/b



::_

:xl_css

set fp=* Xamarin.Forms 3.0 CSS

rem lu: Jun-5-2018

echo %fp%

set cbf_url=https://github.com/jamcneil/XamarinFormsCSS

exit/b



::_

:xl_af

set fp=* Azure functions.

rem lu: Jun-5-2018

echo %fp%

set cbf_url=https://github.com/Krumelur/XamBlob

exit/b



::_

:xu_205

set fp=* XU Course 205 - Astronomy Solution.

rem lu: Jun-6-2018

echo %fp%

set cbf_path=%aa%\repositories\Xamarin_University\AllCourseExercises\IOS205

exit/b



::_

:103

:xu_103

set fp=* XU Course 103. Make your Images Look Great on all Devices [IOS103] by Judy McNeil

rem lu: Jun-26-2018

echo %fp%

set cbf_path=%aa%\repositories\Xamarin_University\AllCourseExercises\IOS103

exit/b



:_

:p1

set fp=* Page 1.

rem lu: Jun-26-2018

echo %fp%

set cbf_filename=%dropbox%\it\fresnel\fresnel\Views\Page1.xaml

exit/b



:_

:p8

set fp=* Page 8.

rem lu: Jun-26-2018

echo %fp%

set cbf_path=%dropbox%\it\fresnel\fresnel\Views

set cbf_filename=%dropbox%\it\fresnel\fresnel\Views\Page8.xaml

exit/b



:_

:10

:p10

set fp=* Page 10.

rem lu: Jun-27-2018

echo %fp%

set cbf_path=%dropbox%\it\fresnel\fresnel\Views

set cbf_filename=%dropbox%\it\fresnel\fresnel\Views\AboutPage.xaml

exit/b



:_

:calc

set fp=* Lee Richardardson's Xamarin Forms calculator.

rem lu: Jun-28-2018

echo %fp%

set cbf_path=%aa%\repositories\mobile-calc-forms

set cbf_url=https://github.com/lprichar/mobile-calc-forms.git

exit/b



:_

:whiskey

:clcr

set fp=* Closing credits.

rem lu: Jun-12-2018

echo %fp%

set cbf_url=https://github.com/jonathan-r-jones/for-git-testing/blob/master/whiskey.png

exit/b



:_

:dalsoft

set fp=* DalSoft Rest client.

rem lu: Jul-3-2018

echo %fp%

set cbf_path=

set cbf_url=https://github.com/DalSoft/DalSoft.RestClient.git

exit/b



:_

:monkeys

set fp=* Monkeys.

rem lu: Jul-3-2018

echo %fp%

set cbf_path=

set cbf_url=http://montemagno.com/monkeys.json

exit/b



:_+ Browsers



::_

:kr

set fp=* Chrome.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe

exit/b



::_

:fx

set fp=* Firefox.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\program files\mozilla firefox\firefox.exe

exit/b



::_

:edge

set fp=* Microsoft Edge.

rem lu: Feb-7-2018

echo %fp%

set cbf_application=microsoft-edge

exit/b



::_

:ie

set fp=* Internet Explorer.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\program files\internet explorer\iexplore.exe

exit/b



::_

:op

set fp=* Opera.

rem lu: Feb-13-2018

echo %fp%

set cbf_application=c:\program files\opera\launcher.exe

exit/b



:_

:webapi

set fp=* Call a Web API From a .NET Client (C#).

rem lu: Jul-3-2018

echo %fp%

set cbf_path=

set cbf_url=https://github.com/aspnet/Docs.git

exit/b



:_

:hcc

set fp=* My HTTP Client Console App.

rem lu: Jul-3-2018

echo %fp%

set cbf_path=%aa%\HTTPClientConsoleApp

set cbf_url=

exit/b



:_

:r

set fp=* Repos.

rem lu: Jul-5-2018

echo %fp%

set cbf_path=%aa%\repositories

exit/b



:_

:p

set fp=* Playpark.

rem lu: Jul-6-2018

echo %fp%

set cbf_path=%dropbox%\it\playpark

set cbf_url=https://github.com/jonathan-r-jones/playpark.git

exit/b



:_

:sa

set fp=* Staging area.

rem lu: Jul-8-2018

echo %fp%

set cbf_path=%my documents%\mp3 content staging area\files ready For Transfer

exit/b



:_

:cj

set fp=* Clipjam.

rem lu: Jul-8-2018

echo %fp%

set cbf_path=g:\podcasts

exit/b



:_

:docs

set fp=* Documents folder.

rem lu: Jul-9-2018

echo %fp%

set cbf_path=%userprofile%\documents

exit/b



:_

:ju

set fp=* JSON users.

rem lu: Jul-9-2018

echo %fp%

set cbf_url=http://jsonplaceholder.typicode.com/users

exit/b



:_

:fotu

set fp=* Forms tutor.

rem lu: Jul-9-2018

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

echo %fp%

set cbf_path=

set cbf_url=https://github.com/jamilgeor/starter-mobile.git

exit/b



:_

:sw

set fp=* SolarWinds OnionSDK.

rem lu: Jul-10-2018

echo %fp%

set cbf_path=

set cbf_url=https://github.com/solarwinds/OrionSDK.git

exit/b



:_

:repository_folder

set fp=* Default repository folder.

rem lu: Jul-10-2018

echo %fp%

set cbf_path=%cbf_default_repository_folder%

exit/b



:_

:150

:xam150

set fp=* XAM 150: Consuming REST-based Web Services

rem lu: Jul-9-2018

echo %fp%

set cbf_path=%aa%\Repositories\Xamarin_University\AllCourseExercises\XAM150

if not "%~2" == "" (
  set cbf_path=%aa%\Repositories\Xamarin_University\AllCourseExercises\XAM150\Exercise %2\Completed
)

exit/b



:_ (!rfsp) (mov-6)