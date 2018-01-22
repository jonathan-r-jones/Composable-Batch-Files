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



:_

set fp=* Detect a filename in the first parameter.

rem fcd: Jun-1-2017

rem echo.
rem echo %fp%

echo %1 | find /i ".">nul

if %errorlevel% == 0 echo.
if %errorlevel% == 0 echo First parameter is a filename.
if %errorlevel% == 0 set file_to_edit=%1
if %errorlevel% == 0 goto exitb

rem if %errorlevel% == 1 echo First parameter is NOT a filename.

if %errorlevel% == 1 goto %1

goto exitb



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

:log

:slog

set fp=* Server log.

rem fcd: May-10-2017

echo %fp%

rem call m set_wildfly_location

set file_to_edit=%wildfly_location%\standalone\log\server.log

goto exitb



:_

:edsw

:sw

:system_widget

set fp=* SystemWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\SystemWidget.js

goto exitb



:_

:pom_root

set fp=* Pom root.

rem FCD: Apr-10-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\mercury6\pom.xml

goto exitb



:_

:pom_ear

set fp=* Pom Ear.

rem FCD: Apr-10-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\mercury6\Mercury-ear\pom.xml

goto exitb



:_

:pom_ejb

set fp=* Pom Ejb.

rem FCD: Apr-10-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\mercury6\Mercury-ejb\pom.xml

goto exitb



:_

:pom_web

set fp=* Pom Web.

rem FCD: Apr-10-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\mercury6\Mercury-web\pom.xml

goto exitb



:_

:td

set fp=* td.bat.

rem FCD: May-13-2017

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\td.bat

goto exitb



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

goto exitb



:_

:g

set fp=* G.bat.

rem FCD: Jun-1-2017

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\g.bat

goto exitb



:_

:h

set fp=* Edit a file that is here in front of you.

rem FCD: Jun-1-2017

echo %fp%

set file_to_edit=%2

echo %file_to_edit%

rem if "%2"=="p" call start "my title" "C:\Program Files\Notepad++\notepad++.exe" %file_to_edit%

goto exitb



:_

:p

set fp=* Edit file that is here in front of you.

rem FCD: Jun-1-2017

echo %fp%

set file_to_edit=%2

echo %file_to_edit%

rem if "%2"=="p" call start "my title" "C:\Program Files\Notepad++\notepad++.exe" %file_to_edit%

goto exitb



:_

:stan

set fp=* Standalone.xml.

rem fcd: Jul-7-2017

echo %fp%

set file_to_edit=C:\Mercury\Server\wildfly-9.0.2.Final\standalone\configuration\standalone.xml

goto exitb



:_

:gencred_input

set fp=* Credential generator input file. The format is: username:password.

rem fcd: Jul-17-2017

echo %fp%

if not exist %tmp%\certutil_input.txt echo.
if not exist %tmp%\certutil_input.txt xcopy /d /h /r /s /y "%COMPOSABLE_BATCH_FILES%\certutil_input.txt" "%tmp%"

set file_to_edit=%tmp%\certutil_input.txt

goto exitb



:_

:settings_xml

set fp=* M2's settings.xml file.

rem lu: Nov-21-2017

echo %fp%
echo.

set file_to_edit=%userprofile%\.m2\settings.xml

goto exitb



:_

:s

set fp=* S.bat.

rem FCD: Jul-27-2017

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\s.bat

goto exitb



:_

:cw

:edcw

:edit_contacts_widget

set fp=* ContactsWidget.js.

rem FCD: Apr-7-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\ContactsWidget.js

goto exitb



:_

:cwt

:contacts_widget_for_tablet

set fp=* ContactsWidget.js for tablet.

rem FCD: Sep-25-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\tablet\dashboard\ContactsWidget.js

goto exitb



:_

:mysql

:port_3306

set fp=* MySql configuration file in order to close open port at 3306.

rem fud: Aug-4-2017

echo %fp%

set file_to_edit=C:\ProgramData\MySQL\MySQL Server 5.7\my.ini

goto exitb



:_ + Mobile Login Enabling



::_

:disable_mobile_login

set fp=* Disable mobile login.

rem To disable mobile login, do a comment switch on the xtype from login to loginDisabled.

rem Currently, the checked in code has mobile login ENABLED. Sep-25-2017

rem lu: Sep-25-2017

echo %fp%

call %0 edit_mobile_blocker_1

call %0 edit_mobile_blocker_2

goto exitb



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

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\login.js

goto exitb



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

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\authentication\WIPPage.js

goto exitb



:_

:help

:shared_list

set fp=* Filename lookup.

rem fcd: May-13-2017

echo %fp%

echo.
echo Usage: [filename verb, e.g. no (for Notepad) or npp (for Notepad++)] [first parameter = filename lookup code]

echo.
echo If the first parameter is a filename, then edit that file, else route to the lookup code parameter.

echo.
echo     Parameter  Target
echo -------------  -----------------------------------------------------------
echo           cwb  ContactsWidget for Browser
echo           cwp  ContactsWidget for Phone
echo           cwt  ContactsWidget for Tablet
echo           log  %wildfly_location%\standalone\log\server.log
echo             g  \mercury\batch_files\g.bat
echo             m  \mercury\batch_files\m.bat
echo       pom_ear  \projects\netbeans\mercury6\Mercury-ear\pom.xml
echo       pom_ejb  \projects\netbeans\mercury6\Mercury-ejb\pom.xml
echo      pom_root  \projects\netbeans\mercury6\pom.xml
echo       pom_web  \projects\netbeans\mercury6\Mercury-web\pom.xml
echo     port_3306  Used to close open port 3306.
echo             s  \mercury\batch_files\s.bat
echo          stan  Standalone.xml, WildFly config file.
echo            sw  \classic\src\view\dashboard\SystemWidget.js
echo            td  \mercury\batch_files\td.bat

goto exitb



:_

:msg

set fp=* Message from batch files.

rem lu: Nov-17-2017

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\message from batch files.txt

goto exitb



:_

:mde

set fp=* Mercury devevelopment environment.

rem lu: Nov-17-2017

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\Mercury Development Environment.xlsx - Shortcut.lnk

goto exitb



:_

:mac

set fp=* Mobile log.

rem lu: Dec-4-2017

echo %fp%

set file_to_edit=c:\mercury\mobility\How to Build a Sencha App on Mac Using Cordova.asc

goto exitb



:_

:aj

set fp=* App.json.

rem lu: Dec-4-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\app.json

goto exitb



:_

:nc

set fp=* Netconfig.

rem lu: Dec-6-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils\netconfig.js

goto exitb



:_

:cwp

:contacts_widget_for_phone

set fp=* ContactsWidget.js for phone.

rem FCD: Sep-25-2017

echo %fp%

set file_to_edit=C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\view\phone\dashboard\ContactsWidget.js

goto exitb



:_

:gencred_output

set fp=* Credential generator output file. Copy this into you m2's settings.xml file.

rem fcd: Jul-17-2017

echo %fp%
echo.

set file_to_edit=%tmp%\certutil_output.txt

goto exitb



:_

:m

set fp=* M.bat.

rem FCD: Apr-10-2017

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\m.bat

goto exitb



:_

:fn

set fp=* Fn.bat.

rem FCD: Jan-4-2018

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\fn.bat

goto exitb



:_

:ig_sample

set fp=* Git Ignore Sample File.

rem lu: Jan-19-2018

echo %fp%

set file_to_edit=%COMPOSABLE_BATCH_FILES%\Git Ignore Sample File.txt
rem qq-1
goto exitb



:_

:ig

set fp=* Git Ignore in the current folder.

rem lu: Jan-19-2018

echo %fp%

set file_to_edit=.gitignore
rem qq-1
goto exitb



:_ (!sp) (mov-9)