:_

@echo off



:_

set filep=* Perform Sencha-related tasks.

echo.
echo %filep%



:_

set fp=* Add echo.

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

echo Filename stands for: sencHa-related tasks.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: m [single parameter]

echo.
echo      Parameter  Description
echo  -------------  -------------------------------------------------------
echo             ar  App refresh.
echo             au  App upgrade.
echo             aw  App Watch Modern.
echo            awh  Display help for Sencha App Watch.

exit /b



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

:1841

set fp=* Launch localhost at port 1841.

rem fud: Aug-4-2017

echo %fp%

start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://localhost:1841

exit /b



:_

:l

set fp=* Surf to localhost. Launch Sencha Web Service in the training folder.

rem fud: Aug-4-2017

echo %fp%

call td.bat st

call %0 1841

call %0 ws

exit /b



:_

:ci

set fp=* Cordova initialize.

rem fud: Aug-8-2017

echo %fp%
echo.

sencha cordova init com.mcipsca.%2 Mercury

cd cordova

exit /b



:_

:jetty

:ws

set fp=* Web start, a.k.a. Jetty.

rem fud: Aug-4-2017

echo %fp%
echo.

color 03

title = Jetty

sencha web start

exit /b



:_

:tunes

set fp=* Launch localhost at tunes.

rem fud: Aug-4-2017

echo %fp%

start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://localhost:1841/labs/tunes

exit /b



:_

:lcf

set fp=* Launch Web Service in the current folder.

rem fud: Aug-7-2017

echo %fp%

call %0 1841

call %0 sws

exit /b



:_

:which

set fp=* Which tells you what version of Sencha you are running.

rem To switch versions of sencha use "sencha switch [blank]" where blank is the version
rem you want to switch to.

rem fud: Aug-7-2017

echo %fp%
echo.

sencha which

exit /b



:_

:abd

set fp=* App build development.

rem fud: Aug-8-2017

echo %fp%
echo.

sencha app build development

exit /b



:_

:abp

set fp=* App build production.

rem fud: Aug-8-2017

echo %fp%

sencha app build production

exit /b



:_

:abt

set fp=* App build testing.

rem fud: Aug-15-2017

echo %fp%

sencha app build testing

exit /b



:_

:creq

set fp=* Cordova requirements.

rem fud: Aug-8-2017

echo %fp%

cordova requirements

exit /b



:_

:gen_workspace

set fp=* Generate workspace that is to be shared by Classic, Modern and Universal app.

rem fud: Aug-9-2017

echo %fp%

cd C:\SenchaTraining\ext-6

sencha generate workspace ..\workspace

exit /b



:_

set fp=* Gen classic app in the workspace folder.

rem fud: Aug-9-2017

echo %fp%

cd C:\SenchaTraining\ext-6

sencha generate app -classic MyClassic ../workspace/myclassic

exit /b



:_

:gen_modern

set fp=* Gen modern app in the workspace folder.

rem fud: Aug-9-2017

echo %fp%

cd C:\SenchaTraining\ext-6

sencha generate app -modern MyModern ../workspace/mymodern

exit /b



:_

:gen_univ

set fp=* Gen universal app in the workspace folder. No switch present. It is the default.

rem fud: Aug-9-2017

echo %fp%

cd C:\SenchaTraining\ext-6

sencha generate app MyUniversal ../workspace/myuniversal

exit /b



:_

:gen_classic

set fp=* Generate a classic app.

rem fud: Aug-8-2017

echo %fp%

cd c:\SenchaTraining\ext-6

sencha generate app -classic -starter=false Earthquakes ../labs/earthquakes

exit /b



:_

:gen_app

set fp=* Generate an app using sdk.

rem fud: Aug-10-2017

echo %fp%

sencha -sdk %userprofile%\Documents\DropBox\nes\macintosh\public_html\ext generate app %2 %aa%\%2

cd c:\aa\%2

exit /b



:_

:gen_app_setr

set fp=* Generate the starter app.

rem fud: Aug-10-2017

echo %fp%

cd c:\senchatraining\ext-6

sencha generate app -starter=false Tunes ../labs/tunes

exit /b



:_

:gen_views

set fp=* Generate the initial views.

rem fud: Aug-10-2017

echo %fp%

cd c:\senchatraining\labs\tunes

cd

pause

sencha generate view -classic main.Main

sencha generate view -modern -base Ext.Container main.Main

exit /b



:_

:smv

set fp=* Show modern view.

rem fud: Aug-10-2017

echo %fp%

start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://localhost:1841/labs/tunes/?modern

exit /b



:_

:modern_lab

set fp=* Launch localhost at the modern lab.

rem fud: Aug-4-2017

echo %fp%

start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://localhost:1841/labs/tunes/?modern

exit /b



:_

:abdas

set fp=* App build development on Android with switches. Most helpful one.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app build -development -clean androidbuild

exit /b



:_

:ardas

set fp=* App run development on Android with switches. Most helpful of the 3 switches.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app run -development -clean androidbuild

exit /b



:_

:arpas

set fp=* App run production on Android with switches.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app run -production -clean androidbuild

exit /b



:_

:arpas

set fp=* App run production on Android with switches.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app run -production -clean androidbuild

exit /b



:_

:abpa

set fp=* App build production on Android.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app build -production androidbuild

exit /b



:_

:arpa

set fp=* App run production on Android.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app run -production androidbuild

exit /b



:_

:abda

set fp=* App build development on Android.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app build -development androidb

exit /b



:_

:labs

set fp=* Labs.

rem fud: Aug-16-2017

echo %fp%
echo.

cd c:\senchatraining\labs

exit /b



:_

:abm

set fp=* App build modern.

rem fud: Aug-21-2017

echo %fp%
echo.

cd | find /i "cordova">nul

if %errorlevel% == 0 rem echo Cordova found.
if %errorlevel% == 0 cd..

sencha app build modern

exit /b



:_

:arm

set fp=* App run modern.

rem fud: Aug-21-2017

echo %fp%
echo.

sencha app run modern

exit /b



:_

:cpaa

set fp=* Cordova platform add android.

rem fud: Aug-10-2017

echo %fp%
echo.

cd cordova

cordova platform add android

cd..

exit /b



:_

:copy_ext

:copy_ext_folder

set fp=* Copy ext folder the Sencha ext folder to the public folder.

rem extjs, ext js: skw

rem fcd: Apr-4-2017

echo %fp%

call td pu

echo Current Folder: %cd%
echo.

dir | find /i "ext">nul
if %errorlevel% == 0 echo Wait a second. Folder EXISTS. We cannot go on like this.
if %errorlevel% == 0 echo.
if %errorlevel% == 0 pause
if %errorlevel% == 0 exit /b

if %errorlevel% == 1 echo Folder does NOT exist. So let's create it.

md ext
cd ext

xcopy /d /h /r /s /y "C:\Users\jonathan.r.jones\Documents\Dropbox\Software\Mercury\ext 6.2.1.33"

exit /b



:_

:ar

set fp=* App refresh.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app refresh

exit /b



:_

:arpu

set fp=* App refresh in public folder.

rem This doesn't work. I'm guessing that the reason it doesn't work is because it's
rem somehow tied to Jetty.

rem fud: Aug-30-2017

echo %fp%

call td pu

echo.
sencha app refresh

exit /b



:_

:aum

set fp=* Run sencha app upgrade mystery to me. I think this is wrong. Aug-29-2017

rem Note: If you blow away the Sencha folder, you're going need to this code block.

rem fcd: Feb-15-2017

echo %fp%

cd \projects\netbeans\sencha\HTML5Application\public_html

rem sencha app upgrade c:\mercury\ext-6.2.1.6.2.1.33
sencha app upgrade

exit /b



:_

:auc

set fp=* Run sencha app upgrade in the current folder.

rem fud: Aug-15-2017

echo %fp%
echo.

sencha app upgrade

exit /b



:_

:au

:sencha_app_upgrade

set fp=* Run sencha app upgrade in the public folder.

rem This is a Mercury Development Environment prerequisite.

rem fcd: Sep-6-2017

echo %fp%

call td pu

echo.
sencha app upgrade

exit /b



:_

:awcc

set fp=* Run app watch in the public folder.

rem lu: Sep-6-2017

echo %fp%

call m ncaw

call td pu

title = App Watch

color 0e

echo.
sencha app watch

exit /b



:_

:awcur

set fp=* Run app watch in the current folder.

rem lu: Sep-6-2017

echo %fp%

title = App Watch - Current Folder

echo.
sencha app watch

exit /b



:_

:raukr

set fp=* Run unsafe Chrome, which is used in conjunction with Sencha App Watch.

rem lu: Sep-6-2017

echo %fp%

rem Works but then the command window is locked.
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir http://localhost:1841/#nav/dashboard
rem "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir http://localhost:1841/#nav/dashboard

rem Doesn't work.
rem start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir http://localhost:1841/#nav/dashboard
rem call start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir http://localhost:1841/#nav/dashboard

exit /b



:_

:abm2

call m delete_stale_ext_js_from_testing_folder

set fp=* Run sencha app build testing with he modern switch.

echo %fp%
echo.

rem lu: Sep-11-2017

title = %fp%

color 4f

cd \projects\netbeans\sencha\HTML5Application\public_html

rem cd 

sencha app build -modern testing

rem if %errorlevel% == 0 echo Compile succeeded.>%temp%\compile_results.txt
rem if not %errorlevel% == 0 echo Compile failed.>%temp%\compile_results.txt

exit /b



:_

:abm3

call m delete_stale_ext_js_from_testing_folder

set fp=* Run sencha app build testing with the modern switch 3.

echo %fp%
echo.

rem lu: Sep-11-2017

title = %fp%

color 4f

cd \projects\netbeans\sencha\HTML5Application\public_html

rem cd 

sencha app build -development -clean modern

rem if %errorlevel% == 0 echo Compile succeeded.>%temp%\compile_results.txt
rem if not %errorlevel% == 0 echo Compile failed.>%temp%\compile_results.txt

exit /b



:_

:abm4

call m delete_stale_ext_js_from_testing_folder

set fp=* Run sencha app build testing with the modern switch 4.

echo %fp%
echo.

rem lu: Sep-11-2017

title = %fp%

color 4f

cd \projects\netbeans\sencha\HTML5Application\public_html

rem cd 

sencha app build -testing -clean modern

rem if %errorlevel% == 0 echo Compile succeeded.>%temp%\compile_results.txt
rem if not %errorlevel% == 0 echo Compile failed.>%temp%\compile_results.txt

exit /b



:_

:abm5

call m delete_stale_ext_js_from_testing_folder

set fp=* Run sencha app build testing with the modern switch with no clean.

echo %fp%
echo.

rem lu: Sep-11-2017

title = %fp%

color 4f

cd \projects\netbeans\sencha\HTML5Application\public_html

rem cd 

sencha app build -testing modern

rem if %errorlevel% == 0 echo Compile succeeded.>%temp%\compile_results.txt
rem if not %errorlevel% == 0 echo Compile failed.>%temp%\compile_results.txt

exit /b



:_

:awh

set fp=* Display help for sencha app watch.

rem lu: Sep-13-2017

echo %fp%

@echo on
sencha help app watch
@echo off

exit /b



:_

:aws

set fp=* App watch with switches.

rem fud: Aug-10-2017

echo %fp%

title = App Watch

cd c:\senchatraining\labs\tunes

cd

pause

sencha app watch -fashion classic

exit /b



:_

:awc

set fp=* App watch classic.

rem lu: Oct-26-2017

rem I had a bit of nasty trouble with this on Sep-14-2017. It seems like I got it to work
rem for modern but classic may need some tweaking.

rem As of Oct-26-2017, this only seems to work for the local mobile app. To run the classic 
rem code, run !+lh. How do I get the watcher to work for classic then?

echo %fp%

call m ncaw

call td pu

title = App Watch Modern

color 0e

echo.
sencha app watch modern

exit /b



:_

:aw

:awm

set fp=* App watch modern.

rem I had a bit of nasty trouble with this on Sep-14-2017. It seems like I got it to work
rem for modern but classic may need some tweaking.

rem lu: Sep-13-2017

echo %fp%

call m ncaw

call td pu

cd

title = App Watch Modern

color 0e

echo.
sencha app watch modern

exit /b



:_

:run_sencha_app_build_production

:sabp

call m delete_stale_ext_js_from_production_folder

set fp=* Run sencha app build production.

echo %fp%
echo.

title = %fp%

cd \projects\netbeans\sencha\HTML5Application\public_html

color 4f

sencha app build production

if %errorlevel% == 0 echo %f% Compile succeeded.>%temp%\compile_results.txt
if not %errorlevel% == 0 echo %f% Compile failed.>%temp%\compile_results.txt

exit /b



:_ (!rfsp) (mov-6)