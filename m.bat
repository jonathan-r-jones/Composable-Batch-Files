:_

@echo off



:_

set filep=* Perform miscellaneous tasks.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: Perform miscellaneous tasks.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: m [single parameter]

echo.
echo Parameter 1: Function to execute.

echo.
echo Usage Note: Do not make internal calls to a composite function because 
echo that could cause a circular reference.

echo.
echo          Parameter  Description
echo ------------------  -------------------------------------------------------------------
echo       build_applet  Build the applet.
echo          build_ejb  Build EJB WAR file.
echo            compile  Run sencha app build testing.
echo           compilep  Run sencha app build production.
echo           copy_ext  Copy ext folder contents to the right place.
echo       double_click  Perform command-line equivalent of a double click.
echo            del_hex  Delete WildFly Dynamic Folder.
echo               depl  Deploy a new WAR file.
echo            depl_s3  Deploy a new WAR file in the S3 envrironment.
echo               el_c  Error level - clear.
echo              el_cs  Error level - clear silently.
echo               el_g  Error level - get.
echo               el_s  Error level - set.
echo                env  List CBF environment variables.
echo               exit  Exit batch file.
echo              exitp  Exit batch file with pause.
echo                 f5  Compile and refresh Ext JS code in existing hex.
echo file_type_presence  Check the current folder for the presence of a particlar file type.
echo        fix_buttons  Fix button warnings by Mike Stonkey.
echo           fix_menu  Fix menu warnings by Mike Stonkey.
echo      gen_cred_proc  Run generate encrypted Maven credentials process.
echo            gen_ver  Generate new timestamp-based Mercury version #.
echo               mde1  Mercury Development Environment (MDE) validation.
echo               mde2  MDE prerequisites - part 2.
echo               mde3  MDE prerequisites - part 3.
echo       [your label]  [your description] [Build your own.]
echo                  p  Push all desired repos.
echo                 pl  Pull all desired repos.
echo                ppt  PowerPoint Presentation on CBF.
echo        prepare_mob  Prepare for mobile deployment.
echo             pscrub  Partially scrub deployment environment.
echo                 rd  Remove folder at current location.
echo              reset  Reset CBF environment variables.
echo          run_tirem  Run tirem.
echo                sde  Set default text editor.
echo              scrub  When deploying new War file, this prepares env.
echo      set_parent_fd  Set parent folder.
echo         s6_deleted  Rerun these commands if sencha folder was deleted.
echo      start_wildfly  Start WildFly. Refresh the environment.
echo       stop_wildfly  Stop WildFly.
echo                svc  Start Windows Services viewer.
echo       tirem_preq_1  One-time copy necessary to set up target folder.
echo       tirem_preq_2  Tirem prerequisite 2: One-time setup requirement.
echo       tirem_preq_3  Tirem prerequisite 3: One-time setup requirement.
echo         update_pub  In preparation for mobile deploy., update public.
echo        update_tags  Update tag files.
echo           wild_svc  Install WildFly as a service.
echo             wiz_lh  Run wizard that builds a WAR file for localhost.
echo             wiz_jv  Run wizard that builds only Java changes for localhost.
echo           wiz_prod  Run wizard that builds a WAR file for production.
echo           wiz_stag  Run wizard that builds a WAR file for staging.

exit/b



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



::_

rem ******* End Exit Functions.



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

exit/b



:_

:delete_stale_ext_js_from_testing_folder

set fp=* Delete stale Ext JS from the testing folder.

echo %fp%
echo.

if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury echo Testing folder's not there.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury exit/b

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

exit/b



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

exit/b



:_

:htwar

set fp=* How to Build a War File Document

rem fcd: Feb-17-2017

echo %fp%

cd \mercury\batch_files

cls

type "How to Build a War File.txt"

exit/b



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

exit/b



:_

:rename_for_production_war

set fp=* Rename index to Mercury. Mike Stonkey said we needed to do this.

rem fcd: Mar-7-2017

echo %fp%

cd \projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

if exist index.html ren index.html mercury.html
if not exist index.html Echo index.html does not exist.

exit/b



:_

:rename_for_debug_war

set fp=* Rename index to Mercury.

rem fcd: Apr-5-2017

echo %fp%

cd \projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

if exist index.html ren index.html mercury.html
if not exist index.html Echo index.html does not exist.

exit/b



:_

:delete_target

:delete_target_folder

set fp=* Delete target folder so that you know you have a fresh war file.

rem fcd: Apr-4-2017

echo %fp%

cd C:\projects\netbeans\mercury6\Mercury-web

rd /q /s target

exit/b



:_

:copy_for_production

set fp=* Copy fresh Ext JS into WildFly folder.

echo %fp%
echo.

cd \projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

exit/b



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

exit/b



:_

Metadata: Track Size (!tsm)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Jan-1-2019   3,870     67,129      166

:Jun-13-2018   3,287     61,665      136

: Feb-9-2018   2,944     57,139      120

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
if not exist %wildfly_location%\standalone\tmp\vfs\temp exit/b
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

exit/b



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

exit/b



:_

:tirem_preq_2

:tirem_prereq_2

set fp=* This is one-time copy that needs to be made in order to properly prepare the target folder prior to tirem running.

rem fcd: Apr-10-2017

echo %fp%
echo.

cd c:\mercury\tirem

xcopy /d /h /r /s /y "c:\projects\netbeans\mercury6\mercury-tirem"

exit/b



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

exit/b



:_

:copy_stand

set fp=* Copy standalone.xml to j1 and j2.

rem fcd: Apr-10-2017

echo %fp%
echo.

cd c:\mercury\batch_files

xcopy /y "standalone (from Virginia).xml" c:\a\j1.txt
xcopy /y "standalone (from NES-1KKHHC2).xml" c:\a\j2.txt

exit/b



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

exit/b



:_

:use_old_debug_jnlp_file

:use_testing_jnlp_file

set fp=* Use the debug JNLP file.

rem fcd: Apr-13-2017

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /r /y MercuryRequestApplet.jp.jnlp MercuryRequestApplet.jnlp

exit/b



:_

:use_debug_jnlp_file

:use_testing_jnlp_file

set fp=* Use the debug JNLP file.

rem fcd: Apr-13-2017

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /r /y MercuryRequestApplet.proto.jnlp MercuryRequestApplet.jnlp

exit/b



:_

:use_production_jnlp_file

set fp=* Use the production JNLP file.
echo.

rem fcd: Apr-13-2017

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /y MercuryRequestApplet.va.jnlp MercuryRequestApplet.jnlp

exit/b



:_

:delete_stale_ext_js_from_production_folder

set fp=* Delete stale Ext JS from the production folder.

echo %fp%
echo.

if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury echo Production folder's not there.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury echo.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury exit/b

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

exit/b



:_

:copy_for_debug

set fp=* Copy fresh Ext JS for use in building a debuggable War file.

echo %fp%
echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

exit/b



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

exit/b



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

exit/b



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
if not "%user_option%"=="y" exit/b

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
if not exist *.war exit/b

if exist C:\projects\netbeans\mercury6\Mercury-web\target call of targ

if "%is_hosted_on_server%" == "true" exit/b

rem echo.
rem set /P user_option=Would you like to run scowl? (y/n): 
rem echo.

rem if "%user_option%"=="y" call :scowl
call :scowl

exit/b



:_

:stop_wildfly

set fp=* Stop WildFly.

rem fcd: Apr-28-2017

echo %fp%
echo.

taskkill /f /fi "windowtitle eq wildfly"

rem I don't know why I need to call this twice, but it doesn't work if I don't.
taskkill /f /fi "windowtitle eq wildfly"

exit/b



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

exit/b



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

exit/b



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

exit/b



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

exit/b



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

exit/b



:_

:christen_development_war_file

set fp=* Christen development war file.

rem fcd: May-3-2017

echo %fp%

cd C:\projects\netbeans\mercury6\Mercury-web\target

set /p mercury_version_number=<%tmp%\mercury_version_number.txt

ren *.war "Mercury Development - %mercury_version_number%.war"

exit/b



:_+ Initizialization Family



::_

:initialize_environment_router

set fp=* Initialize environment router.

rem lu: Feb-1-2019

echo %computername% | find /i "lipt">nul

if %errorlevel% == 0 (
   echo.
   echo * Computer name contains "lipt".
   call %0 initialize_big_environment
   exit/b
)

call %0 initialize_environment

exit/b



::_

:initialize_environment

:in_env

:ise

set fp=* Initialize environment. The idea is to create a pit of success for the user.

rem fcd: Dec-13-2018

echo.
echo %fp%

rem Add a system environment variable for %composable_batch_files%.

rem Add a path entry for %composable_batch_files%.

call %0 initialize_default_browser

call %0 initialize_default_repository_folder

call %0 initialize_default_text_editor

call %0 set_white_list_settings_1

cls

exit/b



::_

:big

:ibe

:ige

:initialize_big_environment

set fp=* Initialize GFE environment.

rem lu: Dec-4-2018

echo.
echo %fp%

call %0 initialize_environment

call %0 set_big_path

call %0 set_default_browser kr

set composable_batch_files=C:\Users\JJones2\j\Composable-Batch-Files

set JAVA_TOOL_OPTIONS=

set JRE_HOME=C:\Program Files (x86)\Java\jre1.8.0_192

set cbf_default_repository_folder=%userprofile%\j

set share-zone=%userprofile%\j\share-zone

set path=%path%;%share-zone%

set machinename=gfe

set aa=c:\aa

title=Big Laptop

cls

exit/b



::_

:set_white_list_settings_1

if /i "%computername%" == "asus" goto set_white_list_settings_2
if /i "%computername%" == "buzz" goto set_white_list_settings_2
if /i "%computername%" == "xps" goto set_white_list_settings_2

exit/b



::_

:set_white_list_settings_2

set share-zone=%dropbox%\it\share-zone
set path=%savannah%\belfry;%path%

exit/b



::_

:initialize_default_browser

set fp=* Initialize default browser.

rem lu: Nov-2-2018

echo.
echo %fp%

if /i "%computername%" == "asus" call m set_default_browser kr
if /i "%computername%" == "buzz" call m set_default_browser kr
if /i "%computername%" == "xps" call m set_default_browser kr
if "%cbf_default_browser%" == "" call m set_default_browser ie

exit/b



::_

:initialize_default_repository_folder

set fp=* Initialize default repository folder.

rem lu: Nov-2-2018

echo.
echo %fp%

call %0 set_default_repository_folder c_aa_repos
if /i "%computername%" == "asus" call %0 set_default_repository_folder c_aa_repos
if /i "%computername%" == "buzz" call %0 set_default_repository_folder c_aa_repos
if /i "%computername%" == "xps" call %0 set_default_repository_folder d_aa_repos
rem if "%cbf_default_repository_folder%" == "" call %0 set_default_repository_folder temp

exit/b



::_

:initialize_default_text_editor

set fp=* Initialize default text editor.

rem lu: Nov-2-2018

echo.
echo %fp%

if /i "%computername%" == "asus" call m set_default_text_editor no
if /i "%computername%" == "xps" call m set_default_text_editor np
if "%cbf_default_text_editor%" == "" call m set_default_text_editor no

exit/b



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

exit/b



:_

:set_server_path

set fp=* Set server path.

rem Function Creation Date: May-8-2017

echo %fp%

rem set path=C:\Program Files\MySQL\MySQL Server 5.7\bin;%path%
rem set path=C:\Program Files\MySQL\MySQL Utilities 1.6;%path%
rem set path=c:\mercury\batch_files;%path%

exit/b



:_

:wild_svc

set fp=* Install WildFly as a service.

rem fcd: May-10-2017

echo %fp%

call :set_wildfly_location

cd %wildfly_location%\bin\service

service.bat install

exit/b



:_

:svc

set fp=* Start Windows Services viewer.

rem fcd: May-11-2017

echo %fp%

start c:\windows\system32\services.msc /s

exit/b



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

exit/b



:_

:ppt

:pptx

:power

set fp=* CBF Powerpoint Presentation.

rem fcd: May-19-2017

echo.
echo %fp%

call start "my title" "Composable Batch File Helper.pptx"

rem call start "my title" "Composable Batch File Helper.pptx - Shortcut.lnk"

exit/b



:_

:old_ppt

set fp=* Powerpoint Presentation on Mercury.

rem fcd: May-19-2017

rem This way of opening a PowerPoint document also works.

echo %fp%

cd c:\mercury\batch_files

call start "my title" "Mercury Helper.pptx"

exit/b



:_

:set_wildfly_location

set fp=* Set WildFly location.

rem fcd: May-22-2017

echo %fp%

set wildfly_location=c:\mercury\server\wildfly-9.0.2.final

rem WIN-NRFUV3XWUWI is Japan.
rem if /i %computername%==WIN-NRFUV3XWUWI set wildfly_location=c:\mercury\server\wildfly-9.0.1.final

exit/b



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

exit/b



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

exit/b



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

exit/b



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

exit/b



:_

:testsql

set fp=* Test MySqlRemote

rem fcd: Jun-26-2017

echo %fp%

rem mysql -uroot -p -h 52.20.54.201
rem mysql -uroot -p -h 52.200.230.253
rem mysql -uroot -p -h 174.129.253.68:21624
mysql -uroot -p -h 174.129.253.68

exit/b



:_

:update_pub

set fp=* In preparation for a mobile deployment, update Public HTML folder.

rem fcd: Jul-3-2017

echo %fp%
echo.

cd C:\Users\jonathan.r.jones\Documents\DropBox\nes\macintosh\public_html

xcopy /d /h /r /s /y C:\projects\netbeans\sencha\HTML5Application\public_html

exit/b



:_

:trgm

set fp=* Trace route our new production server issue.

rem fcd: Jul-28-2017

echo %fp%

tracert smtp.gmail.com

exit/b



:_

:traws

set fp=* Trace route to AWS smtp.

rem fcd: Jul-28-2017

echo %fp%

tracert email-smtp.us-east-1.amazonaws.com

exit/b



:_

:trt1

set fp=* Trace route to T1.

rem fcd: Aug-1-2017

echo %fp%

tracert 52.20.54.201

exit/b



:_

:trt2

set fp=* Trace route to T2.

rem fcd: Aug-1-2017

echo %fp%

tracert 34.227.127.100

exit/b



:_

:trprod

set fp=* Trace route to Production.

rem fcd: Aug-1-2017

echo %fp%

tracert 34.202.193.143

exit/b



:_

:trva

set fp=* Trace route to Virginia.

rem fud: Aug-1-2017

echo %fp%

tracert 174.129.253.68

exit/b

  

:_

:wb

set fp=* Start MySQL Workbench.

rem fud: Aug-21-2017

echo %fp%

start "Test Title" "C:\Program Files\MySQL\MySQL Workbench 6.3 CE\MySQLWorkbench.exe"

exit/b



:_

:ajm

set fp=* Use the app.json file used for a mobile build.

rem fcd: Aug-28-2017

echo %fp%
echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html

xcopy /y "app - for mobile build.json" "app.json"

exit/b



:_

:s6_deleted

set fp=* Rerun these commands if Sencha folder was deleted.

rem fcd: May-3-2017

echo %fp%

call :fix_buttons

call :fix_menu

rem call :sencha_app_upgrade

exit/b



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

exit/b



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

exit/b



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

exit/b



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

exit/b



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

exit/b



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

exit/b



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
if %errorlevel% == 1 exit/b

rem Ensure that the path here is equal to where the WAR file was copied to on the S3 bucket.

xcopy "c:\mercury\latest war file\*.war"

exit/b



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

exit/b



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

exit/b



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

exit/b



:_

:import_preq_1

set fp=* This folder must be present for the import feature to work.

rem fcd: Apr-10-2017

echo %fp%

mcd c:\mercury

md tmp

exit/b



:_

:scowl

set fp=* Scrub, copy the war and start WildFly.

rem lu: Oct-31-2017

echo %fp%

call :scrub

call :copy_war

call :wild

exit/b



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

exit/b



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

exit/b



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

exit/b



::_

:mde1b

set fp=* Here is sample MDE report from Nestle on Nov-17-2017.

rem lu: Nov-17-2017

echo %fp%

call td ba

type "Nestle MDE report.txt"

exit/b



::_

:mde2

set fp=* Mercury development environment settings. Prerequisites part 2.

rem lu: Nov-17-2017

echo %fp%

echo.
set /P user_option=Would you like to run Sencha App Upgrade? (y/n): 

if "%user_option%"=="y" call h au


set /P user_option=Would you like to add the the MySql security setting? (y/n): 

if "%user_option%"=="n" exit/b

echo.
echo Search for this line: "port=3306". Then add this on the following line. 
echo.
echo bind-address=127.0.0.1
echo.
echo Then you need to reboot or restart MySQL.

call np mysql

exit/b



::_

:mde

:mde3

set fp=* Open MDE document. Prerequisites part 3.

rem lu: Nov-17-2017

echo %fp%

call start "my title" "Mercury Development Environment.xlsx - Shortcut.lnk"
rem call start "my title" "c:\mercury\batch_files\Mercury Development Environment.xlsx - Shortcut.lnk"

exit/b



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

exit/b



:_

:uvn

:update_the_version_number_2

set fp=* Update the version number 2.

rem lu: Dec-5-2017

echo.
echo %fp%

call np pom_root

call np pom_ear

call np pom_ejb

call np pom_web

call np cw

call np cwp

call np cwt

exit/b



:_

:vscmd

set fp=* Run Visual Studio Command prompt.

rem lu: Dec-18-2017

echo %fp%
echo.

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"

exit/b



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

exit/b



:_

:loggers

set fp=* List loggers.

rem lu: Dec-18-2017

echo %fp%

vstest.console.exe /ListLoggers

exit/b



:_

:cltestl

set fp=* Run tests on command line with an attached logger.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Logger:trx

exit/b



:_

:run_specific_test

set fp=* Run a specific test.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:Name=AreCollectionEquivalentTest

exit/b



:_

:run_specific_test

set fp=* Run a specific test.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:Name=AreCollectionEquivalentTest

exit/b



:_

:run_matching_test_names

set fp=* Run matching test names.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Tests:FileName

exit/b



:_

:run_matching_test_names_2

set fp=* Run matching test names 2.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Tests:Exist

exit/b



:_

:run_matching_test_names_3

set fp=* Run matching test names 3, exist and lowercase are in the test name.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Tests:Exist,LowerCase

exit/b



:_

:run_filter

set fp=* Run filtered tests.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:"Priority=1"

exit/b



:_

:run_filter_2

set fp=* Run filtered tests.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:"TestCategory=NoException"

exit/b



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

exit/b



::_

:gen_cred_proc

set fp=* Run the generate encrypted Maven credentials process.

rem fcd: Jul-17-2017

echo %fp%

call np gencred_input

pause

call m gen_creds

pause

call np gencred_output

pause

call np settings_xml

rem On Jul-17-2017, Ikjae said to falsify this process you need to delete you repository 
rem folder, which forces reauthentication.
rem You will see this error: ReasonPhrase:Unauthorized.

pause

call m build_ejb

exit/b



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

exit/b



:_

:update_java_timestamp

set fp=* Update Java timestamp.

echo.
echo %fp%

set classpath=%COMPOSABLE_BATCH_FILES%
call java Get_Timestamp_With_No_Spaces>%tmp%\java_timestamp.txt

exit/b



:_+ NPM



::_

:npm

set fp=* NPM install command for Windows.

rem lu: Mar-1-2018

echo %fp%
echo.

npm install -g %2

rem Examples:
rem npm install -g cordova
rem npm install -g ionic
rem npm install -g jspm
rem npm install -g taco-cli
rem npm install -g typings

rem The equivalent command for Mac would be: sudo npm -install -g %2

exit/b



::_

:npmh

set fp=* NPM install command for Sencha on Windows.

rem lu: Mar-1-2018

echo %fp%
echo.

npm install -g sencha

exit/b



::_

:npmc

set fp=* NPM install command for Sencha on Windows.

rem lu: Mar-1-2018

echo.
echo %fp%

npm install -g sencha-cmd

exit/b



:_

:publish

set fp=* The steps to publish a new version.

rem lu: Apr-25-2018

echo %fp%

echo.
echo Update the NPM version number.
call nm patch

echo.
echo Tag the release in git with same version number you just used in NPM, thus linking the two.
call g tag %2

echo.
echo Check in your code.
call acp cbf

echo.
echo Push your tags to Git.
call g puta

echo.
echo Publish to NPM.
call nm pub

exit/b



:_

:set_parent_fd

set fp=* Set parent folder.

rem batch file path parsing parent folder, cd.., 

rem lu: Apr-9-2018

echo %fp%

set %3=%~f2

exit/b



:_

:dc

:double_click

set fp=* Simulate a remote double click.

rem lu: Feb-1-2018

echo.
echo %fp%

rem Strangely, this also works. Feb-1-2018
rem set cbf_application="%cbf_filename% - Shortcut.lnk"

if "%cbf_filename%"=="" (
  exit/b
)

set cbf_application=%cbf_filename%

set cbf_parameter=

exit/b



:_+ CBF Variables



::_

:env_c

:reset

:reset_cbf_variables

set fp=* Reset CBF variables. (skw clear env)

echo.
echo %fp%

set cbf_application=

set cbf_application_location=

rem set cbf_default_browser=

rem set cbf_default_text_editor=

rem set cbf_default_repository_folder=

set cbf_filename=

set cbf_parameter=

set cbf_path=

set cbf_url=

env

exit/b



::_

:e

:ev

:env

:cbf

set filep=* Show the state of the CBF environment variables.

if not "%~2" == "" call n %2

cls

echo.
echo %filep%

echo.
echo Application: %cbf_application%

echo.
echo Application Location: %cbf_application_location%

echo.
echo Default Browser: %cbf_default_browser%

echo.
echo Default Text Editor: %cbf_default_text_editor%

echo.
echo Default Repository Folder: %cbf_default_repository_folder%

echo.
echo Filename: %cbf_filename%

echo.
echo Header: %cbf_header%

echo.
echo Parameter: %cbf_parameter%

echo.
echo Path: %cbf_path%

echo.
echo URL: %cbf_url%

exit/b



:_

:set_cbf_application_to_dte

set fp=* Set cbf_application.

rem lu: Jun-8-2018

echo %fp%

set cbf_application=%cbf_default_text_editor%

exit/b



:_

:open_application_without_a_parameter

set fp=* Open application without a parameter.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf_parameter=

call r

exit/b



:_

:editor_help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: Edit files in an editor.
set filep=%filep%

echo.
echo %filep%

echo.
echo Last Updated: Jun-8-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1 (Optional): Nickname of the file you wish to edit.
set parameter_1=%parameter_1% or the name of a filename in the current folder.
set parameter_1=%parameter_1% If left blank, the application is simply started.

echo.
echo %parameter_1%

exit/b



:_

:rd

set fp=* Remove directory %2.

rem lu: Jun-1-2018

echo.
echo %fp%

rd /q /s %2

exit/b



:_+ Set default environment variables.



::_

:set_default_browser

set fp=* Set default browser.

rem lu: Aug-8-2018

echo.
echo %fp%

if not "%~2" == "" call n %2

set cbf_default_browser=%cbf_application%

exit/b



::_

:set_default_repository_folder

set fp=* Set default repository folder.

rem lu: Jul-10-2018

echo.
echo %fp%

if not "%~2" == "" call n %2

set cbf_default_repository_folder=%cbf_path%

exit/b



::_

:sde

:sdte

:set_default_text_editor

set fp=* Set default text editor.

rem lu: Jun-7-2018

echo.
echo %fp%

if not "%~2" == "" call n %2

set cbf_default_text_editor=%cbf_application%

exit/b



:_

:remove_hidden_attributes

set fp=* Remove hidden attributes.

rem lu: Jul-15-2018

echo.
echo %fp%

attrib -h *.*

exit/b



:_

:ece

set fp=* Echo current errorlevel.

rem lu: Jul-16-2018

echo %fp%

echo.
echo Errorlevel: %errorlevel%

exit/b



:_+ Delete obj and bin folders.



::_

:de_bin_fr

:de_obj_fr

set fp=* Delete bin and obj folders for Fresnel.

rem lu: Jun-25-2018

echo %fp%

rem Delete obj folders.
rd /q /s .\Fresnel\obj
rd /q /s .\Fresnel.Android\obj
rd /q /s .\Fresnel.iOS\obj

rem Delete bin folders.
rd /q /s .\Fresnel\bin
rd /q /s .\Fresnel.Android\bin
rd /q /s .\Fresnel.iOS\bin

exit/b



::_

:de_obj

:de_bin

set fp=* Delete bin and obj folders.

rem lu: Jul-5-2018

echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2 cannot be nothing.
  exit/b
)

rem Delete obj folders.
rd /q /s .\%2\obj
rd /q /s .\%2.Android\obj
if exist %2.iOS\obj rd /q /s .\%2.iOS\obj

rem Delete bin folders.
rd /q /s .\%2\bin
rd /q /s .\%2.Android\bin
rd /q /s .\%2.iOS\bin

exit/b



:_

:compose

set fp=* Composer function that demos aggregation of calls that can be run separately.

rem lu: Aug-13-2018

echo.
echo %fp%

call td foo

call of foo

call sf ttdc

call no gett

exit/b



:_

:bufr

:frbu

set fp=* Perform a fresnel dated backup.

rem lu: Aug-16-2018

echo.
echo %fp%

Get_JDate>%tmp%\JDate.txt
set /p JDate=<%tmp%\JDate.txt
set Current_JDate=Fresnel %JDate%

call td bufr

if /i not exist "%Current_JDate%" md "%Current_JDate%"

cd /d %Current_JDate%

call cn fr c



:_

:folder_is_empty

set fp=* Empty folder check.

rem lu: Sep-2-2018

set folder_to_check=%2

echo.
echo * Folder to check for emptiness: %folder_to_check%

echo.
for /f %%i in ('dir /b %folder_to_check%\*.*') do (
   rem echo * Folder is not empty.
   exit/b 0
)

echo * Folder is empty.

exit/b 1



:_

:nsl

set fp=* Nslookup IPV4 versus IPV6.

rem lu: Oct-3-2018

echo.
echo %fp%
echo.

nslookup nytimes.com

nslookup cnn.com

nslookup washingtonpost.com

rem Eric said that I need to find the setting that allows me to set my IP Adress to IPV4.
rem We had this problem in Stuttgart on Oct-3-2018.

exit/b



:_+ Error Level



::_

:el_c

:ce

:clear_el

:clear_errorlevel

set fp=* Clear ErrorLevel.

rem lu: Aug-3-2018

echo.
echo %fp%

echo.
echo * Current ErrorLevel: %errorlevel%

ver>nul

echo.
echo * New ErrorLevel: %errorlevel%

exit/b



::_

:el_cs

:clear_errorlevel_silently

set fp=* Clear/reset errorLevel silently.

rem lu: Aug-7-2018

ver>nul

exit/b



::_

:el_g

:ge

:get_el

set fp=* Get ErrorLevel.

rem lu: Aug-3-2018

echo.
echo %fp%

echo.
echo * ErrorLevel: %errorlevel%

exit/b



::_

:el_s

:se

:set_el

set fp=* Set ErrorLevel.

rem lu: Aug-3-2018

echo.
echo %fp%

echo.
echo * Current ErrorLevel: %errorlevel%
echo.

rem call td %~1 %2

rem The following line sets the errorlevel to 9009.
xxx

echo.
echo * New ErrorLevel: %errorlevel%

exit/b



:_

:sp

:sgp

:set_big_path

set fp=* Set big laptop path.

rem lu: Dec-4-2018

echo.
echo %fp%

set path=%path%;C:\Users\JJones2\j\Composable-Batch-Files

call n jre

set path=%path%;%cbf_path%

exit/b



:_

:svc

set fp=* Windows services.

rem lu: Dec-4-2018

echo.
echo %fp%

start c:\windows\system32\services.msc /s

exit/b



:_

:u2d

set fp=* Unix to DOS.

rem lu: Dec-6-2018

echo.
echo %fp%

echo.
%localappdata%\Programs\Git\usr\bin\unix2dos ca-bundle.crt

exit/b



:_ + File Presence



::_

:file_type_presence

set fp=* Check the current folder for the presence of a particlar file type.

rem lu: Nov-19-2018

echo.
echo * A "%2" file(s^) must be present in the current folder.

echo.

if not exist *.%2 (
  echo * Error: No "%2" file(s^) exist in the current folder.
  exit/b 1
) else (
  echo * Found "%2" file(s^).
)

exit/b 0



::_

:specific_file_presence

set fp=* Check the current folder for the presence of a particlar file type.

rem lu: Nov-19-2018

echo.
echo * The file "%2" must be present in the current folder.

echo.

if not exist %2 (
  echo * Error: The file "%2" does NOT exist in the current folder.
  exit/b 1
) else (
  echo * Found file "%2".
)

exit/b 0



:_+ Batch Pull and Push



::_

:pl

set fp=* Pull all desired repos.

rem lu: Dec-7-2018

echo.
echo %fp%

call pl cbf

call pl s

if "%machinename%"=="gfe" call cyft mecfg_s mecfg

if "%machinename%"=="gfe" cd\

exit/b



:_+ DOS Colors



::_

:dosc_blongo

set fp=* Change dos window color to: black on gold

rem lu: Dec-13-2018

echo.
echo %fp%

color 60

exit/b



::_

:dos_color_yeonbl

set fp=* Change dos window color to: yellow on black

rem lu: Dec-13-2018

echo.
echo %fp%

color 0e

exit/b



:_

:apf

:associate_cbf_parameter_to_cbf_filename

set fp=* Associate cbf_parameter to cbf_filename.

rem lu: Dec-19-2018

echo.
echo %fp%

set cbf_parameter=%cbf_filename%

exit/b



:_

:cart

set fp=* Count lines of code in Cart.

rem lu: Oct-17-2018

echo.
echo %fp%

del %temp%\j1.txt

rem call td cart

rem call cy copy_cart_cs_files_to_a_temp_folder

cd /d %temp%\cart_cs

for /r %%j in (*.cs) do type "%%j">>"%temp%\j1.txt"

call me j1

exit/b



:_

:de_mecfg

set fp=* Delete conflicted copies in Multi-Edit folders.

rem lu: Jan-2-2019

echo.
echo %fp%

call td mecfg

call de mecfg

call td mecfg_s

call de mecfg

call td mecfg_dr

call de mecfg

exit/b



:_

:jf

:jfs

set fp=* Open Jenkinsfiles.

rem lu: Jan-10-2019

echo.
echo %fp%

rem jj_devops
call me jj

rem dev
rem call me jf

call me iac

call me jf_acr

call me jf_bgs

call me jf_cap

call me jf_odls

exit/b



:_

:expand_to_path_only

set fp=* Expand to path only.

rem lu: Mar-14-2018

echo.
echo %fp%

set cbf_path=%~p2

exit/b



:_

:cosy

set fp=* Compose synchronization.

rem lu: Jan-23-2019

echo.
echo %fp%

call col sailboat

call %0 initialize_environment

call 8

exit



:_+ Multi-Edit Packs



::_

:aff

:inot

set fp=* Open affinity files.

rem lu: Jan-9-2019

echo.
echo %fp%

start Mew32.exe "%reach out%\WK.asc" "%reach out%\cc.asc" "%reach out%\CM.asc" "%reach out%\IT.asc" "%reach out%\DI.asc" "%reach out%\JD.asc" "%reach out%\CH.asc" "%reach out%\RB.asc" "%reach out%\TJ.asc" "%reach out%\CI.asc" "%reach out%\TR.asc" "%savannah%\reach out\OC.asc"

exit/b



::_

:affc

set fp=* Open affinity files and close the DOS windows.

rem lu: Jan-23-2019

echo.
echo %fp%

start Mew32.exe "%reach out%\WK.asc" "%reach out%\cc.asc" "%reach out%\CM.asc" "%reach out%\IT.asc" "%reach out%\DI.asc" "%reach out%\JD.asc" "%reach out%\CH.asc" "%reach out%\RB.asc" "%reach out%\TJ.asc" "%reach out%\CI.asc" "%reach out%\TR.asc" "%savannah%\reach out\OC.asc"

exit



::_

:g

:gfe

set fp=* Open gfe "waiting" files.

rem lu: Dec-13-2018

echo.
echo %fp%

call fn gfe

set first_filename=%cbf_filename%

call fn cc

set second_filename=%cbf_filename%

start mew32 "%first_filename%" "%second_filename%"

rem call me gfe

rem pause

rem call me cc

exit/b



::_

:a

set fp=* Open Affinity files router.

rem lu: Jan-24-2019

echo %computername% | find /i "lipt">nul

if %errorlevel% == 0 (
   echo.
   echo * Computer name contains "lipt".
   call %0 g
   exit/b
)

call %0 aff

exit/b



::_

:ac

set fp=* Open Affinity files router and close shell window.

rem lu: Feb-1-2019

call %0 a

exit



:_

:demo

set fp=* Demo on Jan-29-2019.

rem lu: Jan-29-2019

echo.
echo %fp%

rem Jenkins 2 is a place for ERO Pipelines.

call sf je2r

echo.
pause

rem Jenkins 2 automatically pulls the latest Jenkinsfile from GitHub.
rem Launchtime timestamp confirmation of changes.
call np jj

echo.
pause

call sf nexu

rem The plan is to have these war files hosted in the upcoming development environment.

exit/b



:_

:jump

set fp=* Jump.

rem lu: Feb-1-2019

echo.
echo %fp%

echo.
echo * How high? Feb-1-2019 1:04 AM

exit/b



:_

:set_feta

set fp=* Set cbf_filename equal to cbf_application.

rem lu: Feb-4-2019

echo.
echo %fp%

set cbf_filename=%cbf_application%

exit/b



:_

:sh

set fp=* Shutdown the computer.

rem lu: Feb-5-2019

echo.
echo %fp%

shutdown /s

exit/b



:_

:lu

:ulul

set fp=* Update the last_updated_log.txt.

rem lu: Feb-8-2019

echo.
echo %fp%

rem echo 9.
date /t>%temp%\date_9.txt
set /p date_9=<%temp%\date_9.txt
rem echo %date_9%

rem echo 10.
time /t>%temp%\time_10.txt
set /p time_10=<%temp%\time_10.txt
rem echo %time_10%

set combined_12=%2 - %computername% - %date_9%%time_10%
echo.>>%share-zone%\last_updated_log.txt
echo %combined_12%>>%share-zone%\last_updated_log.txt

exit/b



:_+ Angular



::_

:ng

set fp=* Start Angular.

rem lu: Feb-11-2019

echo.
echo %fp%

echo.
ng serve

exit/b



::_

:port

set fp=* Run the Admin Portal on localhost.

rem lu: Feb-11-2019

echo.
echo %fp%

call lh port

call td port

echo.
ng serve

exit/b



:_ (!efm, !rfsp) (mov-6)