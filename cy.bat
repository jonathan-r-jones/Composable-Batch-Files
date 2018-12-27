:_

@echo off



:_

set filep=* Copy file(s).



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: CopY file(s). This file is useful when fixed locations are involved.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: cy [Parameter 1]

echo.
echo Parameter 1: Label method to run.

echo.
echo Parameter  Description
echo ---------  --------------------------------------------------------------
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



:_

:copy_me_config

set fp=* Copy Multi-Edit config files to the proper location.

rem lu: Dec-27-2018

echo.
echo %fp%

call td mecfg

echo.
xcopy /d /h /r /s /y %share-zone%\Multi-Edit_2008_Config_Files 
rem qq-1

exit/b



:_ (!rfsp) (mov-9)