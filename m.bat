:_

@echo off



:_

set fp=* Set title.

title = Composable Batch Files Helper



:_

set fp=* Add whitespace.

echo.


:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

rem Metadata

rem File Purpose: This batch file is intended to be used for miscellaneous related tasks.

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

rem set fp= * Exit batch file but not command window.

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

:delete_stale_ext_from_wildfly_dynamic_folder

set fp=* Delete stale Ext JS. On Feb-10-2017, this rubric fixed enabled this to work.

echo %fp%
echo.

call td set_wildfly_dynamic_folder

echo Current Folder: %cd%
echo.

rd /q /s classic

rd /q /s modern

rd /q /s resources

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

goto exitb



:_

:delete_stale_ext_js_from_testing_folder

set fp=* Delete stale Ext JS from the testing folder.

echo %fp%
echo.

if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury echo Testing folder's not there.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury goto exitb

cd \projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

echo Current Folder: %cd%
echo.

rd /q /s classic

rd /q /s modern

rd /q /s resources

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

goto exitb



:_

:delete_stale_ext_js_from_webapp_folder

set fp=* Delete stale Ext JS from webapp folder.

echo %fp%
echo.

cd \projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

rem rd /q /s classic

rem rd /q /s modern

del cache.appcache

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

goto exitb



:_

:htwar

set fp=* How to Build a War File Document

rem fcd: Feb-17-2017

echo %fp%

cd \mercury\batch_files

cls

type "How to Build a War File.txt"

goto exitb



:_

:tirem

:run_tirem

set fp=* Run Tirem.

rem I was only able to successfully do this after I copied David's .m2 folder 
rem into my %homedrive%%homepath% folder.

rem fcd: Mar-6-2017

echo %fp%

cd c:\projects\netbeans\mercury6\mercury-tirem

echo Current folder: %cd%
echo.

@echo on
tirem.bat --debug --pcs c:\projects\netbeans\mercury6\mercury-tirem\tirem7184397588571818164.pcs
@echo off

goto exitb



:_

:rename_for_production_war

set fp=* Rename index to Mercury. Mike Stonkey said we needed to do this.

rem fcd: Mar-7-2017

echo %fp%

cd \projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

if exist index.html ren index.html mercury.html
if not exist index.html Echo index.html does not exist.

goto exitb



:_

:rename_for_debug_war

set fp=* Rename index to Mercury.

rem fcd: Apr-5-2017

echo %fp%

cd \projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

if exist index.html ren index.html mercury.html
if not exist index.html Echo index.html does not exist.

goto exitb



:_

:build_applet

set fp=* Build the Applet.

rem I successfully built the applet on Mar-16-2017 after I put the Keystore under the
rem Netbeans folder.

echo %fp%

cd \projects\netbeans\mercury6\Mercury-applet

rem May need Ikjae's -Pserver command.
mvn clean install

rem I was only able to successfully do this after I copied David's .m2 folder 
rem into my %homedrive%%homepath% folder.

goto exitb



:_

:build_ejb

set fp=* Build Ejb file.

rem fcd: Mar-21-2017

echo %fp%

cd \projects\netbeans\mercury6\mercury-ejb

rem May need Ikjae's -Pserver command.
mvn clean install

goto exitb



:_

:delete_target

:delete_target_folder

set fp=* Delete target folder so that you know you have a fresh war file.

rem fcd: Apr-4-2017

echo %fp%

cd C:\projects\netbeans\mercury6\Mercury-web

rd /q /s target

goto exitb



:_

:copy_for_production

set fp=* Copy fresh Ext JS into WildFly folder.

echo %fp%
echo.

cd \projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

goto exitb



:_

:start_wildfly_do_not_delete_hex_folder

:wilddn

set fp=* Start WildFly - do not delete hex folder. Deprecated.

rem Deprecated because I can't think of a time when you would want to do this.
rem Each time WildFly starts it creates a new hex folder so the old hex folder is of no use
rem other than as an archive.

rem fcd: Apr-5-2017

echo %fp%

color 0b

call :set_wildfly_location

call %wildfly_location%\bin\standalone.bat

goto exitb



:_

Metadata: Track Size (!tsm)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Jan-4-2018   2,891     56,098      117

: Nov-9-2017   2,645     49,604      101

: Aug-8-2017   2,432     44,512       91

: Aug-2-2017   2,274     43,034       82

: May-9-2017   2,126     40,700       75

:Apr-17-2017   1,574     22,170       60

:Apr-11-2017   1,310     17,930       53

: Apr-6-2017     893     12,731       38



:_

:del_dyn

:del_hex

:del_dynamic

:delete_wildfly_dynamic_folder

set fp=* Delete WildFly Dynamic Folder.

rem fcd: Feb-9-2017

echo %fp%

call :set_wildfly_location
rem echo Sep-19-2017.3

if not exist %wildfly_location%\standalone\tmp\vfs\temp Echo vfs\temp folder missing so there was no hex folder to remove.
if not exist %wildfly_location%\standalone\tmp\vfs\temp goto exitb
rem echo Sep-19-2017.4

cd %wildfly_location%\standalone\tmp\vfs\temp
rem echo Sep-19-2017.5

dir/b>%temp%\environment_variable_temporary_storage.txt
rem echo Sep-19-2017.6

set /p dynamic_server_location_part_1=<%temp%\environment_variable_temporary_storage.txt
echo Sep-19-2017.7

if exist "%dynamic_server_location_part_1%" rd /q /s "%dynamic_server_location_part_1%"

echo Sep-19-2017.8

rem If you are having issues, it might make sense to run the following comand:
rem call :delete_standalone_folders

goto exitb



:_

:tirem_preq_1

:tirem_prereq_1

set fp=* These folders must be present for tirem to work.

rem fcd: Apr-10-2017

echo %fp%

mcd c:\mercury\files

md overview
md plan
md request
md system
md tirem

goto exitb



:_

:tirem_preq_2

:tirem_prereq_2

set fp=* This is one-time copy that needs to be made in order to properly prepare the target folder prior to tirem running.

rem fcd: Apr-10-2017

echo %fp%
echo.

cd c:\mercury\tirem

xcopy /d /h /r /s /y "c:\projects\netbeans\mercury6\mercury-tirem"

goto exitb



:_

:tirem_preq_3

:tirem_prereq_3

set fp=* This is one-time copy that needs to be made in order to properly prepare the target folder prior to tirem running.

rem fcd: Mar-6-2017

echo %fp%
echo.

cd c:\projects\netbeans\mercury6\mercury-tirem\target

echo Current folder: %cd%
echo.

echo If target folder is not present, you should create it.

pause

xcopy /d /h /r /s /y "C:\projects\netbeans\mercury6\Mercury-tirem\prerequisite jars"

goto exitb



:_

:copy_stand

set fp=* Copy standalone.xml to j1 and j2.

rem fcd: Apr-10-2017

echo %fp%
echo.

cd c:\mercury\batch_files

xcopy /y "standalone (from Virginia).xml" c:\a\j1.txt
xcopy /y "standalone (from NES-1KKHHC2).xml" c:\a\j2.txt

goto exitb



:_

:gen_ver

:generate_version_number

set fp=* Generate a new timestamp-based Mercury version number.

rem fcd: Apr-10-2017

echo.
echo %fp%
echo.

cd c:\mercury\batch_files

call java -cp . generate_mercury_version_number

goto exitb



:_

:use_old_debug_jnlp_file

:use_testing_jnlp_file

set fp=* Use the debug JNLP file.

rem fcd: Apr-13-2017

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /r /y MercuryRequestApplet.jp.jnlp MercuryRequestApplet.jnlp

goto exitb



:_

:use_debug_jnlp_file

:use_testing_jnlp_file

set fp=* Use the debug JNLP file.

rem fcd: Apr-13-2017

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /r /y MercuryRequestApplet.proto.jnlp MercuryRequestApplet.jnlp

goto exitb



:_

:use_production_jnlp_file

set fp=* Use the production JNLP file.
echo.

rem fcd: Apr-13-2017

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /y MercuryRequestApplet.va.jnlp MercuryRequestApplet.jnlp

goto exitb



:_

:delete_stale_ext_js_from_production_folder

set fp=* Delete stale Ext JS from the production folder.

echo %fp%
echo.

if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury echo Production folder's not there.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury echo.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury goto exitb

cd \projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

echo Current Folder: %cd%
echo.

rd /q /s classic

rd /q /s modern

rd /q /s resources

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

goto exitb



:_

:copy_for_debug

set fp=* Copy fresh Ext JS for use in building a debuggable War file.

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

goto exitb



:_

:copy

:copy_for_test

:copy_fresh_ext_js_into_wildfly_dynamic_folder

call :delete_stale_ext_from_wildfly_dynamic_folder

set fp=* Copy fresh Ext JS into WildFly folder. This should be used only when WildFly is running because it depends on the presence of an active hex folder.

echo %fp%
echo.

title = %fp%

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

goto exit



:_

:use_6

:use_6_button_test_files

set fp=* Use 6 button test files.

rem fcd: Apr-17-2017

echo %fp%
echo.

cd c:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\

xcopy /y c:\mercury\batch_files\*.js

goto exitb



:_

:f5

:compile_and_refresh_ext_js_code

:compile_and_refresh_wildfly

set fp=* Compile and refresh Ext JS code in the existing WildFly folder.

rem Remember that if you restart WildFly, the hex folder gets recreated, meaning that
rem any new JavaScript code is deleted in the process.

rem fcd: Apr-7-2017

echo %fp%

call :run_sencha_app_build_testing

call :delete_stale_ext_from_wildfly_dynamic_folder

call :copy_fresh_ext_js_into_wildfly_dynamic_folder

goto exit



:_

:start_wildfly

:start_wildfly_delete_hex_folder

:wild

:wildd

set fp=* Start WildFly. Refresh the environment.

rem fcd: Apr-5-2017

echo %fp%

echo Sep-19-2017.1
call :delete_wildfly_dynamic_folder
echo Sep-19-2017.2

rem Apr-18-2017: I commented out the below line because perhaps 25% of the time
rem I kept having to restart WildFly.
rem call :delete_standalone_folders

color 0a

rem call :set_wildfly_location

call %wildfly_location%\bin\standalone.bat

rem You know WildFly is ready when you see the "692" message:

rem 13:28:53,644 INFO [org.jboss.as] (Controller Boot Thread) WFLYSRV0025: WildFly Full 
rem 9.0.2.Final (WildFly Core 1.0.2.Final) started in 63762ms - Started 692 of 864 services 
rem (221 services are lazy, passive or on-demand).

rem If you see a number less than 692, you most likely have a problem.

goto exitb



:_+ Build Wizard Family



::_

:wiz_stag

set is_debug_build=true
set is_hosted_on_server=true
set is_java_change_only=false
set target_server=staging

set fp=* Run wizard for deployment to staging.

goto begin_wizard



::_

:wiz

:wiz_prod

set is_debug_build=false
set is_hosted_on_server=true
set is_java_change_only=false
set target_server=production

set fp=* Run wizard for deployment to production.

goto begin_wizard



::_

:wiz_lh

set is_debug_build=true
set is_hosted_on_server=false
set is_java_change_only=false
set target_server=localhost

set fp=* Run wizard for deployment to localhost.

goto begin_wizard



::_

:wiz_jv

set is_debug_build=true
set is_hosted_on_server=false
set is_java_change_only=true
set target_server=localhost

set fp=* Run wizard for deployment to localhost that has Java changes only.

echo %fp%

goto begin_wizard_midway



::_

:bw

:begin_wizard

echo %fp%

echo.
set /P user_option=Did you remember to do a get-latest? (y/n): 

if not "%user_option%"=="y" echo.
if not "%user_option%"=="y" echo Abort.
if not "%user_option%"=="y" goto exitb

echo.
set /P user_option=Would you like to update the version number?(y/n): 

if not "%user_option%"=="y" echo.
if not "%user_option%"=="y" goto skip_version

call :generate_version_number
echo.

pause

call :update_the_version_number_2

rem if "%target_server%" == "production" call no disable_mobile_login

echo.

rem This pause allows time for all of the above text edits to be saved.
pause

:skip_version

:begin_wizard_midway

if "%target_server%" == "localhost" call :stop_wildfly

call :use_default_netconfig_file

if "%is_java_change_only%" == "true" goto continue_wizard

if     "%target_server%" == "production" call h run_sencha_app_build_production
if not "%target_server%" == "production" call :run_sencha_app_build_testing

:continue_wizard

rem call :rename_for_debug_war

rem if "%target_server%" == "production" call :back_up_war_file

call :delete_target_folder

call :delete_stale_ext_js_from_webapp_folder

if "%target_server%" == "production" call :use_agi_license_for_production
if "%target_server%" == "staging" call :use_agi_license_for_staging

if     "%is_debug_build%" == "true" call :copy_for_debug
if not "%is_debug_build%" == "true" call :copy_for_production

if     "%is_debug_build%" == "true" call :use_debug_jnlp_file
if not "%is_debug_build%" == "true" call :use_production_jnlp_file

if     "%is_hosted_on_server%" == "true" call :build_war_file_for_server
if not "%is_hosted_on_server%" == "true" call :build_war_file_for_local

if exist C:\projects\netbeans\mercury6\Mercury-web\target call td targ

echo.
if exist *.war echo WAR file has been created.
if not exist *.war echo Error: WAR file has NOT been created!
if not exist *.war goto exitb

if exist C:\projects\netbeans\mercury6\Mercury-web\target call of targ

if "%is_hosted_on_server%" == "true" goto exitb

rem echo.
rem set /P user_option=Would you like to run scowl? (y/n): 
rem echo.

rem if "%user_option%"=="y" call :scowl
call :scowl

goto exitb



:_

:stop_wildfly

set fp=* Stop WildFly.

rem fcd: Apr-28-2017

echo %fp%
echo.

taskkill /f /fi "windowtitle eq wildfly"

rem I don't know why I need to call this twice, but it doesn't work if I don't.
taskkill /f /fi "windowtitle eq wildfly"

goto exitb



:_

:fix_buttons

set fp=* Fix button warnings by Mike Stonkey.

rem fcd: May-2-2017

echo %fp%
echo.

rem This will get rid of the warnings when compiling and adds the icons to the buttons when 
rem using IE and disabling font downloads. 
 
rem Copy and paste the text from the attachments into a command prompt or change the name and
rem run them as bat files in the following directories
 
rem Fix-menu.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\menu
 
rem Fix-buttons.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\button
 
rem Assuming your app is installed in C:\Projects\NetBeans\Sencha\
 
rem -Mike

cd C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\resources\images\button

copy default-large-arrow-rtl.png facebook-large-arrow-rtl.png
copy default-large-arrow-rtl.png gray-large-arrow-rtl.png
copy default-large-arrow-rtl.png orange-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-blue-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-green-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-orange-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-yellow-large-arrow-rtl.png
copy default-large-arrow.png facebook-large-arrow.png
copy default-large-arrow.png gray-large-arrow.png
copy default-large-arrow.png orange-large-arrow.png
copy default-large-arrow.png soft-blue-large-arrow.png
copy default-large-arrow.png soft-green-large-arrow.png
copy default-large-arrow.png soft-orange-large-arrow.png
copy default-large-arrow.png soft-yellow-large-arrow.png
copy default-large-s-arrow-b.png facebook-large-s-arrow-b.png
copy default-large-s-arrow-b.png gray-large-s-arrow-b.png
copy default-large-s-arrow-b.png orange-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-blue-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-green-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-orange-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-yellow-large-s-arrow-b.png
copy default-large-s-arrow-rtl.png facebook-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png gray-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png orange-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-blue-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-green-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-orange-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-yellow-large-s-arrow-rtl.png
copy default-large-s-arrow.png facebook-large-s-arrow.png
copy default-large-s-arrow.png gray-large-s-arrow.png
copy default-large-s-arrow.png orange-large-s-arrow.png
copy default-large-s-arrow.png soft-blue-large-s-arrow.png
copy default-large-s-arrow.png soft-green-large-s-arrow.png
copy default-large-s-arrow.png soft-orange-large-s-arrow.png
copy default-large-s-arrow.png soft-yellow-large-s-arrow.png
copy default-medium-arrow-rtl.png soft-orange-medium-arrow-rtl.png
copy default-medium-arrow.png soft-orange-medium-arrow.png
copy default-medium-s-arrow-b.png soft-orange-medium-s-arrow-b.png
copy default-medium-s-arrow-rtl.png soft-orange-medium-s-arrow-rtl.png
copy default-medium-s-arrow.png soft-orange-medium-s-arrow.png
copy default-small-arrow-rtl.png angry-red-small-arrow-rtl.png
copy default-small-arrow-rtl.png blue-small-arrow-rtl.png
copy default-small-arrow-rtl.png facebook-small-arrow-rtl.png
copy default-small-arrow-rtl.png gray-small-arrow-rtl.png
copy default-small-arrow-rtl.png green-small-arrow-rtl.png
copy default-small-arrow-rtl.png header-small-arrow-rtl.png
copy default-small-arrow-rtl.png orange-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-blue-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-cyan-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-green-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-purple-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-red-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-yellow-small-arrow-rtl.png
copy default-small-arrow.png angry-red-small-arrow.png
copy default-small-arrow.png blue-small-arrow.png
copy default-small-arrow.png facebook-small-arrow.png
copy default-small-arrow.png gray-small-arrow.png
copy default-small-arrow.png green-small-arrow.png
copy default-small-arrow.png header-small-arrow.png
copy default-small-arrow.png orange-small-arrow.png
copy default-small-arrow.png soft-blue-small-arrow.png
copy default-small-arrow.png soft-cyan-small-arrow.png
copy default-small-arrow.png soft-green-small-arrow.png
copy default-small-arrow.png soft-purple-small-arrow.png
copy default-small-arrow.png soft-red-small-arrow.png
copy default-small-arrow.png soft-yellow-small-arrow.png
copy default-small-s-arrow-b.png angry-red-small-s-arrow-b.png
copy default-small-s-arrow-b.png blue-small-s-arrow-b.png
copy default-small-s-arrow-b.png facebook-small-s-arrow-b.png
copy default-small-s-arrow-b.png gray-small-s-arrow-b.png
copy default-small-s-arrow-b.png green-small-s-arrow-b.png
copy default-small-s-arrow-b.png header-small-s-arrow-b.png
copy default-small-s-arrow-b.png orange-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-blue-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-cyan-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-green-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-orange-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-purple-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-red-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-yellow-small-s-arrow-b.png
copy default-small-s-arrow-rtl.png angry-red-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png blue-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png facebook-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png gray-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png green-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png header-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png orange-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-blue-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-cyan-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-green-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-orange-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-purple-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-red-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-yellow-small-s-arrow-rtl.png
copy default-small-s-arrow.png angry-red-small-s-arrow.png
copy default-small-s-arrow.png blue-small-s-arrow.png
copy default-small-s-arrow.png facebook-small-s-arrow.png
copy default-small-s-arrow.png gray-small-s-arrow.png
copy default-small-s-arrow.png green-small-s-arrow.png
copy default-small-s-arrow.png header-small-s-arrow.png
copy default-small-s-arrow.png orange-small-s-arrow.png
copy default-small-s-arrow.png soft-blue-small-s-arrow.png
copy default-small-s-arrow.png soft-cyan-small-s-arrow.png
copy default-small-s-arrow.png soft-green-small-s-arrow.png
copy default-small-s-arrow.png soft-orange-small-s-arrow.png
copy default-small-s-arrow.png soft-purple-small-s-arrow.png
copy default-small-s-arrow.png soft-red-small-s-arrow.png
copy default-small-s-arrow.png soft-yellow-small-s-arrow.png
copy default-toolbar-small-arrow-rtl.png angry-red-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png blue-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png gray-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png green-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png orange-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-blue-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-cyan-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-green-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-orange-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-purple-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-red-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-yellow-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow.png angry-red-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png blue-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png gray-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png green-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png orange-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-blue-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-cyan-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-green-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-orange-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-purple-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-red-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-yellow-toolbar-small-arrow.png
copy default-toolbar-small-s-arrow-b.png angry-red-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png blue-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png gray-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png green-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png orange-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-blue-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-cyan-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-green-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-orange-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-purple-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-red-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-yellow-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-rtl.png angry-red-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png blue-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png gray-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png green-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png orange-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-blue-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-cyan-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-green-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-orange-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-purple-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-red-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-yellow-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow.png angry-red-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png blue-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png gray-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png green-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png orange-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-blue-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-cyan-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-green-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-orange-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-purple-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-red-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-yellow-toolbar-small-s-arrow.png

goto exitb



:_

:fix_menu

set fp=* Fix menu warnings by Mike Stonkey.

rem fcd: May-2-2017

echo %fp%
echo.

rem This will get rid of the warnings when compiling and adds the icons to the buttons when 
rem using IE and disabling font downloads. 
 
rem Copy and paste the text from the attachments into a command prompt or change the name and
rem run them as bat files in the following directories
 
rem Fix-menu.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\menu
 
rem Fix-buttons.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\button
 
rem Assuming your app is installed in C:\Projects\NetBeans\Sencha\
 
rem -Mike

cd C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\resources\images\menu

copy default-checked.png default-menubar-checked.png
copy default-unchecked.png default-menubar-unchecked.png
copy default-group-checked.png default-menubar-group-checked.png
copy default-menu-parent-left.png default-menubar-menu-parent-left.png
copy default-scroll-top.png default-menubar-scroll-top.png
copy default-scroll-bottom.png default-menubar-scroll-bottom.png

goto exitb



:_

:c0

:c1

:c2

:c3

:c4

:c5

:c6

:c7

:c8

:c9

:c10

:c11

:c12

:c13

set fp=* Copy background.

rem fcd: May-2-2017

echo %fp%
echo.

call td open_hex_folder

cd classic\resources\images

xcopy /y C:\Users\jonathan.r.jones\Documents\DropBox\nes\documents\%1lock-screen-background.jpg lock-screen-background.jpg

goto exitb



:_

:process_mercury_version_number

set fp=* Generate a Mercury version number, set it to an environment variable and then echo it to the command line.

rem fcd: May-3-2017

echo %fp%
echo.

cd c:\mercury\batch_files

java -cp . generate_mercury_version_number>%tmp%\mercury_version_number.txt

set /p mercury_version_number=<%tmp%\mercury_version_number.txt

echo %mercury_version_number%

goto exitb



:_

:back_up_war_file

:buw

set fp=* Back up war file.

rem fcd: May-3-2017

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\target

if /i not "%computername%"=="NES-1KKHHC2" echo Not Jonathan's machine so exit this function.
if /i not "%computername%"=="NES-1KKHHC2" goto exit be.

xcopy /y *.war "C:\Users\jonathan.r.jones\Documents\DropBox\nes\Mercury Virginia WAR Files"

goto exitb



:_

:christen_development_war_file

set fp=* Christen development war file.

rem fcd: May-3-2017

echo %fp%

cd C:\projects\netbeans\mercury6\Mercury-web\target

set /p mercury_version_number=<%tmp%\mercury_version_number.txt

ren *.war "Mercury Development - %mercury_version_number%.war"

goto exitb



:_

:ise

set fp=* Initialize server environment.

rem fcd: May-8-2017

echo %fp%

rem call :set_server_path

rem call :clear_color_setting

rem call :set_server_title

rem call :set_wildfly_location

rem cd c:\mercury\batch_files

cls

goto exitb



:_

:set_server_title

set fp=* Set server title.

rem echo.
rem echo %fp%

title = Composable Batch Files Helper



:_

:c

:cc

:clear

:clear_color_setting

set fp=* Clear color setting.

echo %fp%

color

cls

goto exitb



:_

:set_server_path

set fp=* Set server path.

rem Function Creation Date: May-8-2017

echo %fp%

rem set path=C:\Program Files\MySQL\MySQL Server 5.7\bin;%path%
rem set path=C:\Program Files\MySQL\MySQL Utilities 1.6;%path%
rem set path=c:\mercury\batch_files;%path%

goto exitb



:_

:wild_svc

set fp=* Install WildFly as a service.

rem fcd: May-10-2017

echo %fp%

call :set_wildfly_location

cd %wildfly_location%\bin\service

service.bat install

goto exitb



:_

:svc

set fp=* Start Windows Services viewer.

rem fcd: May-11-2017

echo %fp%

start c:\windows\system32\services.msc /s

goto exitb



:_

:gdt

:generate_date_as_filename

set fp=* Generate date as filename.

rem fcd: May-12-2017

echo %fp%
echo.

cd c:\mercury\batch_files

rem The below class name is case sensitive.
java -cp . Get_timestamp_for_use_as_filename>%tmp%\mercury_date_as_filename.txt

set /p date_as_filename=<%tmp%\mercury_date_as_filename.txt

echo %date_as_filename%

goto exitb



:_

:l

:list

:registry

set fp=* List of common CBF Helper Batch files

rem fcd: May-12-2017

echo  %fp%
echo.

echo   File  Description
echo   ----  ------------------------------------------------------------------
echo    an:  Application nickname facade dictionary.
echo     c:  Clear screen and reset color.
echo   cbf:  Show the state of CBF environment variables.
echo    cn:  Used for Git cloning tasks.
echo    cy:  Copy file(s).
echo  cysd:  Copy file file from source to destination.
echo     d:  Easier-to-type and remember version of dir.
echo     e:  Exit command window.
echo    ea:  Application-centric way of running an app with opt. file param.
echo    ed:  Filename-centric way of editing a file with optional app. param.
echo    fn:  Filename nickname facade dictionary.
echo     g:  Perform Git-related tasks.
echo     h:  Perform Sencha-related tasks.
echo     m:  Perform miscellaneous tasks.
echo    me:  Run Multi-Edit.
echo     n:  Nicknames source dictionary.
echo    no:  Run Notepad.
echo   npp:  Run Notepad++.
echo    of:  Open Folder.
echo    pn:  Path nickname facade dictionary.
echo     s:  SQL/Database, including LDAP, related tasks.
echo    sf:  Surf to websites.
echo    sm:  Run Sublime.
echo    td:  Transform Directory.
echo    un:  URL nickname facade dictionary.
echo     x:  Double-click equivalent way to exec. a file with opt. app. param.

goto exitb



:_

:lu

set fp=* Last updated.

rem fcd: May-17-2017

echo Last Updated: May-17-2017 3:38 PM

goto exitb



:_

:ppt

:pptx

:power

set fp=* CBF Powerpoint Presentation.

rem fcd: May-19-2017

echo %fp%

call start "my title" "Composable Batch File Helper.pptx - Shortcut.lnk"

goto exitb



:_

:ppt

set fp=* Powerpoint Presentation on Mercury.

rem fcd: May-19-2017

rem This way of opening a PowerPoint document also works.

echo %fp%

cd c:\mercury\batch_files

call start "my title" "Mercury Helper.pptx"

goto exitb



:_

:set_wildfly_location

set fp=* Set WildFly location.

rem fcd: May-22-2017

echo %fp%

set wildfly_location=c:\mercury\server\wildfly-9.0.2.final

rem WIN-NRFUV3XWUWI is Japan.
rem if /i %computername%==WIN-NRFUV3XWUWI set wildfly_location=c:\mercury\server\wildfly-9.0.1.final

goto exitb



:_

:scrub

:scrub_depl

:scrub_deployment_environment

set fp=* Scrub deployment environment.

rem FCD: Apr-7-2017

echo %fp%

call :set_wildfly_location

cd %wildfly_location%\standalone\deployments

echo Current folder: %cd%
echo.

echo Delete old war files.
del /f /q *.*

cd %wildfly_location%\standalone

echo Current folder: %cd%
echo.

echo Delete data folder.
rd /q /s data

echo Delete tmp folder.
rd /q /s tmp

rem echo.
rem echo Delete log folder.
rem rd /q /s log

goto exitb



:_

:del_stan

:delete_standalone_folders

:pscrub

set fp=* Partially scrub deployment environment.

rem FCD: Apr-7-2017

echo %fp%

call :set_wildfly_location

cd %wildfly_location%\standalone\deployments

echo Current folder: %cd%
echo.

echo Delete deployed war file.
echo.

del /q *.*deployed

cd %wildfly_location%\standalone

echo Current folder: %cd%
echo.

echo Delete data folder.
rd /q /s data


echo Delete tmp folder.
rd /q /s tmp

goto exitb



:_

:pack

set fp=* Build a MacOS Cordova-Sencha package.

rem fcd: Jun-22-2017

rem From my research, it looks like I need to create a folder that I drop into Cordova's
rem Cordova's "www" folder. This function creates the necessary items for that 
rem folder/package.

echo %fp%
echo.

call td mac

set package_folder=MacOS Cordova-Sencha Package

if exist "%package_folder%" rd /q /s "%package_folder%"

call mcd "%package_folder%"

call mcd modern

xcopy /s C:\projects\netbeans\sencha\HTML5Application\public_html\modern

cd..

call mcd app

xcopy /s C:\projects\netbeans\sencha\HTML5Application\public_html\app

goto exitb



:_

:net

set fp=* Netstat.

rem fcd: Jun-26-2017

echo %fp%

cd c:\mercury\batch_files

java -cp . Get_timestamp_for_use_as_filename>%tmp%\date_time_as_filename.txt
set /p date_as_filename=<%tmp%\date_time_as_filename.txt

set dt_filename=%tmp%\nestat_results_for_machine_%computername%_%date_as_filename%.txt

netstat -a -n>%dt_filename%

call no %dt_filename%

goto exitb



:_

:testsql

set fp=* Test MySqlRemote

rem fcd: Jun-26-2017

echo %fp%

rem mysql -uroot -p -h 52.20.54.201
rem mysql -uroot -p -h 52.200.230.253
rem mysql -uroot -p -h 174.129.253.68:21624
mysql -uroot -p -h 174.129.253.68

goto exitb



:_

:update_pub

set fp=* In preparation for a mobile deployment, update Public HTML folder.

rem fcd: Jul-3-2017

echo %fp%
echo.

cd C:\Users\jonathan.r.jones\Documents\DropBox\nes\macintosh\public_html

xcopy /d /h /r /s /y C:\projects\netbeans\sencha\HTML5Application\public_html

goto exitb



:_

:bs

:build_s

:build_war_file_for_server

set fp=* Build War file for server.

rem build a war file: skw

rem To avoid a sharing violation, you may want to close applications that are looking at the
rem target folder.

rem fcd: Feb-17-2017

echo %fp%
echo.

cd \projects\netbeans\mercury6

call mvn clean install -Pserver

rem call of targ

rem echo.
rem echo You are in the target folder where you should see your freshly built War file.

goto exitb



:_

:build_war_file_for_local

set fp=* Build War file for deployment to local drive. Ikjae said that "local" is the default.

rem fcd: Jul-26-2017

echo %fp%
echo.

cd \projects\netbeans\mercury6

call mvn clean install -Plocal

goto exitb



:_

:trgm

set fp=* Trace route our new production server issue.

rem fcd: Jul-28-2017

echo %fp%

tracert smtp.gmail.com

goto exitb



:_

:traws

set fp=* Trace route to AWS smtp.

rem fcd: Jul-28-2017

echo %fp%

tracert email-smtp.us-east-1.amazonaws.com

goto exitb



:_

:trt1

set fp=* Trace route to T1.

rem fcd: Aug-1-2017

echo %fp%

tracert 52.20.54.201

goto exitb



:_

:trt2

set fp=* Trace route to T2.

rem fcd: Aug-1-2017

echo %fp%

tracert 34.227.127.100

goto exitb



:_

:trprod

set fp=* Trace route to Production.

rem fcd: Aug-1-2017

echo %fp%

tracert 34.202.193.143

goto exitb



:_

:trva

set fp=* Trace route to Virginia.

rem fud: Aug-1-2017

echo %fp%

tracert 174.129.253.68

goto exitb

  

:_

:wb

set fp=* Start MySQL Workbench.

rem fud: Aug-21-2017

echo %fp%

start "Test Title" "C:\Program Files\MySQL\MySQL Workbench 6.3 CE\MySQLWorkbench.exe"

goto exitb



:_

:ajm

set fp=* Use the app.json file used for a mobile build.

rem fcd: Aug-28-2017

echo %fp%
echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html

xcopy /y "app - for mobile build.json" "app.json"

goto exitb



:_

:s6_deleted

set fp=* Rerun these commands if Sencha folder was deleted.

rem fcd: May-3-2017

echo %fp%

call :fix_buttons

call :fix_menu

rem call :sencha_app_upgrade

goto exitb



:_

:copy_for_dev

call :delete_stale_ext_from_wildfly_dynamic_folder

set fp=* Copy fresh Ext JS into WildFly folder. This should be used only when WildFly is running because it depends on the presence of an active hex folder.

echo %fp%
echo.

title = %fp%

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\development\Mercury

goto exitb



:_+ Netconfig Family



::_

:use_default_netconfig_file

set fp=* Use the default Net.config file. Use this method building WAR files.

rem fcd: Aug-23-2017

echo %fp%
echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\batch_files\NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\batch_files\NetConfig.js"

goto exitb



::_

:use_production_netconfig_file

set fp=* Use the production Net.config file. Caution: Do not use building WAR files, only for Cordova builds.

rem fcd: Aug-23-2017

echo %fp%
echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for production.js" "NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for production.js" "NetConfig.js"

goto exitb



::_

:use_localhost_netconfig_file

set fp=* Use the Localhost Net.config file. Do not use building WAR files, only for Cordova builds.

rem fcd: Sep-13-2017

echo %fp%
echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for Localhost.js" "NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for Localhost.js" "NetConfig.js"

goto exitb



::_

:use_staging_netconfig_file

set fp=* Use the staging Net.config file. Do not use building WAR files, only for Cordova builds.

rem fcd: Aug-28-2017

echo %fp%
echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for staging.js" "NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for staging.js" "NetConfig.js"

goto exitb



::_

:ncaw

set fp=* Copy over NetConfig - for App Watch.js for both classic and modern.

rem lu: Sep-6-2017

echo %fp%
echo.

call td cutils

xcopy /y "c:\mercury\mobility\NetConfig - for Sencha App Watch.js" "NetConfig.js"

call td mutils

xcopy /y "c:\mercury\mobility\NetConfig - for Sencha App Watch.js" "NetConfig.js"

goto exitb



:_

:copy_war_for_s3

set fp=* Copy WAR file to the deployment folder.

rem lu: Oct-25-2017

echo %fp%
echo.

call td depl

cd | find /i "c:\Mercury\Server\wildfly-9.0.2.Final\standalone\deployments">nul
if %errorlevel% == 1 echo.
if %errorlevel% == 1 echo Error: Deployment folder not found.
if %errorlevel% == 1 goto exitb

rem Ensure that the path here is equal to where the WAR file was copied to on the S3 bucket.

xcopy "c:\mercury\latest war file\*.war"

goto exitb



:_

:copy_war

set fp=* Copy over the desired war file to the local deployments folder.

rem fcd: Apr-28-2017

echo %fp%
echo.

cd c:\projects\netbeans\mercury6\mercury-web\target\

echo Copy over new war file.

call :set_wildfly_location

xcopy *.war %wildfly_location%\standalone\deployments

goto exitb



:_

:depl

:deploy

:deploy_war

set fp=* Locally deploy war file.

rem FCD: Apr-7-2017

echo %fp%

call :stop_wildfly

call :scrub_deployment_environment

call :copy_war

call :start_wildfly

goto exitb



:_

:deploy_s3

set fp=* Deploy a new WAR file in the S3 environment.

rem lu: Oct-25-2017

echo %fp%

rem Start COPA?

rem Start MySQL?

rem call :stop_wildfly

rem call :scrub_deployment_environment

call :copy_war_for_s3

call :start_wildfly

goto exitb



:_

:import_preq_1

set fp=* This folder must be present for the import feature to work.

rem fcd: Apr-10-2017

echo %fp%

mcd c:\mercury

md tmp

goto exitb



:_

:scowl

set fp=* Scrub, copy the war and start WildFly.

rem lu: Oct-31-2017

echo %fp%

call :scrub

call :copy_war

call :wild

goto exitb



:_

:use_agi_license_for_staging

set fp=* Use AGI License for Staging.

rem lu: Nov-9-2017

echo %fp%
echo.

call td agi

if exist AGI.Foundation.lic del AGI.Foundation.lic

copy AGI.Foundation_User2_170915.lic AGI.Foundation.lic

call td agi_ejb

xcopy /y "c:\mercury\agi licenses\AGI.Foundation.lic"

goto exitb



:_

:use_agi_license_for_production

set fp=* Use AGI License for Production.

rem lu: Nov-9-2017

echo %fp%
echo.

call td agi

if exist AGI.Foundation.lic del AGI.Foundation.lic

copy AGI.Foundation_User1_170915.lic AGI.Foundation.lic

call td agi_ejb

xcopy /y "c:\mercury\agi licenses\AGI.Foundation.lic"

goto exitb



:_

:help

:toc

set fp=* Perform miscellaneous tasks.

rem fcd: May-13-2017

echo %fp%

echo.
echo Usage: m [single parameter]

echo.
echo     Parameter  Description
echo ---------------------------------------------------------------
echo  build_applet  Build the applet.
echo     build_ejb  Build EJB WAR file.
echo       compile  Run sencha app build testing.
echo      compilep  Run sencha app build production.
echo      copy_ext  Copy ext folder contents to the right place.
echo       del_hex  Delete WildFly Dynamic Folder.
echo          depl  Deploy a new WAR file.
echo       depl_s3  Deploy a new WAR file in the S3 envrironment.
echo            f5  Compile and refresh Ext JS code in existing hex.
echo   fix_buttons  Fix button warnings by Mike Stonkey.
echo      fix_menu  Fix menu warnings by Mike Stonkey.
echo gen_cred_proc  Run generate encrypted Maven credentials process.
echo       gen_ver  Generate new timestamp-based Mercury version #.
echo          list  List of Common Composable Batch files.
echo          mde1  Mercury Development Environment (MDE) validation.
echo          mde2  MDE prerequisites - part 2.
echo          mde3  MDE prerequisites - part 3.
echo  [your label]  [your description] [Build your own.]
echo           ppt  PowerPoint Presentation on CBF.
echo   prepare_mob  Prepare for mobile deployment.
echo        pscrub  Partially scrub deployment environment.
echo            rd  Remove directory.
echo     run_tirem  Run tirem.
echo         scrub  When deploying new War file, this prepares env.
echo    s6_deleted  Rerun these commands if sencha folder was deleted.
echo start_wildfly  Start WildFly. Refresh the environment.
echo  stop_wildfly  Stop WildFly.
echo           svc  Start Windows Services viewer.
echo  tirem_preq_1  One-time copy necessary to set up target folder.
echo  tirem_preq_2  Tirem prerequisite 2: One-time setup requirement.
echo  tirem_preq_3  Tirem prerequisite 3: One-time setup requirement.
echo    update_pub  In preparation for mobile deploy., update public.
echo   update_tags  Update tag files.
echo      wild_svc  Install WildFly as a service.
echo        wiz_lh  Run wizard that builds a WAR file for localhost.
echo        wiz_jv  Run wizard that builds only Java changes for localhost.
echo      wiz_prod  Run wizard that builds a WAR file for production.
echo      wiz_stag  Run wizard that builds a WAR file for staging.

goto exitb



:_+ Mercury Development Environment (MDE) Family



::_

:mde1

:mdev

set fp=* Verify Mercury development environment settings. Perequisites part 1.

rem lu: Nov-17-2017

echo %fp%

call td ba

echo.
                                                                   echo     Computer Name: %computername%
echo.
java -cp . Get_timestamp_for_use_as_filename>%tmp%\mercury_date_as_filename.txt
set /p date_as_filename=<%tmp%\mercury_date_as_filename.txt
                                                                   echo              Date: %date_as_filename%

echo.
set ext=no
if exist C:\projects\netbeans\sencha\HTML5Application\public_html\ext set ext=yes
if %ext%==yes                                                      echo        Ext Folder: C:\projects\netbeans\sencha\HTML5Application\public_html\ext
if %ext%==no                                                       echo        Ext Folder: [Missing]

echo.
if not "%java_home%"==""                                           echo         JAVA_HOME: %java_home%
if     "%java_home%"==""                                           echo         JAVA_HOME: [Missing]
rem For example: C:\Program Files\Java\jdk1.8.0_152

echo.
if not "%maven_home%"==""                                          echo        MAVEN_HOME: %maven_home%
if     "%maven_home%"==""                                          echo        MAVEN_HOME: [Missing]

echo.
if not "%m2%"==""                                                  echo                M2: %m2%
if     "%m2%"==""                                                  echo                M2: [Missing]

echo.
if     exist %userprofile%\.m2                                    echo         M2 Folder: %userprofile%\.m2
if not exist %userprofile%\.m2                                    echo         M2 Folder: [Missing]

echo.
if not "%m2_home%"==""                                             echo           M2_Home: %m2_home%
if     "%m2_home%"==""                                             echo           M2_Home: [Missing]

echo.
path | find /i "mysql server">nul
if %errorlevel% == 0                                               echo             MySQL: Installed
if %errorlevel% == 1                                               echo             MySQL: [Missing]

echo.
if not "%opends_java_home%"==""                                    echo  OPENDS_JAVA_HOME: %opends_java_home%
if     "%opends_java_home%"==""                                    echo  OPENDS_JAVA_HOME: [Missing]

echo.
path | find /i "sencha">nul
if %errorlevel% == 0                                               echo        Sencha Cmd: Installed
if %errorlevel% == 1                                               echo        Sencha Cmd: [Missing]

echo.
set wild=no
if exist C:\Mercury\server\wildfly-9.0.2.Final set wild=yes
if %wild%==yes                                                     echo    WildFly Folder: C:\Mercury\server\wildfly-9.0.2.Final
if %wild%==no                                                      echo    Wildfly Folder: [Missing]

goto exitb



::_

:mde1b

set fp=* Here is sample MDE report from Nestle on Nov-17-2017.

rem lu: Nov-17-2017

echo %fp%

call td ba

type "Nestle MDE report.txt"

goto exitb



::_

:mde2

set fp=* Mercury development environment settings. Prerequisites part 2.

rem lu: Nov-17-2017

echo %fp%

echo.
set /P user_option=Would you like to run Sencha App Upgrade? (y/n): 

if "%user_option%"=="y" call h au


set /P user_option=Would you like to add the the MySql security setting? (y/n): 

if "%user_option%"=="n" goto exitb

echo.
echo Search for this line: "port=3306". Then add this on the following line. 
echo.
echo bind-address=127.0.0.1
echo.
echo Then you need to reboot or restart MySQL.

call npp mysql

goto exitb



::_

:mde

:mde3

set fp=* Open MDE document. Prerequisites part 3.

rem lu: Nov-17-2017

echo %fp%

call start "my title" "Mercury Development Environment.xlsx - Shortcut.lnk"
rem call start "my title" "c:\mercury\batch_files\Mercury Development Environment.xlsx - Shortcut.lnk"

goto exitb



:_

:compile

:compile_only

:run_sencha_app_build_testing

:sabt

call :delete_stale_ext_js_from_testing_folder

set fp=* Run sencha app build testing.

rem According to what Ron said on Aug-8-2017, app build testing may be more performant than
rem app build development.

echo %fp%
echo.

title = %fp%

color 2f

cd \projects\netbeans\sencha\HTML5Application\public_html

rem cd 

sencha app build testing

if %errorlevel% == 0 echo Compile succeeded.>%temp%\compile_results.txt
if not %errorlevel% == 0 echo Compile failed.>%temp%\compile_results.txt

goto exitb



:_

:uvn

:update_the_version_number_2

set fp=* Update the version number 2.

rem lu: Dec-5-2017

echo.
echo %fp%

call npp pom_root

call npp pom_ear

call npp pom_ejb

call npp pom_web

call npp cw

call npp cwp

call npp cwt

goto exitb



:_

:vscmd

set fp=* Run Visual Studio Command prompt.

rem lu: Dec-18-2017

echo %fp%
echo.

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"

goto exitb



:_

:cltest

set fp=* Run tests on command line.

rem lu: Dec-18-2017

echo %fp%
echo.

call :vscmd

call td psc

vstest.console.exe unittestproject4.dll

col

goto exitb



:_

:loggers

set fp=* List loggers.

rem lu: Dec-18-2017

echo %fp%

vstest.console.exe /ListLoggers

goto exitb



:_

:cltestl

set fp=* Run tests on command line with an attached logger.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Logger:trx

goto exitb



:_

:run_specific_test

set fp=* Run a specific test.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:Name=AreCollectionEquivalentTest

goto exitb



:_

:run_specific_test

set fp=* Run a specific test.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:Name=AreCollectionEquivalentTest

goto exitb



:_

:run_matching_test_names

set fp=* Run matching test names.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Tests:FileName

goto exitb



:_

:run_matching_test_names_2

set fp=* Run matching test names 2.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Tests:Exist

goto exitb



:_

:run_matching_test_names_3

set fp=* Run matching test names 3, exist and lowercase are in the test name.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Tests:Exist,LowerCase

goto exitb



:_

:run_filter

set fp=* Run filtered tests.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:"Priority=1"

goto exitb



:_

:run_filter_2

set fp=* Run filtered tests.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:"TestCategory=NoException"

goto exitb



:_+ Building the Maven Dependencies Repository.



::_

:md

set fp=* How to recreate Maven dependencies.

rem lu: Jan-3-2018

echo %fp%

call td m2

rem You can rename or delete the repository folder.

call cy md

rem If necessary, run the follwoing.
rem call g clone_mdg

call m gen_cred_proc

goto exitb



::_

:gen_cred_proc

set fp=* Run the generate encrypted Maven credentials process.

rem fcd: Jul-17-2017

echo %fp%

call npp gencred_input

pause

call m gen_creds

pause

call npp gencred_output

pause

call npp settings_xml

rem On Jul-17-2017, Ikjae said to falsify this process you need to delete you repository 
rem folder, which forces reauthentication.
rem You will see this error: ReasonPhrase:Unauthorized.

pause

call m build_ejb

goto exitb



::_

:gen_creds

set fp=* Generate Bitbucket encrypted credentials and delete the certutil input file.

rem fcd: Jul-17-2017

echo %fp%
echo.

if exist %tmp%\certutil_output.txt del %tmp%\certutil_output.txt

certutil -encode %tmp%\certutil_input.txt %tmp%\certutil_output.txt

if exist %tmp%\certutil_input.txt del %tmp%\certutil_input.txt
echo.

goto exitb



:_

:update_java_timestamp

set fp=* Update timestamp.

echo %fp%
echo.

set classpath=%COMPOSABLE_BATCH_FILES%
call java Get_Timestamp_With_No_Spaces>%tmp%\java_timestamp.txt

rem cd
rem echo jt: %java_timestamp%

goto exitb



:_

:vs

set fp=* Run the solution in the current folder.

rem lu: Jan-18-2018

echo %fp%

dir /b *.sln>%tmp%\filename.txt
set /p filename=<%tmp%\filename.txt

rem echo filename: %filename%

start "%programfiles%\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe" "%filename%"

goto exitb



:_

:rd

set fp=* Remove directory %2.

rem lu: Jan-31-2018

echo %fp%

rd /q /s %2

goto exitb



:_ (!rfsp) (mov-9)