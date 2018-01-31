:_

@echo off



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

:help

set fp=To return the full name corresponding to a given nickname.

echo This file purpose (fp) is to: %fp%
echo.

echo The filename stands for: Filename Nicknames.
echo.

echo Last Updated (lu): Jan-24-2018
echo.

echo Usage: %0 [single parameter]
echo.

echo Parm/Nickname  Target
echo -------------  -----------------------------------------------------------
echo           cwp  ContactsWidget for Phone
echo           cwt  ContactsWidget for Tablet
echo           log  %wildfly_location%\standalone\log\server.log
echo             g  %COMPOSABLE_BATCH_FILES%\g.bat
echo             m  %COMPOSABLE_BATCH_FILES%\m.bat
echo       pom_ear  \projects\netbeans\mercury6\Mercury-ear\pom.xml
echo       pom_ejb  \projects\netbeans\mercury6\Mercury-ejb\pom.xml
echo      pom_root  \projects\netbeans\mercury6\pom.xml
echo       pom_web  \projects\netbeans\mercury6\Mercury-web\pom.xml
echo     port_3306  Used to close open port 3306.
echo             s  %COMPOSABLE_BATCH_FILES%\s.bat
echo          stan  Standalone.xml, WildFly config file.
echo            sw  \classic\src\view\dashboard\SystemWidget.js
echo            td  %COMPOSABLE_BATCH_FILES%\td.bat

goto exitb



:_

:footer

set fp=* Footer function.

rem lu: Jan-31-2018

rem echo %fp%

set cbf_parameter=%cbf_filename%

goto exitb



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



::_

rem ******** End Exit Functions.



:_

:log

:slog

set fp=* Server log.

rem fcd: May-10-2017

echo %fp%

rem call m set_wildfly_location

set cbf_filename=%wildfly_location%\standalone\log\server.log

goto footer



:_

:edsw

:sw

:system_widget

set fp=* SystemWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\SystemWidget.js

goto footer



:_

:pom_root

set fp=* Pom root.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\pom.xml

goto footer



:_

:pom_ear

set fp=* Pom Ear.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ear\pom.xml

goto footer



:_

:pom_ejb

set fp=* Pom Ejb.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-ejb\pom.xml

goto footer



:_

:pom_web

set fp=* Pom Web.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\mercury6\Mercury-web\pom.xml

goto footer



:_

:td

set fp=* td.bat.

rem FCD: May-13-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\td.bat

goto footer



:_

:tags

:update_tags

set fp=* Update tag files.

rem Tag 6.2017.5.6.1200 for successful production deployment

rem fcd: May-8-2017

echo %fp%

call %0 pom_root %2

call %0 pom_ear %2

call %0 pom_ejb %2

call %0 pom_web %2

call %0 system_widget %2

goto footer



:_

:g

set fp=* G.bat.

rem FCD: Jun-1-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\g.bat

goto footer



:_

:stan

set fp=* Standalone.xml.

rem fcd: Jul-7-2017

echo %fp%

set cbf_filename=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\configuration\standalone.xml

goto footer



:_

:gencred_input

set fp=* Credential generator input file. The format is: username:password.

rem fcd: Jul-17-2017

echo %fp%

if not exist %tmp%\certutil_input.txt echo.
if not exist %tmp%\certutil_input.txt xcopy /d /h /r /s /y "%COMPOSABLE_BATCH_FILES%\certutil_input.txt" "%tmp%"

set cbf_filename=%tmp%\certutil_input.txt

goto footer



:_

:settings_xml

set fp=* M2's settings.xml file.

rem lu: Nov-21-2017

echo %fp%
echo.

set cbf_filename=%userprofile%\.m2\settings.xml

goto footer



:_

:s

set fp=* S.bat.

rem FCD: Jul-27-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\s.bat

goto footer



:_

:cw

:edcw

:edit_contacts_widget

set fp=* ContactsWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\ContactsWidget.js

goto footer



:_

:cwt

:contacts_widget_for_tablet

set fp=* ContactsWidget.js for tablet.

rem FCD: Sep-25-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\tablet\dashboard\ContactsWidget.js

goto footer



:_

:mysql

:port_3306

set fp=* MySql configuration file in order to close open port at 3306.

rem fud: Aug-4-2017

echo %fp%

set cbf_filename=C:\ProgramData\MySQL\MySQL Server 5.7\my.ini

goto footer



:_ + Mobile Login Enabling



::_

:emb1

:edit_mobile_blocker_1

set fp=* Mobile blocker 1.

rem FCD: Sep-25-2017

echo %fp%

rem     // OPEN mobile login.
rem     xtype: 'login',
rem     // CLOSE mobile login.
rem     //xtype:'loginDisabled',

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\login.js

goto footer



::_

:emb2

:edit_mobile_blocker_2

set fp=* Mobile blocker 2.

rem FCD: Sep-25-2017

echo %fp%

rem     // OPEN mobile login.
rem     xtype:'loginDisabled',
rem     // CLOSE mobile login.
rem     //xtype: 'login',

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\WIPPage.js

goto footer



:_

:msg

set fp=* Message from batch files.

rem lu: Nov-17-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\message from batch files.txt

goto footer



:_

:mde

set fp=* Mercury devevelopment environment.

rem lu: Nov-17-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Mercury Development Environment.xlsx - Shortcut.lnk

goto footer



:_

:mac

set fp=* Mobile log.

rem lu: Dec-4-2017

echo %fp%

set cbf_filename=c:\mercury\mobility\How to Build a Sencha App on Mac Using Cordova.asc

goto footer



:_

:aj

set fp=* App.json.

rem lu: Dec-4-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\app.json

goto footer



:_

:nc

set fp=* Netconfig.

rem lu: Dec-6-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils\netconfig.js

goto footer



:_

:cwp

:contacts_widget_for_phone

set fp=* ContactsWidget.js for phone.

rem FCD: Sep-25-2017

echo %fp%

set cbf_filename=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\phone\dashboard\ContactsWidget.js

goto footer



:_

:gencred_output

set fp=* Credential generator output file. Copy this into you m2's settings.xml file.

rem fcd: Jul-17-2017

echo %fp%
echo.

set cbf_filename=%tmp%\certutil_output.txt

goto footer



:_

:m

set fp=* M.bat.

rem FCD: Apr-10-2017

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\m.bat

goto footer



:_

:re

set fp=* Readme.md.

rem lu: Jan-23-2018

echo %fp%

set cbf_filename=Readme.md

goto footer



:_

:fn

set fp=* Filename nicknames.

rem lu: Jan-24-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\fn.bat

goto footer



:_+ Git Ignore



::_

:ig

set fp=* Git Ignore in the current folder.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=.gitignore

goto footer



::_

:vs_ig

set fp=* Git Ignore Visual Studio Sample File.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Git Ignore Sample File - Visual Studio.txt

goto footer



::_

:ig_sample_old

set fp=* Git Ignore Sample File.

rem lu: Jan-19-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\Git Ignore Sample File.txt

goto footer



:_

:tt

set fp=* TT VS solution.

rem lu: Jan-31-2018

echo %fp%

set cbf_filename=%dropbox%\it\ticktockmenu\TickTockMenu.sln

goto footer



:_

:cbf

set fp=* CBF file.

rem lu: Jan-31-2018

echo %fp%

set cbf_filename=%COMPOSABLE_BATCH_FILES%\cbf.bat

goto footer



:_

:batt

set fp=* Battery solution.

rem lu: Jan-31-2018

echo %fp%

set cbf_filename=d:\aa\james_montemagno_battery_plugin\src\Battery.sln

goto footer



:_ (!rfsp) (mov-9)