:_

@echo off



:_

rem Metadata

rem File Purpose: This Mercury (m) batch file is intended to be used for Mercury Project related tasks.

rem Batch File Style: Parameter-Routing Driven

rem To run a command, use a single command line parameter corresponding to its batch file 
rem label, e.g. m run_sencha_app_build_testing would run the code block at that label.

rem Usage Note: Do not make internal calls to a composite function because that could cause a 
rem circular reference.

rem Having a written version of your work allows you to learn and improve over time.



:_

set fp=* Set title.

rem echo.
rem echo %fp%

title = Mercury Helper



:_

set fp=* Set color.

rem echo.
rem echo %fp%

rem color 3f
rem color 0b



:_

set fp=* Route to parameter 1.

rem echo.
rem echo %fp%

if "%1"=="/?" goto help
goto %1



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

goto exitb



:_

:md

set fp=* Copy settings.xml file into the Maven Dependencies path.

rem lu: Nov-21-2017

echo %fp%

call td m2

xcopy c:\mercury\batch_files\settings.xml

goto exitb



:_

:bu

set fp=* Copy file to code backup folder.

rem lu: Nov-9-2017

echo.
echo %fp%
echo.

set reformatted_string=%2

set reformatted_string=%reformatted_string:/=\%

xcopy "%reformatted_string%" "%Dropbox%\NES\Code Backup\"

echo "%reformatted_string%"

goto exitb



:_

:mc

set fp=* Copy Mobility resources to the Cordova folder.

rem lu: Sep-28-2017

echo %fp%
echo.

call td pu

if not exist cordova echo.
if not exist cordova echo The Cordova folder isn't there, therefore abort.
if not exist cordova goto exitb

cd cordova

md resources

cd resources

xcopy /s c:\mercury\mobility\resources

goto exitb



:_

:aj

set fp=* Copy over App.json for mobile build.

rem lu: Sep-6-2017

echo.
echo %fp%

call td pu

xcopy /y "c:\mercury\mobility\androidspecific\app.json" "app.json"

goto exitb



:_

:t1

set fp=* Copy over Testing 1 NetConfig.

rem lu: Dec-6-2017

echo.
echo %fp%

call td util

xcopy /y "c:\mercury\mobility\NetConfig - for Testing1.js" "NetConfig.js"

goto exitb



:_ (!sp) (mov-9)