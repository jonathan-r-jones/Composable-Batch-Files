:_

@echo off



:_

set filep=* Copy files static formulas.



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo CopY file(s). This file is useful when fixed locations are involved.

echo.
echo Usage: cy [Parameter 1]

echo.
echo Parameter 1: Label method to run.

echo.
echo Parameter  Description
echo ---------  ----------------------------------------------------------------
echo       apn  Copy all files in the current folder to an alias specified path.
echo      jfds  Copy jj_devops Jenkinsfile to share-zone Jenkinsfile
echo      jfsd  Copy share-zone Jenkinsfile to jj_devops Jenkinsfile 
echo        ig  Copy Visual Studio Git Ignore file from Fresnel to the current
echo            location.

exit/b



:_

:cb

set fp=* Copy background image for testing purposes.

rem lu: Nov-9-2017

echo.
echo %fp%

call td wir1

xcopy /y "c:\mercury\batch_files\Wave_4_invert.png"

call td wir2

xcopy /y "c:\mercury\batch_files\Wave_4_invert.png"

call td wir3

xcopy /y "c:\mercury\batch_files\Wave_4_invert.png"

exit/b



:_

:md

set fp=* Copy settings.xml file into the Maven Dependencies path.

rem lu: Nov-21-2017

echo %fp%

call td m2

xcopy c:\mercury\batch_files\settings.xml

exit/b



:_

:mc

set fp=* Copy Mobility resources to the Cordova folder.

rem lu: Sep-28-2017

echo %fp%
echo.

call td pu

if not exist cordova echo.
if not exist cordova echo The Cordova folder isn't there, therefore abort.
if not exist cordova exit/b

cd cordova

md resources

cd resources

xcopy /s c:\mercury\mobility\resources

exit/b



:_

:aj

set fp=* Copy over App.json for mobile build.

rem lu: Sep-6-2017

echo.
echo %fp%

call td pu

xcopy /y "c:\mercury\mobility\androidspecific\app.json" "app.json"

exit/b



:_

:t1

set fp=* Copy over Testing 1 NetConfig.

rem lu: Dec-6-2017

echo.
echo %fp%

call td util

xcopy /y "c:\mercury\mobility\NetConfig - for Testing1.js" "NetConfig.js"

exit/b



:_

:bu

set fp=* Copy file to code backup folder.

rem lu: Nov-9-2017

rem skw: slash replace

echo.
echo %fp%
echo.

set reformatted_string=%2

set reformatted_string=%reformatted_string:/=\%

xcopy "%reformatted_string%" "%Dropbox%\NES\Code Backup\"

echo "%reformatted_string%"

exit/b



:_

:cbf

set fp=* CBF.png file to cbf folder.

rem lu: Apr-24-2018

echo %fp%

call td cbf

echo.
xcopy /y c:\a\cbf.png

exit/b



:_

:fr_r

:res

set fp=* Copy Fresnel images to their respective Android and iOS folders.

rem lu: Jul-13-2018

echo.
echo %fp%

call td fr_ra

call n fr_rs

xcopy /d /h /r /y "%cbf_path%\*.png"

call td fr_ri

call n fr_rs

xcopy /d /h /r /y "%cbf_path%\*.png"

exit/b



:_

:test3

set fp=* Move test3 files to test1.

rem lu: Sep-3-2018

echo.
echo %fp%

xcopy %aa%\test3 %aa%\test1

exit/b



:_

:fc

set fp=* Copy from CBF_Path.

rem lu: Sep-4-2018

echo.
echo %fp%

echo.
xcopy %cbf_path%

exit/b



:_

:copy_cart_cs_files_to_a_temp_folder

set fp=* Copy cart cs files to a temp folder.

rem lu: Oct-17-2018

echo.
echo %fp%

xcopy *.cs %temp%\cart_cs /s

exit/b



:_+ Copy ME Config



::_

:copy_from_me_sz

set fp=* Copy Multi-Edit config files from share-zone.

rem lu: Dec-27-2018

echo.
echo %fp%

call td mecfg

echo.
xcopy /d /h /r /s /y %share-zone%\Multi-Edit_2008_Config_Files 

exit/b



::_

:copy_to_sz

set fp=* Copy Multi-Edit config files to share-zone.

rem lu: Dec-27-2018

echo.
echo %fp%

call td mecfg

echo.
xcopy /d /h /r /s /y %share-zone%\Multi-Edit_2008_Config_Files 

exit/b



:_

:cc

set fp=* Make a copy of CC.asc.

echo.
echo %fp%

echo.
xcopy /d /h /r /y "%reach out%\cc.asc" "%share-zone%\copy of cc.asc"

exit/b



:_

:te

set fp=* Turn the template file into a new batch file.

rem lu: Mar-28-2019

echo.
echo %fp%

call td cbf

echo.
xcopy te.bat %2.bat

call me %2.bat

exit/b



:_

:apn

set fp=* Copy all files in the current folder to an alias specified path.

rem lu: May-7-2019

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field for alias.
  exit/b
)

call n %2

if %errorlevel% == 1 (
  echo.
  echo * Error: Issue with "%2" alias.
  call m clear_errorlevel_silently  
  exit/b
)

echo.
xcopy /d /r /s /y . %cbf_path%

exit/b



:_

:jfds

set fp=* Copy jj_devops Jenkinsfile to share-zone Jenkinsfile.

rem lu: May-16-2019

echo.
echo %fp%

call n j

set source_filename=%cbf_jenkinsfile%

call n jft

set destination_filename=%cbf_filename%

echo.
xcopy /y %source_filename% %destination_filename%

exit/b



:_

:jfsd

set fp=* Copy share-zone Jenkinsfile to jj_devops Jenkinsfile.

rem lu: May-16-2019

echo.
echo %fp%

call n jft

set source_filename=%cbf_filename%

call n j

set destination_filename=%cbf_jenkinsfile%

echo.
xcopy /y %source_filename% %destination_filename%

exit/b



:_

:sv_dr_to_local

set fp=* Copy newer files from dropbox to my local drive.

echo.
echo %fp%

echo.
xcopy /d /r /s /y "%dropbox%\!savannah" "%savannah%"

exit/b



:_

:cfg_dr_to_local

set fp=* Copy Multi-Edit configuration files from dropbox to my local drive.

set fp=* Now do vice versa.

echo.
echo %fp%

echo.
xcopy /d /r /s /y "%dropbox%\Multi-Edit_2008_Config_Files" "%Multi-Edit_2008_Config_Files%"

exit/b



:_

:ldd

set fp=* Copy LDD from H drive to Share-zone.

rem lu: Jul-1-2019

echo.
echo %fp%

call cyff hldd ldd

exit/b



:_

:bumu

set fp=* Back up ME config files.

echo.
echo %fp%

Get_JDate>%tmp%\JDate.txt
set /p JDate=<%tmp%\JDate.txt
set Current_JDate=Backup %JDate%

echo.
echo Current JDate = %Current_JDate%

call td mecfg_db

echo.
if /i not exist "%Current_JDate%" md "%Current_JDate%"

cd %Current_JDate%

xcopy /s /y "%appdata%\Multi Edit Software\Multi-Edit\11\Config.04"

exit/b



:_ (!rfsp) (mov-9)