:_ (!mtest, !m)

@echo off



:_

set filep=* Perform miscellaneous tasks using a function routing style.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo Usage: m [single parameter]

echo.
echo Parameter 1: Function to execute.

echo.
echo Batch File Style: Function routing.

echo.
echo Usage Note: Do not make internal call to an atomic function because that could cause a 
echo circular reference.

echo.
echo          Parameter  Description
echo ------------------  -------------------------------------------------------------------
echo       build_applet  Build the applet.
echo          build_ejb  Build EJB WAR file.
echo            compile  Run sencha app build testing.
echo           compilep  Run sencha app build production.
echo           copy_ext  Copy ext folder contents to the right place.
echo                ctf  Create timestamped file.
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
echo        start_timer  Sets the start time of a script.
echo         stop_timer  Reports the length of the script run time.
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
if not exist *.war echo * Error: WAR file has NOT been created!
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

:lnk_cbf

set fp=* Initialize CBF environment.

title=CBF

call %0 big

call td a

cls

exit/b



::_

:lnk_right

title=Right Justified CBF

call %0 big

call td a

cls

exit/b



::_

:lnk_chef

title=Chef

set homedrive=c:

set homepath=\Users\JJones2

call %0 big

call td a

cls

exit/b



::_

:lnk_linux

title=Linux

call %0 big

call td a

cls

exit/b



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

call %0 set_default_text_editor sm

set aa=c:\aa
set cbf-repo=C:\Users\JJones2\j
set composable_batch_files=C:\Users\JJones2\j\Composable-Batch-Files
set JAVA_TOOL_OPTIONS=
set KITCHEN_YAML=.kitchen-aws.yml
set machinename=gfe

call ni full_pem
set SSH_KEY_PATH=%cbf-full-pem%

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
if /i "%computername%" == "earl" call m set_default_browser kr
if /i "%computername%" == "sp7" call m set_default_browser kr
if /i "%computername%" == "xps" call m set_default_browser kr
if "%cbf-default-browser%" == "" call m set_default_browser ie

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
if /i "%computername%" == "earl" call %0 set_default_repository_folder c_aa_repos
if /i "%computername%" == "sp7" call %0 set_default_repository_folder c_aa_repos
if /i "%computername%" == "xps" call %0 set_default_repository_folder d_aa_repos
rem if "%cbf-repo%" == "" call %0 set_default_repository_folder temp

exit/b



::_

:initialize_default_text_editor

set fp=* Initialize default text editor.

rem lu: Nov-2-2018

echo.
echo %fp%

if /i "%computername%" == "asus" call m set_default_text_editor no
if /i "%computername%" == "sp7" call m set_default_text_editor np
if /i "%computername%" == "xps" call m set_default_text_editor np
if "%cbf-default-text-editor%" == "" call m set_default_text_editor no

exit/b



:_

:set_server_title

set fp=* Set server title.

rem echo.
rem echo %fp%

title = Composable Batch Files Helper



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
if %errorlevel% == 1 echo * Error: Deployment folder not found.
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


set /P user_option=Would you like to add the MySql security setting? (y/n): 

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

:loggers

set fp=* List loggers.

rem lu: Dec-18-2017

echo %fp%

vstest.console.exe /ListLoggers

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

call cp.bat md

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

:set_cbf-application_equal_to_cbf-fn

set fp=* Simulate a remote double click. Deprecated. Going forward, use dc.bat. **************

rem lu: Feb-1-2018

rem echo.
rem echo %fp%

rem Strangely, this also works. Feb-1-2018
rem set cbf-application="%cbf-fn% - Shortcut.lnk"

if "%cbf-fn%"=="" (
  exit/b
)

set cbf-application=%cbf-fn%

set cbf-parameter=

exit/b



:_+ CBF Variables



::_

:cev

:clea

:clear

:env_c

:r

:rcv

:res

:rese

:reset

:reset_cbf-variables

set fp=* Reset CBF variables. Deprecated: Going forward, please use cv.bat.

rem skw clear environment variables, clear_cbf-variables

rem echo.
rem echo %fp%

set cbf-appended_words=

set cbf-application=

set cbf-back=

set cbf-clone-url=

set cbf-cf=

rem set cbf-default-browser=

rem set cbf-default-text-editor=

set cbf-wo=

set cbf-expanded-variable=

set cbf-ex=

set cbf-fc_path=

set cbf-fn=

set cbf-gh=

set cbf-host=

set cbf-instance-id=

set cbf-ip=

set cbf-java=

set cbf-jf=

set cbf-je=

set cbf-jpg=

set cbf-parameter=

set cbf-pt=

set cbf-pem=

set cbf-png=

rem When this is uncommented, it causes issues. Dec-20-2019
rem set cbf-repo=

set cbf-url=

set cbf-xml=

exit/b



:_

:set_cbf-application_to_dte

set fp=* Set cbf-application.

rem lu: Jun-8-2018

echo %fp%

set cbf-application=%cbf-default-text-editor%

exit/b



:_

:open_application_without_a_parameter

set fp=* Open application without a parameter.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf-parameter=

call r

exit/b



:_

:editor_help

echo.
echo %filep%

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

set cbf-default-browser=%cbf-application%

exit/b



::_

:set_specific_browser

set fp=* Set specific browser.

rem lu: Mar-4-2019

echo.
echo %fp%

if "%~2" == "" set cbf-specific_browser=
if "%~2" == "" exit/b

call an %2

set cbf-specific_browser=%cbf-application%

exit/b



::_

:set_default_repository_folder

set fp=* Set default repository folder.

rem lu: Jul-10-2018

echo.
echo %fp%

if not "%~2" == "" call n %2

set cbf-repo=%cbf-pt%

exit/b



::_

:sde

:sdte

:set_default_text_editor

set fp=* Set default text editor.

rem lu: Jun-7-2018

echo.
echo %fp%

if "%~2" == "" (
  echo. Error: You must supply the alias of the text editor you wish to set as default.
  exit/b
)

call n %2

set cbf-default-text-editor=%cbf-application%

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
echo * Errorlevel: %errorlevel%

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



:_+ Error Level



::_

:el_c

:cler

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



::_ (!clea) (skw clear_error_level)

:el_cs

:clear_errorlevel_silently

rem set fp=* Clear/reset errorLevel silently.

rem reset_errorlevel: skw

rem lu: Nov-12-2019

ver>nul

rem set errorlevel=0

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

set path=%path%;%cbf-pt%

set share-zone=C:\Users\JJones2\j\share-zone

set path=%path%;%share-zone%

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



:_+ DOS Colors



::_

:colo

:color

set fp=* Clear color setting.

echo %fp%

color

exit/b



::_

:clco

:clear_color_setting

set fp=* Clear color setting and clear screen.

echo %fp%

color

cls

exit/b



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

:cart_count

set fp=* Count lines of code in Cart.

rem lu: Oct-17-2018

echo.
echo %fp%

del %temp%\j1.txt

rem call td cart

rem call cp.bat copy_cart_cs_files_to_a_temp_folder

cd /d %temp%\cart_cs

for /r %%j in (*.cs) do type "%%j">>"%temp%\j1.txt"

call me j1

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



:_

:demo_old

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

:lu

:ulul

:update_lu

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

rem set combined_12=%2 - %computername% - %date_9%%time_10%
set combined_12=%date_9%%time_10% - %computername%
echo.>>%share-zone%\last_updated_log.txt
echo %combined_12%>>%share-zone%\last_updated_log.txt

exit/b



:_

:dh

:h

:hist

:history

set fp=* Doskey history.

rem lu: Feb-12-2019

echo.
echo %fp%

echo.
doskey /history

exit/b



:_+ Timer Script



::_

:start_timer

set fp=* Start timer.

rem lu: Feb-15-2019

echo.
echo %fp%

set starttime=%time%

exit/b



::_

:stop_timer

set fp=* Stop timer.

rem lu: Feb-15-2019

echo.
echo %fp%

set endtime=%time%

rem make t0 into a scaler in 100ths of a second 
set h=%starttime:~0,2%
set m=%starttime:~3,2%
set s=%starttime:~6,2%
set c=%starttime:~8,2%
set /a starttimescalar = %h% * 3600 + %m% * 60 + %s%

rem make t into a scaler in 100ths of a second
set h=%endtime:~0,2%
set m=%endtime:~3,2%
set s=%endtime:~6,2%
set c=%endtime:~8,2%
set /a endtimescalar = %h% * 3600 + %m% * 60 + %s%

rem Runtime in 100ths is:.
set /a runtime = %endtimescalar% - %starttimescalar%

set runtime = %s%.%c%

echo.
echo Start time: %starttime% 
echo   End time: %endtime% 
echo   Run time: %runtime%

exit/b



::_

:timer

set fp=* Call time example.

rem lu: Feb-15-2019

echo.
echo %fp%

call %0 start_timer

echo.
echo hi
pause

call %0 stop_timer

exit/b



:_

:ccm

set fp=* Compile CMAC macros.

rem lu: Feb-19-2019

echo.
echo %fp%

set macro_folder=%dropbox%\Multi-Edit_2008_Config_Files\Mac

echo Compile Aliases.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Aliases.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Shared.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Shared.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Regexes.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Regexes.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Finder.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Finder.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Format.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Format.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile ListMgr.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\ListMgr.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Clif.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Clif.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Searcher.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Searcher.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Jonathan's_Macro.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Jonathan's_Macros.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Build CMAC Macros.
set filename=%savannah%\cmac\Quickla-for-Multi-Edit\Build_CMAC_Macros.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

:This works.
rem :"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%"
rem :cmacwin.exe "%filename%" -p"%macro_folder%"
rem :"c:\program files (x86)\multi-edit 2008\cmacwin.exe"
rem :cmacwin.exe

exit/b



:_

:si

:syin

set fp=* System Information.

rem lu: Mar-4-2019

echo.
echo %fp%

systeminfo

exit/b



:_

:cart_path_only

set fp=* Is this hole cart path only? Disallow check-ins from the cart path.

rem lu: Mar-18-2019

rem echo %fp%

echo %cd% | find /i "j\cart_cookbook">nul

if %errorlevel% == 0 (
  echo.
  echo * You are on the cookbook. No problem.
  exit/b 0
)

echo %cd% | find /i "\cart">nul

if %errorlevel% == 0 (
  echo.
  echo * You are on the cart path. You've been a bad golfer.
  exit/b 1
)

exit/b 0



:_

:ag

set fp=* QuickLauncer menu for caling g.

rem lu: Apr-30-2019

echo.
echo %fp%

echo.
call %0 g

exit



:_+ Save and Restore Location



::_

:save_location

set fp=* Save location.

rem lu: Apr-24-2019

rem echo.
rem echo %fp%

set cbf-saved_location=%cd%

exit/b



::_

:restore_location

set fp=* Restore location.

rem lu: Apr-24-2019

rem echo.
rem echo %fp%

cd /d "%cbf-saved_location%"

exit/b



:_

:80

:width

set fp=* Console window width.

rem How wide is the command window?

rem lu: May-20-2019

echo.
echo %fp%

echo.
echo * The following line is 80 characters wide:
echo 12345678 1 2345678 2 2345678 3 2345678 4 2345678 5 2345678 6 2345678 7 2345678 8

exit/b



:_

:who

set fp=* Who am I?

rem lu: May-31-2019

echo.
echo %fp%

echo.
echo * Computername: %computername%

exit/b



:_+ Multi-Edit Packs



::_

:a

set fp=* Open Affinity files router. (skw open files)

rem lu: May-14-2019

echo %computername% | find /i "lipt">nul

if %errorlevel% == 0 (
   rem echo * Computer name contains "lipt".
   rem echo.
   call %0 gfe
   exit/b
)

call :aff

exit/b



::_

:gfe

set fp=* Open GFE Affinity files.

rem lu: Apr-15-2019

echo.
echo %fp%

set cbf-fn-list=

set cbf-fn-list="%share-zone%\lbm\miscellany\lbm.asc"

set cbf-fn-list=%cbf-fn-list% "%share-zone%\gfe.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\copy of cc.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\it2.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"
set cbf-fn-list=%cbf-fn-list% "%composable_batch_files%\n.bat"
set cbf-fn-list=%cbf-fn-list% "%composable_batch_files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable_batch_files%\g.bat"

attrib +r "%share-zone%\copy of cc.asc"

start mew32 %cbf-fn-list%


exit/b



::_

:aff

set fp=* Open affinity files.

rem lu: Mar-8-2020

echo.
echo %fp%

set cbf-fn-list=

set cbf-fn-list="%dropbox%\savannah\reach out\WK.asc"

set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CC.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CM.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\IT.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\DI.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\JD.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CH.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\RB.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\TJ.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CI.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\TR.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\OC.asc"

attrib +r "%share-zone%\copy of cc.asc"

start mew32 %cbf-fn-list%


exit/b



::_

:demo

:pres

set fp=* Open presentation files.

rem lu: Nov-11-2020

echo.
echo %fp%

set cbf-fn-list=

set cbf-fn-list="%dropbox%\savannah\reach out\WK.asc"

set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CC.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CM.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\IT.asc"
set cbf-fn-list=%cbf-fn-list% "%composable_batch_files%\m.bat"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"
set cbf-fn-list=%cbf-fn-list% "%composable_batch_files%\n.bat"

start mew32 %cbf-fn-list%


exit/b



::_

:aff_old

:affi_old

:inot_old

set fp=* Open affinity files - old.

rem lu: Jan-9-2019

echo.
echo %fp%

start Mew32.exe "%reach out%\WK.asc" "%reach out%\CC.asc" "%reach out%\CM.asc" "%reach out%\IT.asc" 
"%reach out%\DI.asc" 
"%reach out%\JD.asc" "%reach out%\CH.asc" "%reach out%\RB.asc" "%reach out%\TJ.asc" "%reach out%\CI.asc" 
"%reach out%\TR.asc" "%savannah%\reach out\OC.asc" "%composable_batch_files%\n.bat"

exit/b



::_

:w

:wait

set fp=* Open "waiting" files.

rem lu: Feb-27-2019

echo.
echo %fp%

call fn machine-specific-file

set first_filename=%cbf-fn%

call fn ccf

set second_filename=%cbf-fn%

start mew32 "%first_filename%" "%second_filename%"

exit/b



::_

:affc

set fp=* Open affinity files and close the DOS window.

rem lu: Jan-23-2019

echo.
echo %fp%

call :aff

exit



::_

:waitc

set fp=* Wait and close.

rem lu: Mar-18-2019

echo.
echo %fp%

call %0 wait

exit



:_+ CBF Associations



::_

:assoc_fa

:set_feta

:set_fn_eqt_app

set fp=* Set cbf-fn equal to cbf-application.

rem lu: Feb-4-2019

echo.
echo %fp%

set cbf-fn=%cbf-application%

exit/b



::_

:apf

:assoc_pf

:assoc_p_fn

:associate_cbf-parameter_to_cbf-fn

set fp=* Associate cbf-parameter to cbf-fn.

rem lu: Dec-19-2018

echo.
echo %fp%

set cbf-parameter=%cbf-fn%

exit/b



:_+ Composing and Expanding Variables



::_

:compose_variable

set fp=* Compose variable.

rem lu: Jul-16-2019

rem echo.
echo * Variable to expand: %2>nul

set cbf-composed-variable=cbf-%2

call %0 expand_variable "%%%cbf-composed-variable%%%">nul

exit/b



::_

:expand_variable

set fp=* Expand variable.

rem lu: Jul-16-2019

echo.
echo %fp%

set cbf-expanded-variable=%~2

rem echo.
rem echo * Expanded variable: %expanded_variable%

exit/b



::_

:distill_filename

set fp=* Distill filename.

rem lu: May-18-2020

rem echo.
rem echo %fp%

set cbf-distilled_filename=%~nx2

rem echo.
rem echo P2: %2

echo.
echo * Distilled Filename: %cbf-distilled_filename%

exit/b



::_

:distill_path

set fp=* Distill path.

rem lu: May-26-2020

rem echo.
rem echo %fp%

set cbf-distilled_path=%~dp2

rem echo.
rem echo F2: %2

echo.
echo * Distilled Path: %cbf-distilled_path%

exit/b



:_+ How To Family (!fyht)



::_

:htrl

:loca

:rcl

:rulo

:rc

set fp=* How to run CART locally, the overarching process.

rem lu: Mar-30-2020

echo.
echo %fp%

rem Check status and what branch you are on.
s ma

rem You may or may not want to do a get-latest.
pl

rem Get Postgres running on local by clicking on the lnk_db shortcut. (skw start the database)

rem liqu

rem 1. If the local database is up-to-date, you don't need to run Liquibase? 

rem 2. If the API starts successfully, you don't need to run Liquibase.

rem 3. If your database is not up-to-date, you will need to run Liquibase. This can be done
rem by using Craig's trick, i.e. open up "Max" and delete all but the latest needed rows.
rem You can run "pql dbc" to see how up-to-date your local database is.

rem If liquibase continues to fail, you may need to wipe your local databaase and restore it
rem from Dev.

rem Run the API by using m lnk_api. You may need to edit npcrf.

rem If you want to run the debugger, then search on: lnk_api
and use 
gr run_api_with_debugger

rem Also read direction on how to attach the debugger at: &atde

j bash

rem Run 1 of the following. First one is easier.
rem ./get_cart_jwt.sh
rem or
rem ./craigs_get_cart_jwt_rpl.sh - deprecated
rem If you have an issue with obtaining the jwt, you can try getting the latest jwt script
rem from "td scri".

rem Copy the new jwt token into the file using:

e jwt

rem Run the UI using lnk_ui.

sf 42

exit/b



::_

:smdi

:htr

set fp=* How to refresh the server, Sean's manual deployment instructions.

rem lu: Aug-22-2019

echo.
echo %fp%

sf dv

td ma

g sb develop

pl

cmd_start_db

lq

tdc ma

rem I saw a case where the API will build but not run, so you may want to run on your
rem local before deploying to the server.
lnk_api

gr build_jar

td lib

ren cart-api-1.2.0.jar cart-api.jar

td dp

m rd dist

m build_for_fqt

of dist

rem zip up C:\Users\JJones2\j\cart\icecart-portal-client\dist\icecart-portal-client>

k scp_ui_j sr5

k scp_api_j sr5

k scp_ui_j sr31

k scp_api_j sr31

k cnj sr5

   or

k cna sr31

sudo rm -rf /var/www/html*

cd /var/www

sudo mkdir html

cd /opt/cart

sudo cp /tmp/cart-api.jar .

sudo cp /tmp/ui.zip .

ll

rem Verify that the website is down.
sf dev

sudo unzip -o ./ui.zip -d /var/www/html/

rem On master server only.
export SERVER_NODE=master

sudo service cart restart

sudo service cart status

rem Verify that the server is working.

exit/b




::_

:htr_fqt

set fp=* How to refresh FQT.

rem lu: Sep-17-2019

echo.
echo %fp%

sf fq

td ma

g sb develop

pl

cmd_start_db

lq

tdc ma

rem I saw a case where the API will build but not run, so you may want to run on your
rem local before deploying to the server.
lnk_api

gr build_jar_for_fqt

td lib

ren cart-api-1.2.0.jar cart-api.jar

td dp

m rd dist

m build_for_fqt

of dist

rem zip up C:\Users\JJones2\j\cart\icecart-portal-client\dist\icecart-portal-client>

k scp_ui_j sr27

k scp_api_j sr32

k scp_ui_j sr27

k scp_api_j sr32

k cnj sr27

   or

k cna sr32

sudo rm -rf /var/www/html*

cd /var/www

sudo mkdir html

cd /opt/cart

sudo cp /tmp/cart-api.jar .

sudo cp /tmp/ui.zip .

ll

sudo kill -9

rem Verify that the website is down.
sf fq

sudo unzip -o ./ui.zip -d /var/www/html/

rem On master server only.
export SERVER_NODE=master

sudo nohup ./cart-api.jar &

sudo service cart restart

sudo service cart status

rem Verify that the website is up.

exit/b




:_+ Lnks



::_

:lnk_gui

:lnk_ui

set fp=* CART UI

rem lu: Mar-26-2020

title=%fp%

echo.
echo %fp%

call %0 lnk_ui_do_not_install_npm
rem call %0 lnk_ui_install_npm

exit/b



::_

:lnk_ui_install_npm

set fp=* Run UI lnk and install npm.

rem lu: Mar-24-2020

echo.
echo %fp%

call m big

call td rf_ui

rem Since this step in time-cunsuming and often unnecessary, I have commented it. However
rem you just need to remember to uncomment it, if you need to run it.

call nm inst

call ang run_ui

exit/b



::_

:lnk_ui_do_not_install_npm

set fp=* Run UI lnk, do not install npm.

rem lu: Mar-24-2020

echo.
echo %fp%

call m big

call td rf_ui

rem Since this step in time-cunsuming and often unnecessary, I have commented it. However
rem you just need to remember to uncomment it, if you need to run it.

call ang run_ui

exit/b



::_

:lnk_webpack

set fp=* Run UI lnk, do not install npm.

rem lu: Mar-24-2020

echo.
echo %fp%

call m ise

call td deli

call gr webpack

exit/b



::_

:lnk_ui_old

set fp=* Run UI lnk, for use by shortcut icons.

rem lu: Aug-16-2019

echo.
echo %fp%

call m big

call td rf_ui

rem Since this step in time-cunsuming and often unnecessary, I have commented it. However
rem you just need to remember to uncomment it, if you need to run it.

echo.
set /P user_option=Would you like to run "npm install"? (y/n): 
if "%user_option%"=="y" call nm inst

call ang run_ui

exit/b



::_

:lnk_api

set fp=* CART API

rem Run API cmd, for use by shortcut icons.

rem lu: Mar-24-2020

title=%fp%

echo.
echo %fp%

rem call %0 lnk_api_attach_debugger
call %0 lnk_api_do_not_attach_debugger

exit/b



::_

:lnk_api_attach_debugger

set fp=* Run API cmd and ATTACH DEBUGGER!

rem lu: Aug-16-2019

echo.
echo %fp%

call m big

call td rf_api

call gr run_api_with_debugger

exit/b



::_

:lnk_api_do_not_attach_debugger

set fp=* Run API cmd and do not attach debugger.

rem lu: Aug-16-2019

echo.
echo %fp%

call m big

call td rf_api

call gr run_api

exit/b



::_

:lnk_api_old

set fp=* Run API cmd, for use by shortcut icons.

rem lu: Aug-16-2019

echo.
echo %fp%

call m big

call td rf_api

echo.
set /P user_option=Would you like to attach the debugger? (y/n): 

if "%user_option%"=="y" (
  call gr run_api_with_debugger
) else (
  call gr run_api
)

exit/b



::_

:lnk_api_with_debugger

set fp=* Run API cmd and attach the debugger.

rem lu: Aug-16-2019

echo.
echo %fp%

call m big

call td rf_api

call gr run_api_with_debugger

exit/b



::_

:run_ui

call ang run_ui

exit/b



::_

:run_api

call gr run_api

exit/b



::_

:cmd_golf

set fp=* Run Golf cmd.

rem lu: Aug-16-2019

echo.
echo %fp%

call m big

call j golf

exit/b



::_

:cmd_start_db

:lnk_db

set fp=* Start local database.

rem lu: Aug-16-2019

echo.
echo %fp%

call m big

call pql start

exit/b



:_+ ASCII Art Family (!fyaa)



::_

:show_ascii_art

set fp=* Show Ascii art.

rem lu: Apr-1-2019

call n ascii_art

type %cbf-fn%

exit/b



::_

:show_ascii_art_2

set fp=* Show Ascii art 2.

rem lu: Jul-26-2019

call n ascii_art_2

type %cbf-fn%

exit/b



::_

:show_ascii_art_sans_souci

set fp=* Show Ascii art.

rem lu: Nov-25-2019

call n ascii_art_sailboat>nul

type %cbf-fn%

exit/b



::_

:show_ascii_art_error

set fp=* Show Ascii art error.

rem lu: May-4-2020

call n ascii_art_error>nul

type %cbf-fn%

exit/b



:_+ Expand Family



::_

:convert_to_path

:expand_to_path_only

set fp=* Expand to path only.

rem lu: Mar-14-2018

rem echo.
rem echo %fp%

set cbf-pt=%~d2%~p2

exit/b



::_

:expand_to_filename_without_path

set fp=* Expand to filename without path.

rem lu: Nov-8-2019

echo.
echo %fp%

set cbf-fn_without_path=%~nx2

exit/b



:_+ Testing the existence of a particular file.



::_ (skw if exists, existence check, check_existence, check existence, file_existence)

:specific_file_presence

set fp=* Check the current folder for the presence of "%2".

rem is_present

rem lu: Nov-11-2019

echo.
echo %fp%

if not exist %2 (
  echo. 
  echo * Error: The file "%2" does NOT exist in the current folder. Nov-11-2019 12:48 PM
  exit/b 1
) else (
  echo. 
  echo * Found it. Oct-16-2020_12_53_PM
)

exit/b 0



::_

:th_specific_file_presence

set fp=* Test harness for specific_file_presence.

rem lu: Apr-27-2020

echo.
echo %fp%

call m specific_file_presence main.tf

if %errorlevel% gtr 0 exit/b

echo.
echo * Run commands.

exit/b



::_

:specific_folder_presence

set fp=* Check for presence of a paricular foldder in the current folder.

rem lu: Nov-11-2019

echo.
echo %fp%

dir | find /i "%2">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the "%2" folder for this command to work. Nov-11-2019 6:29 PM
  exit/b 1
)

echo. 
echo * "%2" folder exists.

exit/b



::_

:delete_folder_if_present

set fp=* Delete a paricular folder if it exists in the current folder.

rem lu: May-22-2020

echo.
echo %fp%

dir | find /i "%2">nul

if %errorlevel% == 0 (
  echo. 
  echo * "%2" folder exists.
  call m rd %2
  exit/b 0
)

echo.
echo * Folder "%2" not found in the current folder.

exit/b



:_

:validate_server_alias

if "%~2" == "" (
  echo.
  echo * Error: Server alias must be specified. Dec-18-2019 11:06 AM
  exit/b 1
)

set cbf-hostname=
set cbf-instance-id=
set cbf-ip=

call n %2

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Oct-30-2020_2_02_PM
  exit/b 1
)

if "%cbf-host%" == "" (
  echo.
  echo * Error: Host name is blank for server alias "%2".
  exit/b 1
)

if "%cbf-instance-id%" == "" (
  echo.
  echo * Error: Instance ID is blank for server alias "%2".
  exit/b 1
)

if "%cbf-ip%" == "" (
  echo.
  echo * Error: IP address is blank for server alias "%2".
  exit/b 1
)

echo.
echo * Server alias has been validated.

exit/b 0



:_+ Vs Test



::_

:cltestl

set fp=* Run tests on command line with an attached logger.

rem lu: Dec-18-2017

echo %fp%
echo.

vstest.console.exe unittestproject4.dll /Logger:trx

exit/b



::_

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

:rscsh

set fp=* Rename screenshots.

rem lu: Mar-12-2020

echo.
echo %fp%

echo.
ren Screen*.* Mar-12-2020*.*

exit/b



:_

:validate_instance

set fp=* Validate instance.

if "%~2" == "" (
  echo.
  echo * Error: You must specify an instance alias.
  exit/b 1
)

set cbf-instance-id=

call n %2>nul

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Oct-30-2020_2_03_PM
  exit/b 1
)

if "%cbf-instance-id%" == "" (
  echo.
  echo * Error: Instance ID is blank.
  exit/b 1
)

exit/b



:_+ Generate Date as Filename



::_

:atn

:ctf

:file

:fn

:gdaf

set fp=* Create timestamped file.

rem skw: add timestamped file, Create New File, Generate a timestamped name file, create file, make test file

rem lu: Jun-12-2020

rem This works.

echo.
echo %fp%

rem The below class name is case sensitive.
java -classpath %composable_batch_files% Get_timestamp_for_use_as_filename>date_as_filename.txt

set /p date_as_filename=<date_as_filename.txt

ren date_as_filename.txt %date_as_filename%.txt

dir *.txt

exit/b



::_

:gdt_old

:generate_date_as_filename

set fp=* Generate date as filename.

rem fcd: Mar-12-2019

echo.
echo %fp%

call td cbf

rem The below class name is case sensitive.
java -cp . Get_timestamp_for_use_as_filename>%tmp%\mercury_date_as_filename.txt

set /p date_as_filename=<%tmp%\mercury_date_as_filename.txt

echo Mar-12-2019

echo %date_as_filename%

exit/b



::_

:gdt_1

:generate_date_as_filename

set fp=* Generate date as filename.

rem fcd: Mar-12-2019

rem This works.

echo.
echo %fp%

call td a

rem The below class name is case sensitive.
java -classpath %composable_batch_files% Get_timestamp_for_use_as_filename>%tmp%\date_as_filename.txt

set /p date_as_filename=<%tmp%\date_as_filename.txt

echo.
echo %date_as_filename%

exit/b



::_

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

:jens

:jfs

set fp=* Open Jenkinsfiles.

rem lu: Jan-10-2019

echo.
echo %fp%

call e acr

call e ant

call e bgs

call e cap

call e eat

call e gfs

call e iac

call e odls

exit/b



:_ (!efm, !rfsp) (mov-9)
