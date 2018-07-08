:_

@echo off



:_

set filep=* Copy file(s).

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo Filename stands for: CopY file(s).

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: cy [Parameter 1]

echo.
echo Parameter 1: Label method to run.

echo.
echo Parameter  Description
echo ---------  --------------------------------------------------------------
echo     vs_ig  Copy Visual Studio Git Ignore file from Fresnel to the current
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

:vs_ig

set fp=* Copy Visual Studio Git Ignore file from Fresnel to the current location.

rem lu: Jul-6-2018

echo %fp%

call n fr

xcopy %cbf_path%\.gitignore

exit /b



:_

:sacj

set fp=* Copy stage area podcasts to the Clipjam folder.

rem lu: Jul-8-2018

echo %fp%

call td cj

call n sa

echo.
move "%cbf_path%\*.*"

exit /b



:_ (!rfsp) (mov-9)