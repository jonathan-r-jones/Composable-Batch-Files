:_

@echo off



:_

set filep=* This file is used for testing, experimenting and developing new batch file functions.



:_

set fp=* Set title.

title=Mr T.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help




:_

set fp=* If percent is not blank, then go to percent 1.

if not "%~1" == "" goto %1



:_

set fp=* Go to execution area.

goto main_function



:_

:help

echo File Purpose: %filep%

echo.
echo Filename stands for: Testing.

echo.
echo Last Updated (lu): Apr-30-2018

echo.
echo Usage: %0 (optional parameter 1)

echo.
echo Parameter 1: Batch file label you wish to execute. If left blank, 
echo the code below the last code block in this file, a. k. a. the main function, will 
echo be executed.

exit/b



:_

rem Begin script body. (!sbody)
 ___  ______  ______  ______  ______  ______  ______  ______  ______  ___
  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__
 (______)(______)(______)(______)(______)(______)(______)(______)(______)



:_

set fp=* Conditional route execution. If %1 is something then do that, else do cea.

echo.
echo %fp%

if "%~1" == "" goto code_execution_area

goto %1



:_
 
set fp=* Set path.

echo.
echo %fp%

call "c:\projects\netbeans\batch_files\set my path only.bat"



:_

set fp=* Set configuration.

echo.
echo %fp%
echo.

rem   _/) � � � _/) � � �_/)   Begin copy-and-paste menu of choices list.
rem  ~~~~~~~~~~~~~~~~~~~~~~~~ 

rem Please copy-and-paste from the list only. Do not move items out of this list.

set configuration=configuration_ad_hoc
set configuration=configuration_class_path
set configuration=configuration_environment_variable_paths
set configuration=configuration_path_validation
set configuration=configuration_run_me
set configuration=configuration_testing_equality
set configuration=configuration_run_hello_world

rem   _/) � � � _/) � � �_/) (!refermc)
rem  ~~~~~~~~~~~~~~~~~~~~~~~~  

set configuration=configuration_run_me_2



:_

set fp=* Go to folder.

echo.
echo %fp%
echo.

cd\!!
cd big faceless organization

cd



:_ Copy Code Blocks to Save Below Here ********

m exit



:_

:experiments_starting_point 2

set fp=4. * This is the starting point for new code experiments 2. 

echo.
echo %fp%
echo.

cd %my documents%
cd %my documents%\dropbox
cd %my documents%\dropbox\latest mp3s



:_

set fp=* 13a. If branch executes.

echo.
echo %fp%
echo.

set message=Hello world.

echo %message%

if "%message%" == "Hello world." (
  echo We said hello.
) else (
echo We did NOT say hello.)



:_

set fp=* 13b. Else branch executes.

echo.
echo %fp%
echo.

set message=Hello world not.

echo %message%

if "%message%" == "Hello world." (
  echo We said hello.
) else (
echo We did NOT say hello.)



:_

set fp=7a. * Getting the else statement to work.

echo.
echo %fp%
echo.

set test=hello

echo %test%

if "%test%" == "2hello" (goto if_portion)
goto else_portion



:_

set fp= 8. * Test the set statement.

echo.
echo %fp%
echo.

rem The following 2 statements are equal.

rem set fp=8. * Test the set statement.

rem set fp= 8. * Test the set statement.

m exit



:_

set fp=3. * Router.

echo.
echo %fp%
echo.

goto experiments_starting_point



:_

set fp= 9. * Copy theme jpegs.

echo.
echo %fp%
echo.

cd \Users\jrj.GCITECH\AppData\Local\Microsoft\Windows\Themes
rem xcopy /s *.jpg c:\!
cd

set podcast_folder=\Users\jrj.GCITECH\AppData\Local\Microsoft\Windows\Themes\
set staging_area=\!\


for /r "%podcast_folder%" %%f in ("*.jpg") do move "%%f" %staging_area%

m exit



:_

set fp=7. * Make a copy of cc.asc.

echo.
echo %fp%
echo.

xcopy /d /h /r /y "%reach out%\cc.asc" "%reach out%\copy of cc.asc"
rem xcopy /d /h /r /s /y "%reach out%\cc.asc" "copy of cc.asc"

m exit



:_

set fp=6. * Fix Dropbox.

echo.
echo %fp%
echo.

cd %my documents%
cd dropbox

cd

attrib.exe -a -r -h -s /s run_management_studio.bat

m exit



:_

set fp=* Do the experiment at hand.

echo.
echo %fp%
echo.

%systemroot%\explorer.exe "C:\Tortoise\ApplicationUtilities\ConfigurationManagement\ChangeLog.xml

m exit



:_

set fp=10. Copy the links file to the dropbox location.

echo.
echo %fp%
echo.

xcopy /d /h /r /y "%reach out%\Jonathans_Links.htm" "%my documents%\Dropbox\Public"



:_

:if_portion

set fp=* If portion.

echo.
echo %fp%
echo.

m exit



:_

:else_portion

set fp=* Else portion.

echo.
echo %fp%
echo.

m exit



:_

set fp=5. * Testing for vaiable equality 2. Notice that the else doesn't work.

echo.
echo %fp%
echo.

set test=hello

echo %test%

if "%test%" == "hello" (echo hey)
else (echo xxelse)

m exit



:_

set fp=5. * Testing for vaiable equality.

echo.
echo %fp%
echo.

set test=hello

echo %test%

if "%test%" == "hello" echo hey

m exit



:_

:program_file_variants

set fp=4. * Here are some variants of the "Program File" environment variable.

echo.
echo %fp%
echo.

echo.
echo A. - "programfiles"
echo %programfiles%
echo.
echo B. - "ProgramFiles(notepad_installation_path)"
echo %ProgramFiles(notepad_installation_path)%
echo.
echo C. - Proper Case "ProgramW6432"
echo %ProgramW6432%
echo.
echo D. - Lower Case "programw6432"
echo %programw6432%
echo.

m exit

Block Addendum - Program File Paths

::Sett: ProgramFiles=C:\Program Files (notepad_installation_path)

::Command Prompt: ProgramFiles=C:\Program Files



:_

set fp=* Copy newer files from my local drive to the export location.

echo.
echo %fp%
echo.

xcopy /d /h /r /s /y "%savannah%" "%thumb_drive%\!savannah"



:_

set fp=* Now do vice versa.

echo.
echo %fp%
echo.

xcopy /d /h /r /s /y "%thumb_drive%\!savannah" "%savannah%"



:_

set fp=* Execute main function.

echo.
echo %fp%
echo.

echo Hello world from the main function.



:_

:file_information

This file was created on: Nov-3-2014



:_

:goto_demonstrated

set fp=* This rubric shows how to use the go to statement to jump to another section.

echo.
echo %fp%
echo.

echo Hello world.

m exit



:_

set fp=* Perform main function, viz.

echo.
echo %fp%
echo.

echo Hello world.



:_

set fp=* Set initial folder.

echo.
echo %fp%
echo.

set initial_folder=%my documents%\!savannah\Chef of the Future\Templates\Templates

cd\%initial_folder%

cd



:_

set fp=* Set title.

echo.
echo %fp%
echo.

title File Purpose: The purpose of this file is to [blank].



:_

:configuration_batch_file

set fp=* Batch file configuration.

echo.
echo %fp%
echo.

set file_type=*.bat

echo File type: "%file_type%".

set folder_to_search=%my documents%\!savannah\belfry

echo Folder to search: "c:\%folder_to_search%".

set sc=computer_alias

echo Search criterion: "%sc%".

goto search



:_

set fp=* Delete old search results file.

echo.
echo %fp%
echo.

del c:\a\search_results.txt



:_

set fp=* Go to computer alias.

echo.
echo %fp%
echo.

goto %computer_alias%
m exit



:_

:search

set fp=* Search.

echo.
echo %fp%
echo.

c:

cd\%folder_to_search%

cd

findstr /i /m /p /s /c:"%sc%" "%file_type%">"c:\a\search_results.txt"



:_

set fp=* Send search results to Multi-Edit.

echo.
echo %fp%
echo.

"C:\Program Files\Multi-Edit 2008\Mew32.exe" "c:\a\search_results.txt"



:_

:set_configuration

set fp=* Set configuration.

echo.
echo %fp%
echo.

set configuration=configuration_
set configuration=configuration_

goto %configuration%



:_

set fp=* Set initial folder.

echo.
echo %fp%
echo.

set initial_folder=%my documents%\!savannah\belfry

cd\%initial_folder%

cd

echo initial folder is "c:\%initial_folder%".



:_

set fp=* Set search criterion.

echo.
echo %fp%
echo.

set sc=consecrate
set sc="missing sources"
set sc=greed
set sc=Requirements Without Organizations

echo Search criterion is "%sc%".



:_

set fp=* Set search file types.

echo.
echo %fp%
echo.

set search_file_type=*.txt
set search_file_type=*.xml

echo File types to search are "%search_file_type%".



:_

set fp=* Set search folder.

echo.
echo %fp%
echo.

set folder_to_search=!
set folder_to_search=Tortoise

echo Folder to search is "c:\%folder_to_search%".



:_

set fp=* Set title.

echo.
echo %fp%
echo.

title Place batch file title here.



:_

:set_path

set fp=* Set path.

echo.
echo %fp%
echo.

call "%savannah%\belfry\set_my_path.bat"

goto set_color



:_

:set_title

set fp=* Set title.

echo.
echo %fp%
echo.

title This file is where I store WORKING batch file "method blocks" for use in copying-and-pasting.

rem This file is an alphabetical list of those methods.

goto set_path



:_
;Batch File Code Keepers (!bfba)



;Batch File Code Keepers - Miscellany

:Robocopy code that works:

robocopy /s /ndl /njh /njs "%savannah%" "%my documents%\dropbox\!savannah"

robocopy /s /ndl /njh /njs "%my documents%\dropbox\!savannah" "%savannah%"

:Jun-12-2012: How to copy files in a Visual Studio Project

  <Target Name="AfterBuild">
  </Target>
  -->
  <PropertyGroup>
    <PostBuildEvent>mkdir "$(TargetDir)xml\"
mkdir "$(TargetDir)xsl\"
mkdir "$(TargetDir)docs\"

xcopy "$(SolutionDir)ConfigFiles\docs" "$(TargetDir)docs\" /Y/K/V/E/D
if errorlevel 1 GOTO BuildEventFailed

xcopy "$(ProjectDir)..\NetworkInventoryControls\$(OutDir)xml" "$(TargetDir)xml\" /Y/K/V/E/D
if errorlevel 1 GOTO BuildEventFailed

xcopy "$(ProjectDir)..\NetworkInventoryControls\$(OutDir)xsl" "$(TargetDir)xsl\" /Y/K/V/E/D
if errorlevel 1 GOTO BuildEventFailed

GOTO BUILDOK

:BuildEventFailed
echo POSTBUILDSTEP for $(ProjectName) FAILED
exit 1

:put_dissonance_out_onto_dropbox_in_a_iphone_readable_form

set fp=Put Dissonance onto Dropbox in a iPhone readable form.

echo.
echo %fp%
echo.

::call "%savannah%\belfry\back up dissonance.bat"

:Cool title code that puts the name of the batch file in the title bar of the command prompt.
title %0.

:What does this code do?

@setlocal
@setlocal enabledelayedexpansion

FOR /F "tokens=2-4 delims=/ " %%a in ('echo %date%') do (set mydate=%%c-%%a-%%b)
FOR /F "tokens=1-4 delims=.: " %%i in ('echo %time%') do (set mytime=%%i-%%j-%%k)
set dateTime=%mydate%_%mytime%

:This is cool code to experiment with and will probably be in future batch files.

echo %errorlevel%

:I thought this code should fix that one persistent "CD" drive problem, but after 
experimenting with it, turns out I was wrong.

if exist b:\nul echo b
if exist c:\nul echo c
if exist d:\nul echo d
if exist e:\nul echo e
if exist f:\nul echo f
if exist g:\nul echo g
if exist t:\nul echo t

:How to do if exist (skw if exists)

::if exist "filename.txt" call "filename.bat"

::rem The following line is a cool idea.
if exist "somefile.txt" pause

::Testing If a Drive or Directory Exists from a Batch File:

http://support.microsoft.com/kb/65994

This article was previously published under Q65994

You can use the IF EXIST statement to check for the presence of a directory. For example, to 
test for C:\WIN and then change to C:\WIN if it exists, use the following batch file:

C: IF NOT EXIST C:\WIN\NUL GOTO NOWINDIR CD \WIN :NOWINDIR

MORE INFORMATION
NUL always exists on a local MS-DOS FAT drive; therefore, if C:\WIN exists, C:\WIN\NUL exists.
This technique can also be used to verify that a drive exists. For example: IF EXIST E:\NUL 
GOTO USE_E

If an unformatted disk is tested, or if the floppy disk drive is empty, an INT 24 error 
(Abort, Retry, Fail?) occurs.

if exist c:\! echo "!"
if exist c:\a\nul echo "! nul"
if exist c:\!! echo "!!"

:How to do drag-and-drop with a batch file:

"%savannah%\chef of the future\TrID - File Identifier\trid.exe" %1

:How did SQLPlus disappear?!

Answer: When you adjust an Envrionment Variable via Right clicking My Computer | Properties 
| Advanced Tab | Envrionment Variables the Set command will not reflect the change until after 
logogg and log back on. However, the cmd utilities like SQLPlus and VStudio 2008, I assume,
use the newly modified values.

:How to execute a shortcut from a batch file. Jan-7-2011

cd %savannah%
cd shortcuts
savannah.lnk

::Example 2:
Strangely this code brings up event viewer:

cd %my documents%
services.lnk /s
cd

:How to wait in a batch file:

echo waiting for 5 seconds for the setup project to finish compiling
ping 127.0.0.1 -n 5 -w 60000 >NUL

:Stuff that was removed from Immc.bat.

::if exist "%reach out%\mz.asc" egress_batch_file_now_with_errors_2.bat "Unzipped Immanuel 
exists."

::%savannah%\belfry\egress_batch_file_now_with_errors_2.bat

::
rem They both exist, so delete the closed version.

::if exist mz.asc (if exist mzcl.jpg del /ah /a /f mzcl.jpg)

:How to run a CMAC macro from a batch file. - This worked.

:"C:\Program Files\Multi-Edit 2008\Mew32.exe" "/RCompile"

::This worked too!

:"C:\Program Files\Multi-Edit 2008\Mew32.exe" "/R@load_clif"

:How to put q+q on the same line as a code line. (skw comment)

:goto egress :q+q

:How to make lowercase the file extension "MP3":

rename *.mp3 *.mp4
rename *.mp4 *.mp3

:How to run an MSI file in using a batch file: 
msiexec /i "database deployment tool 6.msi"

:This statement does hidden and non-hidden. Ridiculously, the ORDER of the switches matters.

del /ah /a /f "%thumb_drive%:\!savannah\%file_to_delete%"

:How to do "not equals".
set test=truex
if "%test%"=="true" echo Test is true.
if not "%test%"=="true" echo Test is NOT true.

:Assign 3 variables to autoexec.bat

::savannah=%userprofile%\my documents\!savannah

::my_documents=%userprofile%\my documents

::computer_name=laptop or desktop

:how to change the drive and folder together! Use the "d" switch: cd /d

:The way to get a "universal" environment variable is to place a set command in 
c:\autoexec.bat! Oct-17-2008

:
c:
cd\!affinity\tegu
cd

set /p Counter=<Script_Runs.txt
Incrementor %Counter% >Script_Runs.txt

set script_file=show_data
OSQL -n -S (local) -d ProjectX_Jun_27 -E -i %script_file%.sql -o 
%savannah%\Tegu\Script_Log_Files\%counter%_%script_file%.log

:This worked on Jul-11-2007 in Tegu.
OSQL -S (local) -d ProjectX_Jun_27 -E -i %savannah%\Tegu\gather_statistics.sql -o 
"%savannah%\Tegu\Script_Log_Files\gather_statistics.log"

:See the file called "%savannah%\belfry\test_batch_file_proving_ground.bat" for working 
samples.

:How to do an "AND" statement in a batch file. lk#2

 rem They both exist, so delete the closed version.
if exist mz.asc (if exist mzcl.jpg del /f mzcl.jpg)

:echo y | del c:\0\*.*

:cmd /T:4e works.

:sort < names.txt > list.txt use the file names.txt as input to sort - output from sort is 
sent to the file list.txt.

:dir | more: displays 1 page at a time

:Put a "pause" statement at the end of a batch file if you want the window to stay open so you 
can see what the hell is going on.

:echo f | xcopy timestamp3.txt timestamp4.txt

:Use cd mu* to change to the Multi-Edit folder, for example. This is much easier than typing
out the whole folder name. lk#2

:
@if /I "%LANGPARAM%"=="ENG" (goto PROCESS
)else if /I "%LANGPARAM%"=="FR"      (goto PROCESS
)else if /I "%LANGPARAM%"=="PTG"     (goto PROCESS
)else if /I "%LANGPARAM%"=="SPN"     (goto PROCESS
)else if /I "%LANGPARAM%"=="ARAB"    (goto PROCESS)

:ERROR
@echo * * * * * * * * * * * * * * * * * * * *
@echo Two input parameters are required:
@echo IMPORT FILE: drive:\path\import_file
@echo LANGUAGE:    eng, fr, spn, ptg or arab
@echo * * * * * * * * * * * * * * * * * * * *
@pause
m exit

:PROCESS

:if /i not "%computername%"=="JRJ4550" egress

:if exist "%savannah%\mz.asc" egress_batch_file_now_with_errors_2.bat Immanuel_Exists

:if exist ? goto error_exists

:command line asynchronous

:Learn how to run batch files that don't close their windows.

::Drag changedball.bat into the run command, then precede that line with "cmd /k".

:
IF NOT EXIST ..\INSTALLATION\PREREQUISITES mkdir ..\INSTALLATION\PREREQUISITES

:
echo waiting for 5 seconds for resources to finish cleaning up
ping 1.1.1.1 -n 5 -w 60000 >NUL

:Searching for all files with the word proxy in them: *proxy*.*

:[filename] where the filename contains a y to answer choice questions.

:Use the start command to run a program within a batch file and then have the command prompt
window close, while the program that you started may continue to run.

:echo Milestone_Marker_88%local_drive%\!\-_log.txt

:The BELL BEL character ASCII 007 can be had many ways including from the command line:

from the command line using the character code 007 with the ALT key, ECHO ALT-007 without
the quotes

:%comspec% /k batch file name goes here

:To copy only newer files from subfolder a to b: xcopy /r /y /d /s /v .\a .\b

: | more: display one page at time

:
Note that the following line starts a new instance of Multi-Edit, which is usually
not desirable.

start "C:\Program Files\Multi-Edit 2008\Mew32.exe" c:\a\Copy_of_CMAC.log

Instead use this line:

"C:\Program Files\Multi-Edit 2008\Mew32.exe" c:\a\Copy_of_CMAC.log

:
goto _This_Is_How_You_Add_2_Numbers
goto _Section_1
goto _Section_2
goto _Section_3
goto _Section_4
goto _Section_5

:_This is how you send a string as a command line parameter.
call %savannah%\belfry\Test2.bat "Hey brother!"

:_This is hou you do a local variable. All set statements after this will be local to this 
rem batch file.
setlocal

:_This is how you dynamically name a variable, thus making it a local variable.
set time_snapshot=%time%
set local_debug_mode_%time_snapshot%=50

set filename=%0
set local_debug_mode_%filename%=50
set local_debug_mode_variable=local_debug_mode_%filename%
title Batch file %0 is running.

echo 11 %(local_debug_mode_%filename%)%
echo 10 (%local_debug_mode_(%filename%)%)
echo 9 %local_debug_mode_(%filename%)%
echo 1 "%local_debug_mode_variable%"
echo 2 %%local_debug_mode_variable%%
echo 3 %local_debug_mode_variable%

:These don't work.
echo 4 %local_debug_mode_%filename%
echo 5 %filename%
echo 6 %local_debug_mode_"%filename%"%
echo 7 %local_debug_mode_%0%
echo 8 %local_debug_mode_%filename%%
echo 18 %local_debug_mode_%%filename%
echo 19 %%local_debug_mode_variable%

echo 12 %%0
echo %%0%
echo %0
echo %0%
echo "%0"
echo 17 %0_1

:_Section_4
echo.
echo Section 4: More Experimentation
echo ------------------------------------------------------------------------------

echo This is how you do double if statements.
set testmode=true
c:
cd\
if not exist testfolder md testfolder
if "%testmode%"=="true" if /i exist "c:\testfolder" echo true

if "%~1" == "" echo No command line parameter was passed.
if not "%~1" == "" echo %1 parameter was passed.

:This works.

::if "%testmode%"=="true" echo true

goto _xit

echo This is how you grab user input from the command line.
type c:\a\remove_special_characters_instructions.txt

set /P user_option=Press a key and hit enter to make your choice:

echo.
echo %user_option%


echo This is how you enforce the passing of a parameter.
if /i '%1' == '' echo You must enter a parameter.
if /i '%1' == '' goto _xit

echo This is how you write an if statement.
if /i '%computername%'=='Jonathans_HP' goto I_am_working_on_my_laptop
echo I am working on the server.
goto leapfrog

:I_am_working_on_my_laptop
echo I am working on my laptop.

:leapfrog

goto _xit

echo Here's how to count to ten.

set Counter=0

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

:_Section_3 Notice that the comment on this line DOES NOT interfere with the label.
echo.
echo Section 3: Experimentation
echo ------------------------------------------------------------------------------

set computer_alias=_Laptop

echo This is how you use the increment function, the brute force way.
set Counter=10
Incrementor %Counter% >%savannah%\belfry\batch_file_database\Incrementor.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Incrementor.txt
echo %Counter%

:_This_Is_How_You_Add_2_Numbers
echo This is how you add 2 numbers in a batch file. (skw How to Add 2 Numbers)
set /p Counter=<%savannah%\belfry\batch_file_database\Adder.txt
echo Initial Counter: %Counter%
set /a Counter=%counter%+1

attrib -r %savannah%\belfry\batch_file_database\Adder.txt
echo %Counter%>%savannah%\belfry\batch_file_database\Adder.txt
echo Incremented Counter: %Counter%
goto _xit

:Now_Playing

rem This is how you change the drive as well as the folder.
cd /d

echo Test
echo %0

:Non-Affinity File Flag
goto _xit

:This works.
echo Test
set a=1
set /a a=%a%+1
echo %a%

goto _xit


echo This is how you add 2 numbers, the brute force way.
set Counter=1000
Add_2_Numbers %Counter% 31 >%savannah%\belfry\batch_file_database\Adder.txt
set /p Counter=<%savannah%\belfry\batch_file_database\Adder.txt
echo %Counter%


set goto_sensitive=GOTOSENSITIVE
goto %goto_sensitive%
echo Hey! Why don't I print?

:gotosensitive
echo Goto statements are case-insensitive.

goto %computer_alias%
echo Hey! Why don't I print?

:_Laptop
echo I print.



echo This is how you set an environment variable from the contents of a file!
set /p comp=<%savannah%\belfry\batch_file_database\hello_world.txt
echo %comp%


set part1=bull
set part2=shit
set concatenate=%part1%%part2%
echo.
echo This is how you do concatenation in batch files: %concatenate%.



goto _xit

Comments Regarding This Batch File
----------------------------------



:_

:configuration_path_validation

set fp=* Validate path.

echo.
echo %fp%
echo.

set target_folder=%my documents%\Dropbox\Savannah Backups\%Current_JDate%\reach out\
set target_folder=%my documents%\Dropbox\Savannah Backups\%Current_JDate%\reach out\
set target_folder=%my documents%\Dropbox\Savannah Backups
set target_folder=!
set target_folder=%my documents%
set target_folder="%my documents%"
set target_folder=%savannah%

c:

rem cd\%target_folder%

echo %savannah%
echo %my documents%
echo %reach out%

rem echo  My Documents: %my documents%
rem echo Target Folder: %target_folder%

cd

m exit



:_

:configuration_class_path

rem Last Updated: Sep-20-2016

set fp=* Validate class path.

echo.
echo %fp%
echo.

rem Last Updated: Sep-19-2016 mru

set classpath=c:\Program Files (notepad_installation_path)\Java\jdk1.7.0_71\bin
set classpath=c:\Program Files (notepad_installation_path)\Java\jdk1.7.0_71
set OLDCLASSPATH=%CLASSPATH%
set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

echo %oldclasspath%
echo %classpath%

m exit



:_

:configuration_environment_variable_paths1

set fp=* configuration_environment_variable_paths1

echo.
echo %fp%
echo.

set drive=c:
set cpath=program files\java\jdk1.8.0_102\jre\lib
set classpath=%drive%\%cpath%

echo     Drive: %drive%
echo     Cpath: %cpath%
echo Classpath: %classpath%
echo.

cd\%cpath%
cd

goto configuration_run_me
m exit



:_

:configuration_environment_variable_paths2

set fp=* configuration_environment_variable_paths2

echo.
echo %fp%
echo.

set drive=c:
set cpath=program files\java\jdk1.8.0_102\bin
set classpath=%drive%\%cpath%

echo     Drive: %drive%
echo     Cpath: %cpath%
echo Classpath: %classpath%
echo.

cd\%cpath%
cd

goto configuration_run_me
m exit



:_

:configuration_testing_equality

set fp=* configuration_testing_equality

echo.
echo %fp%
echo.
if %classpath%=="" echo 1
if %classpath%=="c:\pcarss\web" echo 2
if %classpath%=="c:\pcarss\web" echo 3
if "%classpath%" == "c:\pcarss\web" echo 4
if "%classpath%" == "C:\pcarss\Web" echo 5

rem Gothca! Notice that is prints out 6 and not 4 or 5. Therefore it is case sensitive!
if "%classpath%" == "C:\pcarss\web" echo 6
if %classpath% == "C:\pcarss\web" echo 7
if /i "%classpath%" == "c:\pcarss\web" echo 8

echo %classpath%

m exit



:_

Metadata: Track Size (!tst)

    Date       Lines      Bytes    Funcs  Notes
 -----------  ------  ---------  -------  ---------------------------------------------------

: Dec-7-2018   8,143    128,791      367

: Feb-9-2018   6,576    111,212      289

:Sep-21-2016   2,228     39,414       92



:_

;Batch File Code Keepers - How To Do a For Loop (!for) (skw Batch File For Loop)

:Findstr

rem This works. findstr %sc% *.*

rem for /r "%folder_to_search%" %%f in ("*.*") do findstr %sc%
rem for /r "%folder_to_search%" %%f in ("*.*") do findstr "%%f" %sc%

rem This works.
rem for /r "%folder_to_search%" %%f in ("*.*") do findstr %sc% "%%f"

:This worked on Sep-8-2013. This includes all subfolders. It seems that the way double quotes 
are used in the for statement is inconsistent.

::for /r "%podcast_folder%" %%f in ("*.mp3") do move "%%f" %staging_area%

::This works as desired. Gotcha! If there are spaces in the path or filename, it will blow up.

:FOR %%J IN (*.txt) DO type %%J >> "All Files Appended into one big file.txt"

FOR /R "C:\Dev\Analyst Notebook Plugin" %%J IN (*.cs) do type "%%J">>%output_file%

set pgb=$Affinity

:This works exactly as expected.

::FOR /R "C:\Dev\Analyst Notebook Plugin" %%J IN (*.cs) do echo %%J

::FOR /R "C:\!!\Plugin" %%J IN (*.cs) do copy %%J %output_file%

::FOR /R "C:\Dev\Analyst Notebook Plugin" %%J IN (*.cs) do type %%J

::FOR /R "C:\Dev\Analyst Notebook Plugin" %%J IN (*.cs) do echo %%J>>%output_file%

::FOR /R "C:\Dev\Analyst Notebook Plugin" %%J IN (*.cs) DO type %%J>>%output_file%

:This works, but will only copy the last file.

:This works. It lists all the files in the $Affinity folder.

FOR %%J IN (%savannah%\*.*) do echo %%J

:This works.

FOR /R c:\!!\%pgb% %%J IN (*.com) do ren %%J *.comq

:Where %%f equals a file and (*) means all files.

::for %%f in (b*.*) do echo %%f>>c:\j.txt

::for %%f in (*) do echo %%f

::for %%f in (*.*) do echo %%f

::for %%j in (*.*) do echo %%j

:This can be used to rename files as well.

::Cool syntax for copying stuff thanks to Project X.

IF EXIST "c:\program files\common files\i2 Shared\Images 6\Basic\Screen\Icons" FOR %%f IN 
(.\Analyst_Notebook_6_Icons\*.bmp) DO xcopy /R /Y /S %%f "c:\program files\common files\i2 
Shared\Images 6\Basic\Screen\Icons"

:This words.

:FOR /R c:\!!\%pgb% %%J IN (*.com) do echo %%J

:This words.

:FOR /R c:\!!\!affinity %%J IN (*.com) do ren %%J *.comx

:This works.

:FOR /R c:\!affinity %%J IN (*.com) do echo %%J

:echo f | FOR /R "C:\Dev\Analyst Notebook Plugin" %%J IN (*.cs) do xcopy /y "%%J" 
c:\!!\CS_Copies\%%j

:echo f | FOR /R "C:\Dev\Analyst Notebook Plugin" %%J IN (*.cs) do xcopy /y "%%J" 
c:\!!\CS_Copies\%%j

:for %%f in ("..\Different Types of Files\*.*") do trid.exe "%%f">>"file identifier 
report.txt"

"c:\Program Files\Multi-Edit 2008\Mew32.exe" "file identifier report.txt"

m exit



:_

:configuration_environment_variable_paths4

set fp=* configuration_environment_variable_paths4

echo.
echo %fp%
echo.

set drive=c:
set cpath=program files\java\jdk1.8.0_102\jre\lib\ext
set classpath=%drive%\%cpath%

echo     Drive: %drive%
echo     Cpath: %cpath%
echo Classpath: %classpath%
echo.

cd\%cpath%
cd

goto configuration_run_me
m exit



:_

:configuration_environment_variable_paths5

set fp=* configuration_environment_variable_paths5

echo.
echo %fp%
echo.

set drive=c:
set cpath=app\jonathan.r.jones\product\11.2.0\dbhome_3\jdbc\lib
set classpath=%drive%\%cpath%

echo     Drive: %drive%
echo     Cpath: %cpath%
echo Classpath: %classpath%
echo.

cd\%cpath%
cd

goto configuration_run_me
m exit



:_

:configuration_run_me

set fp=* configuration_environment_run_me

echo.
echo %fp%
echo.

if /i "%classpath%" == "c:\pcarss\web" goto configuration_environment_variable_paths6
if /i "%classpath%" == "c:\pcarss\web" goto configuration_environment_variable_paths1
if /i "%classpath%" == "c:\pcarss\web" goto configuration_environment_variable_paths2
if /i "%classpath%" == "c:\pcarss\web" goto configuration_environment_variable_paths3
if /i "%classpath%" == "c:\pcarss\web" goto configuration_environment_variable_paths4
if /i "%classpath%" == "c:\pcarss\web" goto configuration_environment_variable_paths5

set OLDCLASSPATH=%CLASSPATH%
set classpath=c:\!!\resources;%classpath%
set classpath=

set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

echo Classpath: %classpath%
echo.

cd\!!\bfo3\example

echo.
echo Current Folder:
cd

pause

javac SampleApplication.java

@ECHO Running SampleApplication
java SampleApplication samples\HelloWorld.xml

rem samples\HelloWorld-chinese.xml samples\HelloWorld-japanese.xml samples\HelloWorld-hindi.xml samples\Colors.xml samples\FormFill.xml samples\Giro.xml samples\Graphs.xml samples\Lists.xml samples\MetaData.xml samples\NestedTables.xml samples\PDFUserGuide.xml samples\userguide.xml samples\VectorGraphics.xml samples\HelloWorld-arabic.xml samples\pdfa-rgb.xml samples\pdfa-cmyk.xml

m exit



:_

:configuration_environment_variable_paths6

set fp=* configuration_environment_variable_paths6

echo.
echo %fp%
echo.

set drive=c:
set cpath=Users\jonathan.r.jones\Documents\Dropbox\NES\Eclipse Workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\pcarss\WEB-INF\lib\

set classpath=%drive%\%cpath%

echo     Drive: %drive%
echo     Cpath: %cpath%
echo Classpath: %classpath%
echo.

cd\%cpath%
cd

goto configuration_run_me
m exit



:_

:configuration_environment_variable_paths3

set fp=* configuration_environment_variable_paths3

echo.
echo %fp%
echo.

set drive=c:
set cpath=Development\server_runtimes\tomcat\apache-tomcat-7.0.63\lib

set classpath=%drive%\%cpath%

echo     Drive: %drive%
echo     Cpath: %cpath%
echo Classpath: %classpath%
echo.

cd\%cpath%
cd

goto configuration_run_me
m exit



:_

:configuration_environment_variable_paths7

set fp=* configuration_environment_variable_paths7

echo.
echo %fp%
echo.

set drive=c:
set cpath=!

set classpath=%drive%\%cpath%

echo     Drive: %drive%
echo     Cpath: %cpath%
echo Classpath: %classpath%
echo.

cd\%cpath%
cd

goto configuration_run_me_2
m exit



:_

set fp=* Compile HW5.

echo.
echo %fp%
echo.

cd\!

echo 1.
javac "HW5.java"
echo 2.
java -cp . HW5.class
echo 3.

m exit



:_

set fp=* Compile HW5. Second try.

echo.
echo %fp%
echo.

cd\!
set classpath=

echo 1.
javac "HW5.java"
echo 2.
java -cp . HW5.class
echo 3.

m exit



:_

set fp=* Compile HW5. Second try.

echo.
echo %fp%
echo.

cd\!
set classpath=

echo 1.
javac "HW5.java"
echo 2.
java -cp . HW5.class
echo 3.

m exit



:_

set fp=* Compile. If the class file already exists, it refreshes, i. e. recompiles.

rem The compiled class uses the class name instead of the filename.

echo.
echo %fp%
echo.

cd\!

echo 1.
javac "HW4.java"
echo 2.
javac HW4.java
echo 3.

m exit



:_

set fp=* Run me 5. Removed classpath line. It's still working.

echo.
echo %fp%
echo.

cd\!
java -cp . HelloWorldApp

m exit



:_

set fp=* Run me 4. This works. Notice that if take out the "cd", I get the same error message.
rem that I do with my main problem.

echo.
echo %fp%
echo.

set classpath=
cd\!
java -cp . HelloWorldApp

m exit



:_

set fp=* Compile and run, the minimalist code version.

echo.
echo %fp%
echo.

cd\!
javac HW4.java
java -cp . HelloWorldApp

m exit



:_

set fp=* Compile and run runme. Does not compile.

echo.
echo %fp%
echo.

cd\!
rem cd bfo3\example
cd

echo 1.
set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

javac SampleApplication.java

echo 2.
rem java -cp . SampleApplication HelloWorld.xml

rem java -cp . HW5
echo 3.

m exit



:_

set fp=* Use other folder. Works fine. What about the other folder is helping me?

echo.
echo %fp%
echo.

cd\!!
cd bfo3\example
cd

echo 1.
set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

javac SampleApplication.java

echo 2.
rem java -cp . SampleApplication HelloWorld.xml

rem java -cp . HW5
echo 3.

m exit



:_

set fp=* Remove classpath and it won't compile.

echo.
echo %fp%
echo.

cd\!!
cd bfo3\example
cd

set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

echo 1.

javac SampleApplication.java

echo 2.

m exit



:_

set fp=* bfo4! Start removing stuff until it breaks. The only thing it needs to compile is the 
rem java file and the classpath. This is proof.

echo.
echo %fp%
echo.

cd\!!
cd bfo4\example
cd

set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

echo 1.

javac SampleApplication.java

echo 2.

m exit



:_

set fp=* Compile and run 5. Notice no classpath.

echo.
echo %fp%
echo.

cd\!
echo 1.
javac HW5.java
echo 2.
java -cp . HW5
echo 3.

m exit



:_

set fp=* Compile and run 6. Adding ".class" breaks the run.

echo.
echo %fp%
echo.

cd\!
echo 1.
javac HW5.java
echo 2.
java -cp . HW5.class
echo 3.

m exit



:_

set fp=* Cp and dot experiment. With them it works.

echo.
echo %fp%
echo.

cd\!
echo 1.
javac HW5.java
echo 2.
java -cp . HW5
echo 3.

rem m exit



:_

set fp=* Cp and dot experiment: without them, it won't work.

echo.
echo %fp%
echo.

cd\!
echo 1.
javac HW5.java
echo 2.
java HW5
echo 3.

m exit



:_

set fp=* This is the canonical BFO error with the verbose switch.

echo.
echo %fp%
echo.

cd\!!
cd bfo3\example
cd

set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

echo 1.

javac SampleApplication.java

echo 2.

java -verbose SampleApplication samples\HelloWorld.xml

echo 3.

m exit



:_

set fp=* Copy text files.

echo.
echo %fp%
echo.

cd\!!

cd

dir/s *.txt

for /r "c:\!!" %%f in ("*.txt") do copy "%%f" "c:\!!\Test Text Files"

m exit



:_

set fp=* Concatenate text files.

echo.
echo %fp%
echo.

cd\!!\Test Text Files

cd

type *.txt>c:\a\j

m exit



:_

set fp=* Copy java files.

echo.
echo %fp%
echo.

for /r "c:\pcarss" %%f in ("*.java") do copy "%%f" "c:\!!\Copied Java Files"

m exit



:_

set fp=* Concatenate java files.

echo.
echo %fp%
echo.

cd\!!\Copied Java Files

cd

type *.java>c:\a\j

m exit



:_

set fp=* h6.

rem This works.

echo.
echo %fp%
echo.

cd\!
javac h6.java
java -cp . h6

m exit



:_

set fp=* Hyposthes: It's the SampleApp that has sauce that allows it to run without the cp and period.

rem Does not work.

echo.
echo %fp%
echo.

cd\!
cd

set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

echo 1.

javac SampleApplication.java

echo 2.

java SampleApplication samples\HelloWorld

echo 3.

m exit



:_

set fp=* Remove classpath to see what happens.

rem Outcome: Yes it broke it.

echo.
echo %fp%
echo.

cd\!!
cd bfo3\example
cd

echo 1.

javac SampleApplication.java

echo 2.

java SampleApplication samples\HelloWorld

echo 3.

m exit



:_

set fp=* Here are the 3 ways that I figured out how to run a current folder java app.

echo.
echo %fp%
echo.

echo Outcome: 

cd\!

echo.
echo First Way: Use cp and period.

javac h6.java
java -cp . h6

echo.
echo Second Way: Set classpath to nothing and remove -cp and period.

set classpath=
javac h6.java
java h6

echo.
echo Third Way: Set classpath to dot.

set classpath=.
javac h6.java
java h6

m exit



:_

:configuration_run_me_2

set fp=* configuration_environment_run_me_2

echo.
echo %fp%
echo.

if /i "%classpath%" == "c:\pcarss\web" goto configuration_environment_variable_paths7

set OLDCLASSPATH=%CLASSPATH%
set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

set classpath=

echo Classpath: %classpath%
echo.

cd\!

echo.
echo Current Folder:
cd

rem javac "HW4.java"

java -cp . HelloWorldApp

rem java -cp . HelloWorldApp

rem java -cp . greetings.HW3

rem java -cp . greetings.HelloWorldApp

m exit



:_

set fp=* BFO7: Canonical error.

echo.
echo %fp%
echo.

echo Outcome: Canonical error.
echo.

cd\!!\bfo7

set classpath=.;.\bforeport.jar;%classpath%

echo Step 1. Compile

javac SampleApplication.java

echo Step 2. Run

java SampleApplication samples\Giro.xml

m exit



:_

set fp=* Experimenting with the Path variable.

echo.
echo %fp%
echo.

echo Outcome: 
echo.

echo Conclusion: 
echo.

set classpath=.;.\bforeport.jar;

echo Classpath: %classpath%
echo.

set path=C:\Users\jonathan.r.jones\Documents\!savannah\belfry;

rem set path=%path%;
set path=%path%;C:\Program Files\Java\jdk1.8.0_102\bin;

echo Path: %path%

echo.

cd\!!\bfo7

echo.
echo Current Folder:
cd

echo.
echo Step 1. Comile

javac SampleApplication.java

pause
exit

echo.
echo Step 2. Run

java SampleApplication samples\Giro.xml

m exit



:_

set fp=* CD var.

echo.
echo %fp%
echo.

echo Outcome:
echo.

echo Conclusion:
echo.

echo %cd%

m exit



:_

set fp=* Runme.

echo.
echo %fp%
echo.

echo Outcome:
echo.

echo Conclusion:
echo.

cd\!!\bfo8\example

set OLDCLASSPATH=%CLASSPATH%
set classpath=C:\Program Files\Java\jdk1.8.0_102\jre

set CLASSPATH=.;..\bfopdf.jar;..\bfopdf-cmap.jar;..\bfopdf-qrcode.jar;..\bfopdf-stamp.jar

echo Step 1. Compile
javac Annotations.java BatchFormFill.java CharacterMap.java Colors.java Concatenate.java CreateBook.java Dump.java Fonts.java FormCreation.java FormFill.java FormProcess.java FormVoodoo.java HelloUnicodeWorld.java HelloWorld.java ImageToPDF.java Images.java Join2Up.java LayoutExample.java PDFToImage.java PathExample.java PrintPDF.java Sign.java Stamp.java Unicode.java ExtractText.java

echo Step 2. Run
@ECHO Running HelloWorld
java HelloWorld

m exit
@ECHO Running PathExample
java PathExample
@ECHO Running Images
java Images
@ECHO Running Fonts
java Fonts
@ECHO Running Colors
java Colors
@ECHO Running Concatenate
java Concatenate HelloWorld.pdf PathExample.pdf Images.pdf Colors.pdf
@ECHO Running Annotations
java Annotations
@ECHO Running LayoutExample
java LayoutExample
@ECHO Running ImageToPDF
java ImageToPDF resources\demon.tif
@ECHO Running CharacterMap for Times-Roman
java CharacterMap Times-Roman
@ECHO Running CreateBook
java CreateBook
@ECHO Running Stamp
java Stamp CreateBook.pdf
@ECHO Running Join2Up
java Join2Up PathExample.pdf HelloWorld.pdf Annotations.pdf Fonts.pdf CharacterMap.pdf

@ECHO Running FormCreation
java FormCreation
@ECHO Running FormFill FormCreation.pdf
java FormFill FormCreation.pdf
@ECHO Running FormProcess FormFill.pdf
java FormProcess FormFill.pdf
@ECHO Running FormVoodoo
java FormVoodoo
@ECHO Running BatchFormFill
java BatchFormFill
@ECHO Running PDFToImage FormFill.pdf
java PDFToImage FormFill.pdf
@ECHO Running ExtractText Fonts.pdf
java ExtractText Fonts.pdf > Fonts.txt
@ECHO Running HelloUnicodeWorld with %windir%\fonts\times.ttf
java HelloUnicodeWorld %windir%\fonts\times.ttf
@ECHO Running Unicode with %windir%\fonts\times.ttf
java Unicode %windir%\fonts\times.ttf

@ECHO Running Sign on Annotations.pdf
keytool -genkeypair -keystore testkeystore.jks -dname "C=GB, O=Test Org, CN=Test Key" -storepass password -keypass password
java Sign --keystore testkeystore.jks --password password Annotations.pdf

@ECHO Running Dump on Annotations.pdf
java Dump Sign.pdf

set CLASSPATH=%OLDCLASSPATH%
set OLDCLASSPATH=

m exit



:_

set fp=* Runme BFO 10

echo.
echo %fp%
echo.

echo Outcome:
echo.

echo Conclusion:
echo.

cd\!!\bfo10\example

set CLASSPATH=.;..\bforeport.jar;%CLASSPATH%

javac SampleApplication.java

@ECHO Running SampleApplication
java SampleApplication samples\HelloWorld.xml

m exit



:_

set fp=* Dotnet Core Version #

echo.
echo %fp%
echo.

"c:\program files\dotnet\dotnet" "-v"

rem dotnet -v

m exit



:_

set fp=* Parser classpath testing.

echo.
echo %fp%
echo.

echo Outcome: Setting classpath to nothing gets the canonical error, whereas setting
echo classpath to the other values is producing different outcomes.
echo 2 3 line JAXP statement about fallback values.
echo.

echo Conclusion: More googling(?) is necessary.
echo.

set classpath=C:\Development\devtools\database\oracle\oracle10g_10.2.0.1\client\oui\jlib\xmlparserv2.jar
set classpath=C:\Development\devtools\scrapers\jacada\jacada_4.0\Jacada_Integrator_4.0\tomcat\common\endorsed\xmlParserAPIs.jar
set classpath=C:\Development\ide\jdeveloper\JDev10g\lib\xmlparserv2.jar
set classpath=C:\Development\ide\jdeveloper\JDev10g_1012\lib\xmlparserv2.jar
set classpath=C:\Development\ide\jdeveloper\JDev9i\lib\xmlparserv2.jar
set classpath=C:\Development\sqldeveloper\modules\oracle.xdk_11.1.0\xmlparserv2_sans_jaxp_services.jar
set classpath=C:\Development\sqldeveloper\modules\oracle.xdk_11.1.0\xmlparserv2.jar

rem 2. Canon
set classpath=C:\!!\SAX 2 Jars\xmlParserAPIs-2.6.2.jar

rem 3. Canon
set classpath=C:\!!\SAX 2 Jars\sax-2.0.1.jar

rem 4. Upgrade JAXP.
set classpath=C:\Development\sqldeveloper\modules\oracle.xdk_11.1.0\xmlparserv2_jaxp_services.jar

rem 5.
set classpath=C:\Program Files\Java\jdk1.8.0_102\jre

rem 1. Canon
set classpath=

set classpath=.;.\bforeport.jar;%classpath%;

echo Classpath: %classpath%
echo.

cd\!!\bfo10\example

echo Current Folder: %cd%

echo.
echo Step 1. Comile

javac SampleApplication.java

echo.
echo Step 2. Run

java -Djaxp.debug=1 SampleApplication samples\Giro.xml

m exit



:_

set fp=* Using the debug statement.

echo.
echo %fp%
echo.

echo Outcome: Canonical error albeit with more debugging information.
echo.

echo Conclusion: 
echo.

set classpath=.;.\bforeport.jar;

echo Classpath: %classpath%
echo.

cd\!!\bfo7

echo.
echo Current Folder:
cd

echo.
echo Step 1. Comile

javac SampleApplication.java

echo.
echo Step 2. Run

java -Djaxp.debug=1 SampleApplication samples\Giro.xml

m exit



:_

set fp=* Identify Arguments

echo.
echo %fp%
echo.

call "identify arguments" "hi[blank]" "nuther"

m exit



:_

set fp=* Try calling an lnk file.

echo.
echo %fp%
echo.

rem cd\%savannah%\shortcuts

echo Current Folder: %cd%

rem c:\a\cmd.exe.lnk

m exit



:_

set fp=* Path issue.

echo.
echo %fp%
echo.

echo Path: %path%


m exit



:_

set fp=* Canonical @ BFO11

echo.
echo %fp%
echo.

echo Outcome: Canonical Error

cd\!!
cd bfo11\example

echo Current Folder: %cd%

set classpath=
set classpath=.;..\bforeport.jar;%classpath%

echo 1. Compile

javac SampleApplication.java

echo 2. Run

java -Djaxp.debug=1 SampleApplication samples\HelloWorld.xml

m exit



:_

set fp=* Canonical @ BFO12

echo.
echo %fp%
echo.

echo Outcome: Canonical Error

cd\!!
cd bfo12\example

echo Current Folder: %cd%

rem set classpath=
rem set classpath=.;..\bforeport.jar;%classpath%

echo 1. Compile

javac -classpath ..\bforeport.jar;. SampleApplication.java

echo 2. Run

java -classpath ..\bforeport.jar;. SampleApplication samples\HelloWorld.xml

m exit



:_

set fp=* Echo path.

echo.
echo %fp%
echo.

echo %path%

m exit



:_

set fp=* Canonical @ BFO13

echo.
echo %fp%
echo.

echo Outcome: Canonical Error

cd\!!
cd \!!\bfo13\bforeport-1.1.60\example

echo Current Folder: %cd%

rem set classpath=
rem set classpath=.;..\bforeport.jar;%classpath%

echo 1. Compile

javac -classpath ..\bforeport.jar;. SampleApplication.java

echo 2. Run

java -classpath ..\bforeport.jar;. SampleApplication samples\HelloWorld.xml

m exit



:_

set fp=* H.'s settings

echo.
echo %fp%
echo.

cd \!!\bfo12\example

echo Current Folder: %cd%


set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_92
set PATH=%PATH%;%JAVA_HOME%\bin

echo 1. Compile
javac -classpath .;..\bforeport.jar SampleApplication.java

pause


echo 2. Run
java -classpath .;..\bforeport.jar SampleApplication samples\HelloWorld.xml
pause



m exit



:_

set fp=* H.'s settings 2

echo.
echo %fp%
echo.

cd \test\bforeport-1.1.60\example

echo Current Folder: %cd%

rem set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_92
rem set PATH=%PATH%;%JAVA_HOME%\bin

echo 1. Compile
javac -classpath .;..\bforeport.jar SampleApplication.java
 
echo 2. Run
java -classpath .;..\bforeport.jar SampleApplication samples\HelloWorld.xml

m exit



:_

set fp=* AA test.

echo.
echo %fp%
echo.

cd \aa\bforeport-1.1.60\example

echo Current Folder: %cd%

set classpath=.;..\bforeport.jar

echo 1. Compile
javac SampleApplication.java
 
echo 2. Run
java SampleApplication samples\HelloWorld.xml

m exit



:_

set fp=* FormFill test.

echo.
echo %fp%
echo.

cd \aa\bforeport-1.1.60\example

echo Current Folder: %cd%

set classpath=.;..\bforeport.jar

echo 1. Compile
javac SampleApplication.java
 
echo 2. Run
java SampleApplication samples\FormFill.xml

m exit



:_

set fp=* FormFill 2 test.

echo.
echo %fp%
echo.

cd \Users\jonathan.r.jones\Documents\Dropbox\NES\Java Support

echo Current Folder: %cd%

set classpath=.;..\bforeport.jar

echo 1. Compile
javac SampleApplication.java
 
echo 2. Run
java SampleApplication samples\FormFill2.xml

m exit



:_

set fp=* Test all xmls.

echo.
echo %fp%
echo.

cd \aa\bforeport-1.1.60\example

echo Current Folder: %cd%

set classpath=.;..\bforeport.jar

echo 1. Compile
javac SampleApplication.java
 
echo 2. Run
java SampleApplication samples\pdfa-cmyk.xml

m exit



:_

set fp=* At Echo versus Echo

echo.
echo %fp%
echo.

echo hi (without at)
@echo hi (using at)


m exit



:_

set fp=* The "ver" and find commands.

echo.
echo %fp%
echo.

echo 1.
ver

echo 2.
ver | find /i "version 6.1."

if %errorlevel%==0 echo Zero

echo 3.
ver | find /i "version 6.3."

if %errorlevel%==0 echo 2

echo 4.
ver | find /i "version 10"

if %errorlevel%==0 echo 3



m exit



:_

set fp=* Delete CVS files from PCARSS.

echo.
echo %fp%
echo.

del /f c:\pcarss\Documentation\CVS\Entries
del /f c:\pcarss\Documentation\CVS\Repository
del /f c:\pcarss\Documentation\CVS\Root
del /f c:\pcarss\deploy\CVS\Entries
del /f c:\pcarss\deploy\CVS\Repository
del /f c:\pcarss\deploy\CVS\Root
del /f c:\pcarss\src\CVS\Entries
del /f c:\pcarss\src\CVS\Repository
del /f c:\pcarss\src\CVS\Root
del /f c:\pcarss\src\mil\CVS\Entries
del /f c:\pcarss\src\mil\CVS\Repository
del /f c:\pcarss\src\mil\CVS\Root
del /f c:\pcarss\src\mil\dcma\CVS\Entries
del /f c:\pcarss\src\mil\dcma\CVS\Repository
del /f c:\pcarss\src\mil\dcma\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\access\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\access\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\access\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\bean\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\bean\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\bean\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\cache\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\cache\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\cache\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\convert\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\convert\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\convert\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\cronjobs\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\cronjobs\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\cronjobs\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\dao\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\dao\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\dao\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\dao\enums\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\dao\enums\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\dao\enums\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\dialect\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\dialect\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\dialect\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\model\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\model\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\model\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\parser\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\parser\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\parser\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\pdfgenerator\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\pdfgenerator\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\pdfgenerator\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\role\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\role\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\role\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\service\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\service\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\service\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\test\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\test\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\test\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\upload\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\upload\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\upload\CVS\Root
del /f c:\pcarss\src\mil\dcma\pcarss\util\CVS\Entries
del /f c:\pcarss\src\mil\dcma\pcarss\util\CVS\Repository
del /f c:\pcarss\src\mil\dcma\pcarss\util\CVS\Root
del /f c:\pcarss\web\CVS\Entries
del /f c:\pcarss\web\CVS\Repository
del /f c:\pcarss\web\CVS\Root
del /f c:\pcarss\web\META-INF\CVS\Entries
del /f c:\pcarss\web\META-INF\CVS\Repository
del /f c:\pcarss\web\META-INF\CVS\Root
del /f c:\pcarss\web\WEB-INF\CVS\Entries
del /f c:\pcarss\web\WEB-INF\CVS\Repository
del /f c:\pcarss\web\WEB-INF\CVS\Root
del /f c:\pcarss\web\WEB-INF\jspf\CVS\Entries
del /f c:\pcarss\web\WEB-INF\jspf\CVS\Repository
del /f c:\pcarss\web\WEB-INF\jspf\CVS\Root
del /f c:\pcarss\web\WEB-INF\lib\CVS\Entries
del /f c:\pcarss\web\WEB-INF\lib\CVS\Repository
del /f c:\pcarss\web\WEB-INF\lib\CVS\Root
del /f c:\pcarss\web\cronjobs\CVS\Entries
del /f c:\pcarss\web\cronjobs\CVS\Repository
del /f c:\pcarss\web\cronjobs\CVS\Root
del /f c:\pcarss\web\docs\CVS\Entries
del /f c:\pcarss\web\docs\CVS\Repository
del /f c:\pcarss\web\docs\CVS\Root
del /f c:\pcarss\web\help\Administrator\CVS\Entries
del /f c:\pcarss\web\help\Administrator\CVS\Repository
del /f c:\pcarss\web\help\Administrator\CVS\Root
del /f c:\pcarss\web\help\CVS\Entries
del /f c:\pcarss\web\help\CVS\Repository
del /f c:\pcarss\web\help\CVS\Root
del /f c:\pcarss\web\help\Contractor\CVS\Entries
del /f c:\pcarss\web\help\Contractor\CVS\Repository
del /f c:\pcarss\web\help\Contractor\CVS\Root
del /f c:\pcarss\web\help\Icons\CVS\Entries
del /f c:\pcarss\web\help\Icons\CVS\Repository
del /f c:\pcarss\web\help\Icons\CVS\Root
del /f c:\pcarss\web\help\Overview\CVS\Entries
del /f c:\pcarss\web\help\Overview\CVS\Repository
del /f c:\pcarss\web\help\Overview\CVS\Root
del /f c:\pcarss\web\help\PLCO\CVS\Entries
del /f c:\pcarss\web\help\PLCO\CVS\Repository
del /f c:\pcarss\web\help\PLCO\CVS\Root
del /f c:\pcarss\web\help\QAR\CVS\Entries
del /f c:\pcarss\web\help\QAR\CVS\Repository
del /f c:\pcarss\web\help\QAR\CVS\Root
del /f c:\pcarss\web\help\Screener\CVS\Entries
del /f c:\pcarss\web\help\Screener\CVS\Repository
del /f c:\pcarss\web\help\Screener\CVS\Root
del /f c:\pcarss\web\help\Support_PLCO\CVS\Entries
del /f c:\pcarss\web\help\Support_PLCO\CVS\Repository
del /f c:\pcarss\web\help\Support_PLCO\CVS\Root
del /f c:\pcarss\web\help_3_2\CVS\Entries
del /f c:\pcarss\web\help_3_2\CVS\Repository
del /f c:\pcarss\web\help_3_2\CVS\Root
del /f c:\pcarss\web\help_3_2\administrator\CVS\Entries
del /f c:\pcarss\web\help_3_2\administrator\CVS\Repository
del /f c:\pcarss\web\help_3_2\administrator\CVS\Root
del /f c:\pcarss\web\help_3_2\contractor\CVS\Entries
del /f c:\pcarss\web\help_3_2\contractor\CVS\Repository
del /f c:\pcarss\web\help_3_2\contractor\CVS\Root
del /f c:\pcarss\web\help_3_2\icons\CVS\Entries
del /f c:\pcarss\web\help_3_2\icons\CVS\Repository
del /f c:\pcarss\web\help_3_2\icons\CVS\Root
del /f c:\pcarss\web\help_3_2\overview\CVS\Entries
del /f c:\pcarss\web\help_3_2\overview\CVS\Repository
del /f c:\pcarss\web\help_3_2\overview\CVS\Root
del /f c:\pcarss\web\help_3_2\plco\CVS\Entries
del /f c:\pcarss\web\help_3_2\plco\CVS\Repository
del /f c:\pcarss\web\help_3_2\plco\CVS\Root
del /f c:\pcarss\web\help_3_2\qar\CVS\Entries
del /f c:\pcarss\web\help_3_2\qar\CVS\Repository
del /f c:\pcarss\web\help_3_2\qar\CVS\Root
del /f c:\pcarss\web\help_3_2\resource\CVS\Entries
del /f c:\pcarss\web\help_3_2\resource\CVS\Repository
del /f c:\pcarss\web\help_3_2\resource\CVS\Root
del /f c:\pcarss\web\help_3_2\screener\CVS\Entries
del /f c:\pcarss\web\help_3_2\screener\CVS\Repository
del /f c:\pcarss\web\help_3_2\screener\CVS\Root
del /f c:\pcarss\web\help_3_2\support_plco\CVS\Entries
del /f c:\pcarss\web\help_3_2\support_plco\CVS\Repository
del /f c:\pcarss\web\help_3_2\support_plco\CVS\Root
del /f c:\pcarss\web\help_3_2\whdata\CVS\Entries
del /f c:\pcarss\web\help_3_2\whdata\CVS\Repository
del /f c:\pcarss\web\help_3_2\whdata\CVS\Root
del /f c:\pcarss\web\help_3_2\whgdata\CVS\Entries
del /f c:\pcarss\web\help_3_2\whgdata\CVS\Repository
del /f c:\pcarss\web\help_3_2\whgdata\CVS\Root
del /f c:\pcarss\web\help_3_2\whxdata\CVS\Entries
del /f c:\pcarss\web\help_3_2\whxdata\CVS\Repository
del /f c:\pcarss\web\help_3_2\whxdata\CVS\Root
del /f c:\pcarss\web\jsp\CVS\Entries
del /f c:\pcarss\web\jsp\CVS\Repository
del /f c:\pcarss\web\jsp\CVS\Root



:_

:configuration_run_me_3

set fp=* configuration_environment_run_me_3

echo.
echo %fp%
echo.

set classpath=
java -cp . HelloWorld

exit/b



:_

set fp=* Delete the class file.

rem Outcome: This works!

echo.
echo %fp%
echo.

set classpath=
cd\a
java -cp . HelloWorld

m exit



:_

set fp=* Get_Timestamp_With_No_Spaces

rem Outcome: This works!

echo.
echo %fp%
echo.

cd\a
javac Get_Timestamp_With_No_Spaces.java
java -cp . Get_Timestamp_With_No_Spaces>c:\a\java_timestamp.txt
set /p java_timestamp=<c:\a\java_timestamp.txt

echo jt:%java_timestamp%

m exit



:_

set fp=* Get timestamp 2.

echo.
echo %fp%
echo.

set classpath=%dropbox%\it\java\
cd %classpath%

rem One-time action.
rem javac Get_Timestamp_With_No_Spaces.java

java -cp . Get_Timestamp_With_No_Spaces>c:\a\java_timestamp.txt

set /p java_timestamp=<c:\a\java_timestamp.txt

rem cd
rem echo jt: %java_timestamp%

m exit



:_

set fp=* Hello World 3.

rem Outcome: This works!

echo.
echo %fp%
echo.

cd\a
java -cp . HelloWorld3

m exit



:_

set fp=* Running a class using the classpath.

rem Outcome: This works!

echo.
echo %fp%
echo.

set classpath=c:\a
java HelloWorld3

m exit



:_

set fp=* Write error handling for pushing development into master.

echo.
echo %fp%
echo.

cd | find /i "Development"

if %errorlevel% == 0 echo This is the development folder.

if not %errorlevel% == 0 echo This is NOT the development folder.

exit/b



:_

set fp=* Test find echo.

cd | find /i "Development"

echo.
echo %fp%
echo.

cd | find /i "a">nul

m exitp



:_

set fp=* Folder test. Remember to include the "c:\".

echo.
echo %fp%
echo.

rem cd\
rem cd pcarss

set folder_to_search=%my documents%
set folder_to_search=c:\pcarss

rem cd\%folder_to_search%

cd %folder_to_search%

cd

m exitp



:_

set fp=* Find all empty folders in Dropbox.

echo.
echo %fp%
echo.

rem Outcome: This works!

cd\aa
dir | find /i "0 file">nul

if %errorlevel% == 0 echo Found at %cd%
if not %errorlevel% == 0 echo NOT found.

rem dir

m exitp



:_

set fp=* Find all empty folders in Dropbox. Version 2. Do the recursion.

echo.
echo %fp%
echo.

rem Outcome: This works!

cd\aa
dir | find /i "0 file">nul

set sc=0 file
rem set sc=dir | find /i "0 file"

set folder_to_search=c:\aa

rem for /r "%folder_to_search%" %%f in ("*.*") do findstr %sc% "%%f"
for /r "%folder_to_search%" %%f in ("*.txt") do dir | find /i "0 file" "%%f"

if %errorlevel% == 0 echo Found at %cd%
if not %errorlevel% == 0 echo NOT found.

m exitp



:_

:step1

set fp=* Step 1

echo.
echo %fp%
echo.

exit/b



:_

set fp=* Look for empty folder.

echo.
echo %fp%
echo.

rem Outcome: This works!

dir | find /i "0 file">nul

if %errorlevel% == 0 echo Found.
if not %errorlevel% == 0 echo NOT found.

exit/b



:_

set fp=* Experimenting with the for loop.

echo.
echo %fp%
echo.

cd\aa

for /r "c:\aa" %%j in (".") DO (call %savannah%\belfry\step1.bat)

m exitp



:_

set fp=* Find all empty subfolders.

rem Outcome: This works!

echo.
echo %fp%
echo.

cd\aa
for /r %%a in (.) do (dir /b "%%a" | find /v "NoTlIkElY" >nul && echo %%a NOT empty || >>FILES.TXT echo %%a empty)

exit/b



:_

set fp=* Find all empty subfolders.

rem Outcome: This works!

echo.
echo %fp%
echo.

cd %dropbox%
for /r %%a in (.) do (dir /b "%%a" | find /v "NoTlIkElY" >nul && echo %%a NOT empty || >>Empty_Dropbox_Folders.txt echo %%a Empty folder.)

exit/b



:_

:dpz

set fp=* DP Zero is the folder where the script is executing from. DP Zero in action.

echo.
echo %fp%
echo.

cd\a

echo Current Folder: %cd%

REM Change script directory to current directory. 
cd /d %~dp0 

echo Current Folder: %cd%
echo.

exit/b



:_

set fp=* Run Atom.

echo.
echo %fp%
echo.

C:\Users\jonathan.r.jones\AppData\Local\atom\Update.exe --processStart atom.exe

m exit



:_

set fp=* Test moved bat file.

echo.
echo %fp%
echo.



exit/b



:_

set fp=* Test homemade Jar file.

echo.
echo %fp%
echo.

rem java -cp "%my documents%\dropbox\nes\java\jars"
java -cp "%my documents%\dropbox\nes\java\jars\*" org.junit.runner.JUnitCore generalTests.TrackingServiceTests.TrackingServiceTests

cd "%my documents%\dropbox\nes\java\jars"
cd
rem org.junit.runner.JUnitCore
rem org.junit.runner.JUnitCore-4.12.jar;

rem JUnit-4.12.jar /?
rem JUnit-4.12.jar /help

exit/b



:_

set fp=* Test homemade Jar file 2 - Cleaned up version.

echo.
echo %fp%
echo.

rem java -cp "%my documents%\dropbox\nes\java\jars"
java -cp "%my documents%\dropbox\nes\java\jars\*" org.junit.runner.JUnitCore generalTests.TrackingServiceTests.TrackingServiceTests

cd "%my documents%\dropbox\nes\java\jars"
cd

exit/b



:_

set fp=* Test homemade Jar file 4 - General Tests

echo.
echo %fp%
echo.

rem     Creation Date: Oct-31-2016
rem           Outcome:
rem        Conclusion:

rem java -cp "%my documents%\dropbox\nes\java\jars"
java -cp "%my documents%\dropbox\nes\java\jars\*" org.junit.runner.JUnitCore generalTests.GeneralTests

cd "%my documents%\dropbox\nes\java\jars"

exit/b



:_

set fp=* Test homemade Jar file 3 - 12 test version

echo.
echo %fp%
echo.

rem java -cp "%my documents%\dropbox\nes\java\jars"
java -cp "%my documents%\dropbox\nes\java\jars\*" org.junit.runner.JUnitCore generalTests.TrackingServiceTests

cd "%my documents%\dropbox\nes\java\jars"
cd

m exit



:_

set fp=* Test Apache Ant build file.

rem      Creation Date: Oct-31-2016
rem            Outcome:
rem         Conclusion:

echo.
echo %fp%
echo.



exit/b



:_

set fp=* Test Apache Ant build.

rem      Creation Date: Oct-31-2016
rem            Outcome:
rem         Conclusion:

echo.
echo %fp%
echo.

cd\aa
cd apache-ant-1.9.7\bin\

ant -buildfile "C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Eclipse Workspace\$UnderDevelopment\build.xml"

exit/b



:_

set fp=* Test Apache Ant build. JunitReport Version

rem      Creation Date: Oct-31-2016
rem            Outcome:
rem         Conclusion:

echo.
echo %fp%
echo.

cd\aa
cd apache-ant-1.9.7\bin\

ant -buildfile "C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Eclipse Workspace\$UnderDevelopment\build.xml" junitreport

exit/b



:_

set fp=* Folder authority.

rem      Creation Date: Nov-3-2016

echo.
echo %fp%
echo.

rem cd\pcarss
rem cd\pcarss development
rem cd\pcarss development-Nov-1-2016
rem cd %dropbox%
rem cd %dropbox%\it
rem cd c:\projects\netbeans\batch_files

echo Current folder: %cd%

m exitp



:_

set fp=* Test eof.

rem      Creation Date: Nov-17-2016
rem            Outcome:
rem         Conclusion:

echo.
echo %fp%
echo.

goto :eof



:_

set fp=* Check machine name.

rem      Creation Date: Nov-17-2016
rem            Outcome:
rem         Conclusion:

echo.
echo %fp%
echo.

if %COMPUTERNAME% == NES-1KKHHC2 echo is
if not %COMPUTERNAME% == NES-1KKHHC2 echo not

goto :eof



:_

:forfiles

set fp=* Forfiles help file. (!forf)

rem      Creation Date: Nov-25-2016

FORFILES [/P pathname] [/M searchmask] [/S]
         [/C command] [/D [+ | -] {MM/dd/yyyy | dd}]

Description:
    Selects a file (or set of files) and executes a 
    command on that file. This is helpful for batch jobs.

Parameter List:
    /P    pathname      Indicates the path to start searching.
                        The default folder is the current working
                        directory (.).

    /M    searchmask    Searches files according to a searchmask.
                        The default searchmask is '*' .

    /S                  Instructs forfiles to recurse into
                        subdirectories. Like "DIR /S".

    /C    command       Indicates the command to execute for each file.
                        Command strings should be wrapped in double
                        quotes. 

                        The default command is "cmd /c echo @file".

                        The following variables can be used in the
                        command string:
                        @file    - returns the name of the file.
                        @fname   - returns the file name without
                                   extension.
                        @ext     - returns only the extension of the
                                   file.
                        @path    - returns the full path of the file.
                        @relpath - returns the relative path of the
                                   file.
                        @isdir   - returns "TRUE" if a file type is
                                   a directory, and "FALSE" for files.
                        @fsize   - returns the size of the file in
                                   bytes.
                        @fdate   - returns the last modified date of the
                                   file.
                        @ftime   - returns the last modified time of the
                                   file.

                        To include special characters in the command 
                        line, use the hexadecimal code for the character
                        in 0xHH format (ex. 0x09 for tab). Internal
                        CMD.exe commands should be preceded with
                        "cmd /c".

    /D    date          Selects files with a last modified date greater
                        than or equal to (+), or less than or equal to
                        (-), the specified date using the
                        "MM/dd/yyyy" format; or selects files with a
                        last modified date greater than or equal to (+)
                        the current date plus "dd" days, or less than or
                        equal to (-) the current date minus "dd" days. A
                        valid "dd" number of days can be any number in
                        the range of 0 - 32768.
                        "+" is taken as default sign if not specified.

    /?                  Displays this help message.

Examples:
    FORFILES /?
    FORFILES  
    FORFILES /P C:\WINDOWS /S /M DNS*.* 
    FORFILES /S /M *.txt /C "cmd /c type @file | more"
    FORFILES /P C:\ /S /M *.bat
    FORFILES /D -30 /M *.exe /C "cmd /c echo @path 0x09 was changed 30 days ago"
    FORFILES /D 01/01/2001 /C "cmd /c echo @fname is new since Jan 1st 2001"
    FORFILES /D +11/25/2016 /C "cmd /c echo @fname is new today"
    FORFILES /M *.exe /D +1
    FORFILES /S /M *.doc /C "cmd /c echo @fsize" 
    FORFILES /M *.txt /C "cmd /c if @isdir==FALSE notepad.exe @file"

exit/b



:_

set fp=* Forfiles command experimentation.

rem      Creation Date: Nov-25-2016

echo.
echo %fp%
echo.

cd\aa

rem This worked.
rem forfiles /m *.txt

rem Find text files changed in the last day.
rem forfiles /d +0 /m *.txt

rem Find files changed in the last day.
rem forfiles /d +0

echo Find files (folders are assumed) changed in the last day.
forfiles /d +0 /s /c "cmd /c if @isdir==FALSE echo @path" /m %sc%

m exitp



:_

:search_normally

set fp2=* Search normally.

echo %fp%>c:\a\search_results.txt

echo.
echo %fp2%
echo %fp2%>>c:\a\search_results.txt

echo.
echo Current folder: "%cd%"
echo Current folder: "%cd%">>c:\a\search_results.txt

echo.
echo Search Criterion: %sc%
echo Search Criterion: %sc%>>c:\a\search_results.txt

echo ****************************************************************>>c:\a\search_results.txt
echo.>>c:\a\search_results.txt

rem Files are sorted newest files first.
dir /b /s /o-d *%sc%*>>c:\a\search_results.txt

"%ProgramFiles%\Multi-Edit 2008\Mew32.exe" "c:\a\search_results.txt"

m exit



:_

:find_files_changed_in_the_last_day

set fp2=* Find files (folders are assumed) changed in the last day.

rem      Creation Date: Nov-25-2016

echo.
echo %fp%
echo.

echo %fp%>c:\a\search_results.txt

echo.
echo %fp2%
echo %fp2%>>c:\a\search_results.txt

echo.
echo Current folder: "%cd%"
echo Current folder: "%cd%">>c:\a\search_results.txt

echo.
echo Search Criterion: %sc%
echo Search Criterion: %sc%>>c:\a\search_results.txt

echo ****************************************************************>>c:\a\search_results.txt
echo.>>c:\a\search_results.txt

forfiles /d +0 /s /c "cmd /c if @isdir==FALSE echo @path">>c:\a\search_results.txt

"%ProgramFiles%\Multi-Edit 2008\Mew32.exe" "c:\a\search_results.txt"

m exit



:_

:find_files_changed_in_the_last_week

set fp2=* Find files (folders are assumed) changed in the last week.

rem Creation Date: Dec-5-2016

echo.
echo %fp%
echo.

echo %fp%>c:\a\search_results.txt

echo.
echo %fp2%
echo %fp2%>>c:\a\search_results.txt

echo.
echo Current folder: "%cd%"
echo Current folder: "%cd%">>c:\a\search_results.txt

echo.
echo Search Criterion: %sc%
echo Search Criterion: %sc%>>c:\a\search_results.txt

echo ****************************************************************>>c:\a\search_results.txt
echo.>>c:\a\search_results.txt

forfiles /d -7 /s /c "cmd /c if @isdir==FALSE echo @path">>c:\a\search_results.txt

"%ProgramFiles%\Multi-Edit 2008\Mew32.exe" "c:\a\search_results.txt"

m exit



:_

set fp=* Test2.

rem      Creation Date: Nov-28-2016

echo.
echo %fp%
echo.



exit/b



:_

set fp=* Find files changed in the last day.

rem Creation Date: Dec-5-2016

echo.
echo %fp%

cd\aa

goto find_files_changed_in_the_last_day



:_

set fp=* Find files changed in the last week.

rem Creation Date: Dec-5-2016

echo.
echo %fp%

cd\aa

goto find_files_changed_in_the_last_week



:_

set fp=* Test title.

rem Function Creation Date: Dec-15-2016

echo.
echo %fp%



m exitp



:_

set fp=* Set dynamic server location.

rem Function Creation Date: Dec-19-2016

echo.
echo %fp%

cd\Mercury\Server\wildfly-9.0.2.Final\standalone\tmp\vfs\temp

cd

dir/b>c:\a\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_1=<c:\a\environment_variable_temporary_storage.txt

cd %dynamic_server_location_part_1%

dir/b>c:\a\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_2=<c:\a\environment_variable_temporary_storage.txt

cd %dynamic_server_location_part_2%

set dynamic_server_location=%dynamic_server_location_part_1%\%dynamic_server_location_part_2%

exit/b



:_

set fp=* Set dynamic server location.

rem Function Creation Date: Dec-19-2016

echo.
echo %fp%

cd\Mercury\Server\wildfly-9.0.2.Final\standalone\tmp\vfs\temp

cd

dir/b>%temp%\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_1=<%temp%\environment_variable_temporary_storage.txt

cd %dynamic_server_location_part_1%

dir/b>%temp%\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_2=<%temp%\environment_variable_temporary_storage.txt

cd %dynamic_server_location_part_2%

set dynamic_server_location=%dynamic_server_location_part_1%\%dynamic_server_location_part_2%

exit/b



:_

set fp=* Delete statle WildFly folders.

rem Function Creation Date: Dec-20-2016

echo.
echo %fp%

cd\Mercury\Server\wildfly-9.0.2.Final\standalone\tmp\vfs\temp

cd

dir/b>%temp%\environment_variable_temporary_storage.txt

set /p dynamic_server_location_part_1=<%temp%\environment_variable_temporary_storage.txt

if not "%dynamic_server_location_part_1%"=="" rd /q /s %dynamic_server_location_part_1%

exit/b



:_

set fp=* Call 2 word.

rem Function Creation Date: Dec-21-2016

echo.
echo %fp%

call "2 word.bat" branch

m exitp



:_

set fp=* The syntax is different for when you use environment variables as opposed to not.

rem Function Creation Date: Dec-22-2016

rem Conclusion: Putting a space after the "cd" works in all cases.

echo.
echo %fp%

echo.
rem Notice that there's a space after the "cd".
echo 1.
cd %savannah%\belfry
cd

echo.
echo 2. Notice that this syntax does not work.
cd\%savannah%\belfry
cd

echo.
echo 3.
cd\Users\jonathan.r.jones\Documents\!Savannah\Belfry
cd

echo.
echo 4. Notice that putting a space after the "cd" works in all cases.
cd \Users\jonathan.r.jones\Documents\!Savannah\Belfry
cd

m exitp



:_

set fp=* To call a batch file with spaces, wrap it in double quotes.

rem Function Creation Date: Dec-22-2016

echo.
echo %fp%

call "%savannah%\belfry\set my path 3.bat"

m exitp



:_

set fp=* Put a space after cd from now on.

rem Function Creation Date: Dec-22-2016

echo.
echo %fp%

cd \aa

cd

m exitp



:_

set fp=*

rem Function Creation Date: Dec-22-2016

echo.
echo %fp%

echo.
echo 1
echo %computer_alias%

echo.
rem set Multi-Edit_2008_Config_Files=%appdata%\Multi Edit Software\Multi-Edit\11\Config.04

echo 2
echo "%Multi-Edit_2008_Config_Files%"

echo.
echo 3
echo "%my documents%\dropbox\Multi-Edit_2008_Config_Files"

exit/b



:_

set fp=* Create database dump file.

rem Function Creation Date: Jan-9-2017

echo.
echo %fp%

cd \a

mysqldump -u root -p mercdb > c:\a\test_5.dmp

exit/b



:_

set fp=* Connect to MySQL Monitor.

rem Function Creation Date: Jan-10-2017

echo.
echo %fp%
echo.

mysql --user='mercweb' --password=MERCadmin mercdb

exit/b



:_

set fp=* Get date.

rem Function Creation Date: Jan-10-2017

echo.
echo %fp%

call "c:\projects\netbeans\batch_files\Update Java filename timestamp.bat"

set /p timestamp_filename=<c:\a\java_timestamp.txt

echo Timestamp Filename: %timestamp_filename%

m exitp



:_

set fp=* Transfer folder.

rem Function Creation Date: Jan-10-2017

echo.
echo %fp%

cd %my documents%\dropbox\transfer

cd

m exitp



:_

set fp=* Restore database from dump file.

rem Function Creation Date: Jan-10-2017

echo.
echo %fp%
echo.

mysql -uroot -p mercdb < "%my documents%\dropbox\transfer\From_Buzz_Jan-10-2017_4_27_PM.dmp"

m exitp



:_

set fp=* Check that the path does not contain the ^% character which breaks the batch files.

rem Function Creation Date: Jan-11-2017

echo.
echo %fp%
echo.

rem check that the path does not contain the ^% character which breaks
rem the batch files.
for %%i in (%~sf0) do set NON_ESCAPED=%%~dPsi..


FOR /F "tokens=1-2* delims=%%" "%~1" IN ("%NON_ESCAPED%") DO (
if NOT "%~2" == "" goto invalidPath)

for %%i in (%~sf0) do set DIR_HOME=%%~dPsi.

set INSTALL_ROOT=%DIR_HOME%
set INSTANCE_DIR=
for /f "delims=" %%a in (%INSTALL_ROOT%\instance.loc) do (
  set INSTANCE_DIR=%%a
)
set CUR_DIR=%~dp0
cd /d %INSTALL_ROOT%
cd /d %INSTANCE_DIR%
set INSTANCE_ROOT=%CD%

m exitp



:_

set fp=* Check that the path does not contain the ^% character which breaks the batch files.

rem Function Creation Date: Jan-11-2017

echo.
echo %fp%
echo.

echo Notice that the "space" character is denoted by ^%.

m exitp



:_

:set_folder_to_search

set fp=* Set folder to search.

echo.
echo %fp%

set fs=\mercury
set fs=\software
set fs=\a
set fs=%savannah%

cd %fs%

cd

exit/b



:_

set fp=* Call label arguments.

rem Function Creation Date: Jan-13-2017

echo.
echo %fp%
echo.

call :santa_claus hello_world

m exitp

Calls one batch program from another.

CALL [drive:][path]filename [batch-parameters]

  batch-parameters   Specifies any command-line information required by the
                     batch program.

If Command Extensions are enabled CALL changes as follows:

CALL command now accepts labels as the target of the CALL.  The syntax
is:

    CALL :label arguments

A new batch file context is created with the specified arguments and
control is passed to the statement after the label specified.  You must
"exit" twice by reaching the end of the batch script file twice.  The
first time you read the end, control will return to just after the CALL
statement.  The second time will exit the batch script.  Type GOTO /?
for a description of the GOTO :EOF extension that will allow you to
"return" from a batch script.

In addition, expansion of batch script argument references (%0, %1,
etc.) have been changed as follows:


    %* in a batch script refers to all the arguments (e.g. %1 %2 %3
        %4 %5 ...)

    Substitution of batch parameters (%n) has been enhanced.  You can
    now use the following optional syntax:

        %~1         - expands %1 removing any surrounding quotes (")
        %~f1        - expands %1 to a fully qualified path name
        %~d1        - expands %1 to a drive letter only
        %~p1        - expands %1 to a path only
        %~n1        - expands %1 to a file name only
        %~x1        - expands %1 to a file extension only
        %~s1        - expanded path contains short names only
        %~a1        - expands %1 to file attributes
        %~t1        - expands %1 to date/time of file
        %~z1        - expands %1 to size of file
        %~$PATH:1   - searches the directories listed in the PATH
                       environment variable and expands %1 to the fully
                       qualified name of the first one found.  If the
                       environment variable name is not defined or the
                       file is not found by the search, then this
                       modifier expands to the empty string

    The modifiers can be combined to get compound results:

        %~dp1       - expands %1 to a drive letter and path only
        %~nx1       - expands %1 to a file name and extension only
        %~dp$PATH:1 - searches the directories listed in the PATH
                       environment variable for %1 and expands to the
                       drive letter and path of the first one found.
        %~ftza1     - expands %1 to a DIR like output line

    In the above examples %1 and PATH can be replaced by other
    valid values.  The %~ syntax is terminated by a valid argument
    number.  The %~ modifiers may not be used with %*



:_

:santa_claus

set fp=* Clause

rem Function Creation Date: Jan-13-2017

echo.
echo %fp%
echo.

echo 0: %0
echo 1: %1

m exitp



:_

set fp=* What does "--" do as a batch file argument?

rem Function Creation Date: Jan-30-2017

echo.
echo %fp%
echo.

call "c:\projects\netbeans\batch_files\echo arguments.bat" --hi second

m exitp



:_
 
set fp=* Set path as of Dec-22-2016.

echo.
echo %fp%

echo hi

rem call "c:\projects\netbeans\batch_files\set my path 4.bat"



:_

set fp=* Test locating the WildFly dynamic folder.

rem Function Creation Date: Feb-9-2017

echo.
echo %fp%

call c:\projects\netbeans\batch_files\m.bat set_wildfly_dynamic_folder

cd %wildfly_dynamic_folder%

exit/b



:_

:delete_stale_ext_js

set fp=* Delete stale Ext JS.

echo.
echo %fp%

call c:\projects\netbeans\batch_files\m.bat set_wildfly_dynamic_folder

rem rd /q /s classic

rem rd /q /s modern

rem rd /q /s resources

del classic.json

del classic.jsonp

del index.html

del microloader.jsp

del modern.json

del modern.jsonp

exit/b


                                                                     1
:_

set fp=* Compile and refresh.

echo.
echo %fp%

call "c:\projects\netbeans\batch_files\Sencha Command for App Build Testing.bat"

echo Step 1 completed.

call "c:\projects\netbeans\batch_files\Delete stale Ext JS files from WildFly.bat"

echo Step 2 completed.

call "c:\projects\netbeans\batch_files\Copy fresh Ext JS files to WildFly.bat"

echo Step 3 completed.

exit/b



:_

set fp=* Test copy.

rem Function Creation Date: Feb-9-2017

echo.
echo %fp%

cd \aa\testcopy

cd

rem m exitp

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

exit/b



:_

set fp=* Reflection.

rem FCD: Feb-14-2017

echo.
echo %fp%


exit/b



:_

set fp=* Exit versus no exit.

rem FCD: Feb-14-2017

echo.
echo %fp%

echo 1
call c:\projects\netbeans\batch_files\m.bat test1
echo 2
call c:\projects\netbeans\batch_files\m.bat test2
echo 3



:_

:current_folder

:identify_current_folder

set fp=* Identify current folder.

echo.
echo %fp%

echo.
echo Current Folder: %cd%

exit/b



:_

:delete_old

:delete_stale_ext_js_old

set fp=* Delete stale Ext JS. On Feb-10-2017, this rubric fixed enabled this to work.

echo.
echo %fp%

echo.
echo Current Folder: %cd%

rem rd /q /s classic

rem rd /q /s modern

rem rd /q /s resources

del classic.json

del classic.jsonp

del index.html

del microloader.jsp

del modern.json

del modern.jsonp

exit/b



:_

set fp=* Check pub folder.

rem FCD: Feb-15-2017

echo.
echo %fp%

cd \projects\netbeans\sencha\html5application\public_html

goto identify_current_folder

exit/b



:_

set fp=* Route callers, top method. (!referrouter)

if not "%~1" == "" goto %1

goto status

cd | find /i "Belfry">nul

rem This is not the first run (set_my_path has already been called), so . . .
if not %errorlevel% == 0 goto status



:_

set fp=* Choose your exit style.

rem FCD: Feb-24-2017

echo.
echo %fp%

m exitp



:_

:computername

set fp=* Switch to Catalina bin based on computer name.

rem FCD: Feb-27-2017

echo.
echo %fp%

if %computername% == NES-1KKHHC2 echo Work computer.
rem if /i not "%computername%"=="NES-1KKHHC2" echo Work computer.

exit/b



:_

set fp=* Run localhost.

rem FCD: Feb-27-2017

echo.
echo %fp%

rem start "c:\program files (notepad_installation_path)\google\chrome\application\chrome.exe" "http://localhost:8080"
start "%programfiles%\mozilla firefox\firefox.exe" "http://localhost:8080"
m exitp



:_

set fp=* Find NES folder.

rem FCD: Feb-27-2017

echo.
echo %fp%

cd %dropbox%\nes

m exitp



:_

set fp=* Which Java version is running on this machine?

rem FCD: Mar-2-2017

rem echo.
rem echo %fp%
echo.

call c:\projects\netbeans\batch_files\update_java_timestamp.bat

set /p timestamp=<%tmp%\java_timestamp.txt

echo Java Version on %computername% on %timestamp%:

echo.

java -version

m exitp



:_

set fp=* Test modification to this file.

rem FCD: Mar-2-2017

echo.
echo %fp%

m exitp



:_

set fp=* Find new Eclipse Workspace.

rem FCD: Mar-2-2017

echo.
echo %fp%

cd \aaa\Eclipse Workspace on Buzz

echo Current Folder: %cd%

m exitp



:_

set fp=* Current folder trick.

rem FCD: Mar-2-2017

echo.
echo %fp%

call %0 current_folder

m exitp



:_

set fp=* Run Jersey-Maven Archetype command.

rem FCD: Feb-28-2017

echo.
echo %fp%

cd \aaa\Eclipse Workspace on Buzz

echo Current Folder: %cd%

echo.
echo If this folder is incorrect, you should abort this command.
pause

mvn archetype:generate -DarchetypeGroupId=org.glassfish.jersey.archetypes -DarchetypeArtifactId=jersey-quickstart-webapp -DarchetypeVersion=2.2

rem groupId: exercise-services
rem blah: 

m exitp



:_

set fp=* Test j.bat.

rem FCD: Mar-3-2017

echo.
echo %fp%

call j.bat hello
m exitp



:_

set fp=* Test percent 0.

rem FCD: Mar-7-2017

echo.
echo %fp%

m exitp



:_

:recursive_test_1

set fp=* Recursive test 1.

rem FCD: Feb-22-2017

echo.
echo %fp%

m exit



:_

:recursive_test_2

set fp=* Recursive test 2.

rem FCD: Feb-22-2017

echo.
echo %fp%

m exit



:_

:recursive_test_3

set fp=* Recursive test 3.

rem This doesn't work.

rem FCD: Feb-22-2017

echo.
echo %fp%

%0 recursive_test_1

%0 recursive_test_2

m exit



:_

:recursive_test_4

set fp=* Recursive test 3.

rem This works.

rem FCD: Feb-22-2017

echo.
echo %fp%

goto recursive_test_1

%0 recursive_test_2

m exit



:_

set fp=* Test computer name.

rem FCD: Mar-10-2017

echo.
echo %fp%

if /i %computername% == NES-1KKHHC2 cd \Neighborhood\Eclipse Workspace\$UnderDevelopment
if /i %computername% == NES-1KKHHC2 xcopy /d /h /r /s /y . "C:\Users\jonathan.r.jones\Documents\Dropbox\IT\Java\Workspaces\NES-1KKHHC2\"

m exitp



:_

set fp=* Netbeans jdkhome issue.

rem FCD: Mar-13-2017

echo.
echo %fp%

cd "\Program Files (notepad_installation_path)\NetBeans 8.2\bin\"

netbeans.exe --console new --jdkhome "C:\Program Files (notepad_installation_path)\Java\jdk1.8.0_121"

m exitp



:_

set fp=* Validate UD home.

rem FCD: Mar-16-2017

echo.
echo %fp%

if /i %computername% == NES-1KKHHC2 cd \Neighborhood\Eclipse Workspace\$UnderDevelopment

cd

xcopy /d /h /r /s /y . C:\Users\jonathan.r.jones\Documents\Dropbox\IT\Java\Workspaces\NES-1KKHHC2
rem xcopy /d /h /r /s /y . "C:\aa\test"
exit/b



:_

:cl

:clone

set fp=* Clone.

echo.
echo %fp%
  

set branch_name=clean6.2
set branch_name=master

set folder_name=WebWorldWind4
set folder_name=tirem
set folder_name=sencha
set folder_name=bouillabaisse
set folder_name=mercury6
set folder_name=Batch_Files

set origin_url=https://github.com/jonathan-r-jones/ForGitTesting.git
set origin_url=https://github.com/NASAWorldWind/WebWorldWind.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git
set origin_url=https://github.com/jonathan-r-jones/java_bouillabaisse.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git

set new_folder_to_check=\Users\Buzz\Documents\Dropbox\IT\Java
set new_folder_to_check=c:\projects\netbeans

@echo on
cd %new_folder_to_check%
cd
git clone %origin_url% --branch %branch_name% .\%folder_name%
@echo off

exit/b



:_

set fp=* Lines of code in pcarss.

echo.
echo %fp%
echo.

cd\pcarss

cd

type *.java

m exit



:_

set fp=* UP test.

rem FCD: Mar-17-2017

echo.
echo %fp%

if /i %computername% == NES-1KKHHC2 cd %userprofile%\Workspace

cd

m exitp



:_

set fp=* Copy files to examination location.

rem FCD: Mar-21-2017

echo.
echo %fp%

cd "\aa\Count Lines of Code in Mercury"

cd

rem type /s *.java "c:\aa\Count Lines of Code in Mercury\java in mercury.txt"

for /r %%j in (*.txt) do type "%%j" >> "c:\a\all files appended into one big file.txt"

m exitp



:_

set fp=* Count the number of lines of Java code.

rem FCD: Mar-21-2017

echo.
echo %fp%

cd "\projects"

cd

for /r %%j in (*.java) do type "%%j" >> "c:\a\all files appended into one big file.java"

m exitp



:_

set fp=* Count the number of lines of JavaScript code.

rem FCD: Mar-21-2017

echo.
echo %fp%

cd "\projects"

cd

for /r %%j in (*.js) do type "%%j" >> "c:\a\All Mercury JavaScript Code in One File.js"

m exitp



:_

set fp=* Count the number of JavaScript files.

rem FCD: Mar-21-2017

echo.
echo %fp%

cd "\projects"

cd

for /r %%j in (*.js) do echo "%%j" >> "c:\a\All Mercury JavaScript filenames in One File.txt"

m exitp



:_

set fp=* Count the number of Java files.

rem FCD: Mar-21-2017

echo.
echo %fp%

cd "\projects"

cd

for /r %%j in (*.java) do echo "%%j" >> "c:\a\All Mercury Java Filenames in One file.txt"

m exitp



:_

set fp=* Count the number of lines of JavaScript code.

rem FCD: Mar-21-2017

echo.
echo %fp%

cd "%my documents%\gpodder\downloads"

cd

for /r %%j in (*.mp3) do move "%%j" c:\a

m exitp



:_

set fp=* 

rem FCD: Mar-30-2017

echo.
echo %fp%

call C:\Mercury\Server\wildfly-9.0.2.Final\bin\standalone.bat
m exitp



:_

set fp=* Test copy.

rem FCD: Apr-4-2017

echo.
echo %fp%

call m copy_fresh_ext_js_into_wildfly_dynamic_folder 
m exitp



:_

set fp=* test cd

rem FCD: Apr-4-2017

echo.
echo %fp%

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp
exit/b



:_

set fp=* Clear Chrom browsing data using the command line.

rem FCD: Apr-6-2017

echo.
echo %fp%

set chrome_data_folder=%localappdata%\google\chrome\user data\default
set chrome_cache=%chrome_data_folder%\cache

taskkill /f /im "chrome.exe"

del /q /s /f "%chrome_cache%\*.*"
del /q /f "%chrome_data_folder%\*cookies*.*"
del /q /f "%chrome_data_folder%\*History*.*"

rem I am repeating this command twice because doing it once doesn't seem to finish the job.
taskkill /f /im "chrome.exe"

del /q /s /f "%chrome_cache%\*.*"
del /q /f "%chrome_data_folder%\*cookies*.*"
del /q /f "%chrome_data_folder%\*History*.*"

rem set chrome_data_folder=c:\users\%username%\local settings\application data\google\chrome\user data\default

rem set chrome_cache=%chrome_data_folder%\Cache>nul 2>&1
rem del /q /s /f "%chrome_cache%\*.*">nul 2>&1   
rem del /q /f "%chrome_data_folder%\*Cookies*.*">nul 2>&1    
rem del /q /f "%chrome_data_folder%\*History*.*">nul 2>&1    

rem I don't know what nul 2>&1 does.
rem set chrome_cache=%chrome_data_folder%\cache>nul 2>&1  

exit/b



:_

set fp=* Test %0.

rem FCD: Apr-6-2017

echo.
echo %fp%

echo Percent 0: %0.

m exitp



:_

set fp=* Open target folder.

rem FCD: Apr-7-2017

echo.
echo %fp%

call c:\projects\netbeans\batch_files\m.bat open_target_foler_in_explorer

exit/b



:_

set fp=* Edit CW.

rem FCD: Apr-7-2017

echo.
echo %fp%

call c:\projects\netbeans\batch_files\m.bat edit_contacts_widget

exit/b



:_

set fp=* 

rem FCD: Apr-7-2017

echo.
echo %fp%

cd \Mercury\Server\wildfly-9.0.2.Final\standalone\tmp\vfs\temp

exit/b



:_

set fp=* Get_version.

rem Outcome: This works!

echo.
echo %fp%
echo.

cd c:\projects\netbeans\batch_files

javac generate_mercury_version_number.java

java -cp . generate_mercury_version_number>c:\a\j3.txt

set /p java_timestamp=<c:\a\j3.txt

echo jt: %java_timestamp%

m exitp



:_

set fp=* Version with pause.

rem fcd: Apr-10-2017

echo.
echo %fp%

call c:\projects\netbeans\batch_files\m ver

pause
exit/b



:_

set fp=* Restrict use in folder.

rem fcd: Apr-13-2017

echo.
echo %fp%

cd | find /i "C:\projects\netbeans\sencha">nul

if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit/b

echo Errorlevel: %errorlevel%

exit/b



:_

set fp=* Xcopy experiment.

rem fcd: Apr-13-2017

echo.
echo %fp%

cd c:\a

xcopy /y j1.txt j2.txt

exit/b



:_

set fp=* Title experiments.

rem fcd: Apr-14-2017

echo.
echo %fp%

color 60

echo 1
echo %title%
echo 2
echo %title
title = coming at you
title = Mercury Helper - %fp%
m exitp



:_

set fp=* Percent 2 testing.

rem fcd: Apr-18-2017

echo.
echo %fp%

if "%~2" == "" echo A commit description is required.

echo %2

exit/b



:_

set fp=* Title experiment.

rem fcd: Apr-20-2017

echo.
echo %fp%

title = Hi

exit/b



:_

:process_mercury_version_number

set fp=* Generate a Mercury version number, set it to an environment variable and then echo it to the command line.

rem fcd: May-3-2017

echo.
echo %fp%
echo.

cd c:\projects\netbeans\batch_files

java -cp . generate_mercury_version_number>%tmp%\mercury_version_number.txt

set /p mercury_version_number=<%tmp%\mercury_version_number.txt

echo %mercury_version_number%

exit/b



:_

:help

:/?

set fp=* Help!

rem fcd: May-14-2017

echo.
echo %fp%

exit/b



:_

set fp=* Investigate /?

rem fcd: May-14-2017

echo.
echo %fp%

echo 0: %0
echo 1: %1
echo 2: %2

exit/b



:_

set fp=* Test multi-notepad call.

rem fcd: May-15-2017

echo.
echo %fp%

call no edit_pom_root

call no edit_pom_ear

call no edit_pom_ejb

call no edit_pom_web

call no edit_system_widget

exit/b



:_

set fp=* Make a choice.

rem fcd: May-16-2017

rem echo %fp%

echo.
set /P user_option=Are you sure you wish to delete the database?! (y/n): 

if not "%user_option%"=="y" echo Aborting.
if not "%user_option%"=="y" exit/b

echo.
echo You have chosen to continue.

exit/b



:_

set fp=* Wildfly name/computer name feature.

rem fcd: May-22-2017

echo.
echo %fp%

if /i %computername% == JRJ4550 echo j
if /i %computername% == nes-1kkhhc2 echo 4

set wildfly_location=c:\mercury\server\wildfly-9.0.2.final
if /i %computername%==nes-1kkhhc2 set wildfly_location=c:\mercury\server\wildfly-9.0.1.final

echo %wildfly_location%

exit/b



:_

set fp=* Error level experiments.

rem fcd: May-25-2017

echo.
echo %fp%

cd %1
echo Error Level: %errorlevel%

exit/b



:_

set fp=* Detect a filename in the first parameter.

rem fcd: Jun-1-2017

echo.
echo %fp%

echo.
echo %1 | find /i ".">nul

if %errorlevel% == 0 echo First parameter is a filename.
if %errorlevel% == 0 exit/b
if %errorlevel% == 1 echo First parameter is NOT a filename.
if %errorlevel% == 1 exit/b

exit/b



:_

set fp=* Machine name testing.

rem fcd: Jun-2-2017

echo.
echo %fp%

if /i not "%computername%"=="WIN-8D6B7BCCM06" echo not
if /i not "%computername%"=="WIN-8D6B7BCCM06" set password="MERCadmin"

exit/b



:_

set fp=* Xcopy testing.

rem fcd: Jul-3-2017

echo.
echo %fp%

cd C:\Users\jonathan.r.jones\Documents\DropBox\nes\macintosh\public_html

cd

xcopy /d /h /r /s /y C:\projects\netbeans\sencha\HTML5Application\public_html

exit/b



:_

set fp=* Machine name testing.

rem fcd: Jul-7-2017

echo.
echo %fp%

if /i not "%computername%"=="NES-1KKHHC2" echo is it

exit/b



:_

set fp=* New r3 command.

rem fcd: Jul-28-2017

echo.
echo %fp%

echo.
set /P user_option=What's the name of dmp file (without the file extension) in the backups folder you wish to load? 

if /i exist c:\mercury\backups\%user_option%.dmp echo exist

if /i not exist c:\mercury\backups\%user_option%.dmp echo The filename you entered does not exist.

exit/b



:_

set fp=* Experiment with type and find statements.

rem fud: Aug-8-2017

echo.
echo %fp%
echo.

cd\a

type j1.txt | find /i "daniel"

exit/b



:_

set fp=* Experiment with Assoc.

rem fud: Aug-10-2017

echo.
echo %fp%

assoc .txt="C:\Program Files\Sublime Text 3\sublime_text.exe"

exit/b



:_

set fp=* Drive query.

rem fud: Aug-10-2017

echo.
echo %fp%

driverquery -v

exit/b



:_

set fp=* Goto label error test.

rem fud: Aug-31-2017

echo.
echo %fp%
echo.

goto xxx

if %errorlevel% == 0 echo 0
if %errorlevel% == 1 echo 1

exit/b



:_

set fp=* Create a folder if it doesn't exist.

rem lu: Sep-6-2017

echo.
echo %fp%

set target_folder=aMercury
dir | find /i "%target_folder%">nul
if %errorlevel% == 1 md %target_folder%
cd %navigate_target_folder%

exit/b



:_

set fp=* Test if exist statement.

rem lu: Nov-13-2017

echo.
echo %fp%
echo.

if exist c:\a echo A exists.
if not exist c:\a echo A does NOT exist.
if exist c:\b echo B exists.
if not exist c:\b echo B does NOT exist.

exit/b



:_

set fp=* Test echo removal.

rem lu: Nov-14-2017

echo %fp%

exit/b



:_

set fp=* Test if exist for folders.

rem lu: Nov-15-2017

echo %fp%
echo.

if exist C:\projects\netbeans\mercury6\Mercury-web\target echo Targ is there.
if exist C:\projects\netbeans\mercury6\Mercury-web\target cd C:\a

if not exist C:\projects\netbeans\mercury6\Mercury-web\target echo Targ is not there.
if not exist C:\projects\netbeans\mercury6\Mercury-web\target cd C:\a

exit/b



:_

set fp=* Delete test.

rem lu: Nov-15-2017

echo %fp%

del c:\a\filterbutton.js

del c:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\classic\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\modern\resources\images\lock-screen-background.large.jpg
del c:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\modern\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\development\Mercury\classic\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\development\Mercury\modern\resources\images\lock-screen-background.large.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\development\Mercury\modern\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\development\Mercury\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury\classic\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury\modern\resources\images\lock-screen-background.large.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury\modern\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury\classic\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury\modern\resources\images\lock-screen-background.large.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury\modern\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\classic\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\ext\build\examples\admin-dashboard\classic\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\ext\build\examples\admin-dashboard\modern\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\ext\build\examples\admin-dashboard\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\ext\templates\admin-dashboard\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\modern\resources\images\lock-screen-background.large.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\modern\resources\images\lock-screen-background.jpg
del c:\projects\netbeans\sencha\HTML5Application\public_html\resources\images\lock-screen-background.jpg

exit/b



:_

set fp=* Verify existence of an installed program!

rem lu: Nov-17-2017

echo %fp%
echo.

path | find /i "sencha">null
if %errorlevel% == 0 echo EXISTS.
if %errorlevel% == 1 echo Does NOT exist.

exit/b



:_

set fp=* Executing a shortcut.

rem lu: Nov-17-2017

echo %fp%

call "c:\mercury\batch_files\Mercury Development Environment.xlsx - Shortcut.lnk"

exit/b



:_

set fp=* How to call Snipping tool lnk.

rem lu: Nov-20-2017

rem Outcome: Oddly the Wordpad and Steps Recorder lnks both work but the snipping tool does not.

echo %fp%

cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\"

rem call start "my title" "Snipping Tool.lnk"
rem call start "my title" "Wordpad.lnk"
call start "my title" "steps recorder.lnk"

exit/b



:_

set fp=* If-else statement!

rem lu: Dec-13-2017

echo %fp%

echo.
echo 1.
rem This works.
if /i %computername%==xps (echo XPS!
) else (echo No!)

echo.
echo 2.
rem This works.
if /i %computername%==xpsc (echo XPS!
) else (echo No!)

echo.
echo 3.
rem This works.
if /i %computername% == xps (echo XPS!
) else (echo No!)

echo.
echo 4.
rem This works and is my preferred format.
if /i %computername% == xps (
  echo XPS!
) else (
  echo No!
)

exit/b



:_

:test_hello

set fp=* Test hello.

rem lu: Dec-18-2017

echo %fp%

exit/b



:_

:test_call

set fp=* Test new call statement style.

rem lu: Dec-18-2017

echo %fp%
echo.

rem Old way, which here causes an infinite loop. However, there may be scenarios where
rem this may be the best way to make the method call.
rem call %0 test_hello

rem New way.
call :test_hello

exit/b



:_

:set_notepad_installation_path

set fp=* Set Notepad++ installation path.

rem lu: Jan-3-2018

rem echo %fp%

set notepad_installation_path=

if exist "c:\program files\notepad++\notepad++.exe" set notepad_installation_path="c:\program files\notepad++\notepad++.exe"
if exist "c:\program files (x86)\notepad++\notepad++.exe" set notepad_installation_path="c:\program files (x86)\notepad++\notepad++.exe"

if %notepad_installation_path%=="" echo Notepad++ is not installed.

echo %ndotepad_installation_path%

exit/b



:_

:

set fp=* Open CNN in chrome.

rem lu: Jan-5-2018

echo %fp%

"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://edition.cnn.com

exit/b



:_

:vs

set fp=* Run the solution in the current folder.

rem lu: Jan-18-2018

echo %fp%
echo.

dir /b *.sln>%tmp%\filename.txt
set /p filename=<%tmp%\filename.txt

rem echo filename: %filename%

start "%programfiles%\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe" "%filename%"

exit/b



:_

:ignore

set fp=* Write a function that creates a gitinore file to the current directory.

rem lu: Jan-19-2018

echo %fp%

dir /b>.gitignore

call npp .gitignore

exit/b



:_

:

set fp=* Echo y plus the or operator. I couldn't figure this out.

rem lu: Jan-19-2018

echo %fp%
echo.

rem set /p user_option=What's the name of?
echo paul | green
echo.

rem echo user_option: %user_option%

exit/b



:_

:hi

:hello

set fp=* Hello world

rem Function Creation Date: Mar-3-2017

echo %fp% from %0.bat file.

exit/b



:_

:hi2

set fp=* Hello world

rem Function Creation Date: Aug-23-2018

echo.
echo %fp% from %0.

echo.
echo %1

exit/b



:_

:st

set fp=* Run the Snipping Tool.

rem FCD: Mar-7-2017

echo.
echo %fp%

%windir%\system32\SnippingTool.exe

exit/b



:_

:

set fp=* Look at cd. The problem was that %1 works for Xamarin Class but breaks s6 sencha.

rem lu: Jan-22-2018

echo %fp%
echo.

dir | find /i "%~1">nul
if %errorlevel% == 0 cd "%~1"

if %errorlevel% == 0 echo Exists.
if %errorlevel% == 1 echo Does NOT exist.

exit/b



:_

set fp=* Simulate a double click in CBF.

rem lu: Feb-1-2018

echo %fp%

call td ba

set cbf_application=%1" - Shortcut.lnk"
set cbf_parameter=""

call r

exit/b



:_

:

set fp=* Ping pong folder test. This worked!

rem lu: Feb-2-2018

echo %fp%

set original_folder=%cd%

call td a

cd

pause

call cd /d %original_folder%

exit/b



:_

:

set fp=* Title changes. Doesn't work.

rem lu: Feb-6-2018

echo %fp%

echo Title: %title
echo Title: %title%
exit/b



:_

set fp=* Find files changed in the past day.

rem lu: Feb-7-2018

echo %fp%

rem forfiles /d +0
rem forfiles /d +0 /c @isdir=FALSE
forfiles /d +2/7/2018 /c "cmd /c echo @fname is new today."

exit/b



:_

set fp=* Find files changed in the past day. This works.

rem lu: Feb-7-2018

echo %fp%

forfiles /d +0 /c "cmd /c echo @fname is new today."

exit/b



:_

:

set fp=* Experiments with dir.

rem lu: Feb-9-2018

echo %fp%

dir /d /ad|findstr /bvc:" "

exit/b



:_

:

set fp=* Experiments with dir 2. Files only

rem lu: Feb-9-2018

echo %fp%

dir /d /a-d | findstr /bvc:" "

exit/b



:_

:

set fp=* Microsoft Edge experimentation.

rem lu: Feb-13-2018

echo %fp%

start microsoft-edge:

exit/b



:_

set fp=* Testing echo.

rem lu: Feb-16-2018

echo %fp%

echo %1 | find /i ".">nul

exit/b



:_

:

set fp=* Test echo.

rem lu: Mar-1-2018

echo %fp%

echo. man to make manual pages
echo man to make manual pages
echo        man to make manual pages

exit/b



:_

:

set fp=* New style of parentheses.

rem lu: Mar-1-2018

echo %fp%

if not "%cbf_filename%" == "" (
  call k %1
  exit/b
)

if not "%cbf_url%" == "" (
  call sf %1
  exit/b
)

exit/b



:_

set fp=* The new way to validate against percent 1.

rem In batch files how do evaluate an empty parameter?

rem lu: Mar-1-2018

echo %fp%

:Aug-10-2011: How to pass parameters/filenames that might contain spaces.

rem On the receiving end use 
rem echo %~1
rem echo %~2

rem instead of say 
rem echo %1
rem echo %2

::The variable "%~dp0" stands for the path from where the batch file was run.

rem @set toolPath=%~dp0
rem echo %toolPath%
rem cd

echo.
echo 1. %~1

echo.
if "%~1" == "" echo nothing

exit/b



:_

:percent_1

set fp=* Testing goto %1.

rem lu: Mar-23-2018

echo %fp%

exit/b



:_

:ht_env

set fp=* How to set and test against an environment variable.

rem lu: Mar-23-2018

echo %fp%


set test1=""

echo.
echo Test1: %test1%


set test2 = ""

echo.
echo Test2: %test2%


set test3=

echo.
echo Test3: %test3%


set test4 =

echo.
echo Test4: %test4%


exit/b



:_

:

set fp=* Can I go to a folder's parent?

rem lu: Apr-9-2018

echo %fp%

call td fgt

cd..

exit/b



:_

:RESOLVE

SET %2=%~f1 

GOTO :EOF



:_

:set_parent_fd_original

set %2=%~f1 

exit/b



:_

:set_parent_fd

set fp=* Set parent folder.

rem batch file path parsing parent folder, cd.., 

rem lu: Apr-9-2018

echo.
echo %fp%

set %2=%~f1

exit/b



:_

set fp=* Find parent folder without using cd command.

rem lu: Apr-9-2018

echo %fp%

call n fgt

rem CALL :RESOLVE "%cbf_path%\.." PARENT_ROOT

call :set_parent_fd "%cbf_path%\.." parent_folder

echo.
echo cbf: %cbf_path%

rem echo.
rem echo Parent_Root: %parent_root%

echo.
echo Parent_Folder: %parent_folder%
echo.

rem echo.
rem echo %%2: %2

rem echo F1: %~f1 


rem Original
rem @echo off&setlocal
rem for %%i in ("%cbf_path%") do cd..
rem for %%i in ("%cbf_path%.bat") do set "folder=%%~fi"
rem echo Folder: %folder%

rem Original
rem @echo off&setlocal
rem for %%i in ("%~dp0..") do set "folder=%%~fi"
rem echo %folder%

rem echo.
rem echo ~dp0 = %~dp0

rem echo.
rem echo ~dp0. = %~dp0.

rem echo.
rem echo ~dp0.. = %~dp0..

rem for %%i in ("%~dp0..") do set "folder=%%~fi"
rem echo %folder%




:_

set fp=* Call parent folder.

rem lu: Apr-10-2018

echo %fp%

cd /d %parent_folder%

exit/b



:_

set fp=* Find parent folder without using cd command distilled version.

rem lu: Apr-9-2018

echo %fp%

call n fgt

call :set_parent_fd "%cbf_path%\.." parent_folder

echo.
echo cbf: %cbf_path%

echo.
echo Parent_Folder: %parent_folder%

echo.
cd /d %parent_folder%



:_

set fp=* Experimenting with exit.

rem lu: Apr-10-2018

echo %fp%

m exitp
exit/b
m exit



:_

:

set fp=* Test partial path.

rem lu: Apr-10-2018

echo %fp%

cd /d \Program Files (x86)\Multi-Edit 2008\
exit/b



:_

:long_string

set fp=* Test what happens if I wrap a long string.
set fp=%fp% blah blah

rem lu: Apr-25-2018

echo %fp%

exit/b



:_

:fe

set fp=* Testing whether a folder exists.

rem lu: Mar-26-2018

echo %fp%
echo.

cd /d %dropbox%

dir | find /i "Savannah Backups">nul

if %errorlevel% == 0 echo Folder EXISTS.
if %errorlevel% == 1 echo Folder does NOT exist.

exit/b



:_

:fe2

set fp=* Testing whether a folder exists 2.

rem lu: May-23-2018

echo %fp%
echo.

cd /d %dropbox%

dir | find /i "%1">nul

if %errorlevel% == 0 echo Folder EXISTS.
if %errorlevel% == 1 echo Folder does NOT exist.

exit/b



:_

:folder_exists

set fp=* Testing whether a folder exists 2.

rem lu: Apr-9-2018

echo.
echo %fp%
echo.

if exist "%cbf_path%" (
  echo.
  echo It exists.
)

if not exist "%cbf_path%" echo It does NOT exist.

exit/b



:_

set fp=* Detect a period in the first parameter.

echo %1 | find /i ".">nul

rem There is a period in the first parameter.
if %errorlevel% == 0 (
  set cbf_filename=%~1
  call m double_click
  r
)
else
(
  // Do a remote double click.
)

exit/b



:_

set fp=* Setting application variable.

rem lu: Jun-8-2018

echo %fp%

set cbf_application=%cbf_default_text_editor%

exit/b



:_

set fp=* Blank echo.

rem lu: Jun-10-2018

echo %fp%

echo %1

exit/b



:_

:

set fp=* Is exit/b the same as goto eof? Yes.

rem lu: Jun-14-2018

echo %fp%

goto :eof



:_

:

set fp=* Try to run PostMan with its strange command line syntax.

rem lu: Jun-14-2018

echo %fp%

set cbf_application=C:\Users\jonat\AppData\Local\Postman\Update.exe
set cbf_application=C:\Users\jonat\AppData\Local\Postman\Update.exe --processStart "Postman.exe"

echo %cbf_application% | find /i "--">nul

if %errorlevel% == 0 (
  echo.
  echo * CBF_Application contains a double dash.
) else (
  echo.
  echo 1
)

exit/b



:_

:test77

set fp=* Test 77.

rem lu: Jul-9-2018

echo %fp%

exit/b



:_

:

set fp=* Test goto with no label found.

rem Is there a way to test if a label exists in a batch file before calling the goto statemnt?

rem lu: Jul-9-2018

echo %fp%

rem goto nonexistinglabel

rem set "label=sub"
REM next line to reset errorlevel to zero:
call
rem call :test7x7 2>nul

rem This strange syntax in the following line of code "eats" the error message, although 
rem I don't know why you'd want to do so.
goto nonexistinglabel 2>nul

echo hey

echo Errorlevel: %errorlevel%

exit/b



:_

:

set fp=* Use if exist for obj folder.

rem lu: Jul-9-2018

echo %fp%

call td 150 3

if exist BookClient.Droid\obj rd /q /s .\BookClient.Droid\obj

exit/b



:_

:

set fp=* Test error level when looking for folders.

rem lu: Jul-16-2018

echo %fp%

call td fr

if %errorlevel% == 0 (
  echo.
  echo Error level equals 0.
) else (
  echo.
  echo Error level equals 1.
)

exit/b



:_

:

set fp=* Set repository folder.

rem lu: Jul-10-2018

echo %fp%

call n fr
call n mamo

call env

exit/b



:_

:

set fp=* Test nickname error.

rem lu: Jul-25-2018

echo %fp%

rem call td axx xxx

echo.
rem dir /b *.xtxt> nul 2
dir *.txxt > %temp%\j1.txt

echo.
echo Errorlevel: %errorlevel%

exit/b



:_

:

set fp=* Set cbf_path equal to the current folder.

rem lu: Jul-26-2018

echo %fp%

set cbf_path=%cd%

echo CBF Path: %cbf_path%

exit/b



:_

:

set fp=* Debug the issue where running application is causing an error.

rem lu: Aug-6-2018

echo %fp%

call n me

start "my title" "%cbf_application%" "%cbf_parameter%"

exit/b



:_

:

set fp=* Test Choice keyword.

rem lu: Aug-16-2018

echo %fp%

set random=
echo Input your choice
set input=
set /p input= Choice:
echo You chose: %input%
echo Your password is %random%


exit/b



:_

:

set fp=* Test random.

rem lu: Aug-16-2018

echo %fp%

set random=
echo Random: %random%

exit/b



:_

:

set fp=* Test percent zero again.

rem lu: Aug-23-2018

echo %fp%

@echo on
call n %0

exit/b



:_

:

set fp=* Test percent zero.

rem lu: Aug-23-2018

echo %fp%

echo.
echo %0

exit/b



:_

set fp=* String replacement is cool (older).

rem lu: Nov-9-2017

echo.
echo %fp%

rem This works!

rem skw dos search and replace

set str=teh cat in teh hat
echo.%str%
set str=%str:teh=the%
echo.%str%

set str=HTML5Application/public_html/sass/example/bootstrap.jsonp
echo.%str%
set str=%str:/=\%
echo.%str%

exit/b



:_

set fp=* String replacement is cool.
rem skw dos search and replace

rem lu: Aug-23-2018

echo %fp%

echo.
set str=teh cat in teh hat
echo.%str%
set str=%str:teh=the%
echo.%str%

echo.
set str=HTML5Application/public_html/sass/example/bootstrap.jsonp
echo.%str%
set str=%str:/=\%
echo.%str%

echo.
set str=https://www.cnn.com
echo.%str%
set str=%str:https://www.=%
set str=%str:http://www.=%
echo.%str%

exit/b



:_

:getFunctions

:: ret -- returns a comma separated list of all functions

set fp=* Get functions

rem lu: Aug-23-2018

echo %fp%

:$created 20060101 :$changed 20080219
:$source https://www.dostips.com
SETLOCAL
set ret=
for /f %%a in ('"findstr "^^:[a-z].*--" "%~f0" "') do call set ret=%%ret%%%%a,
( ENDLOCAL & REM RETURN VALUES
    IF "%~1" NEQ "" (SET %~1=%ret%) ELSE ECHO.%ret%
)

exit/b



:_

:getDriveInfo
rem  var -- returns array of fsutil drive information
::             -- var [out] - return variable, as array
:$created 20060101 :$changed 20091115 :$categories DriveInfo,Array
:$source https://www.dostips.com
if "%~1" NEQ "" for /f "delims==" %%A in ('set %~1[ 2^>NUL') do @set "%%A="
SETLOCAL ENABLEDELAYEDEXPANSION
set "data="
set /a n=-1
for /f "tokens=1 delims=" %%A in ('fsutil fsinfo drives^|find "\"') do (
    set "dr=%%~A"
    set "dr=!dr:~-3,-1!"
    set /a n+=1
    set "data=!data!&set %~1[!n!].Drive=!dr!"
    for /f "tokens=1,* delims=- " %%a in ('"fsutil fsinfo drivetype !dr!"') do set "data=!data!&set %~1[!n!].DriveType=%%b"
    for /f "tokens=1,* delims=:" %%a in ('"fsutil volume diskfree !dr!"') do (
        set "v= %%a"
        set "v=!v: =!"
        set "d= %%b"
        set "d=!d:~2!"
        set "data=!data!&set %~1[!n!].!v!=!d!"
    )
)

set "data=rem.%data:)=^)%"
( ENDLOCAL & REM RETURN VALUES
    %data%
    SET "%~1[#]=%n%"
)

EXIT /b



:_

:

set fp=* Test colon.

rem lu: Aug-23-2018

echo %fp%

echo.
call:hi var

exit/b



:_

:doProgress -- displays the next progress tick
:$created 20060101 :$changed 20080327 :$categories Progress
:$source https://www.dostips.com
set /a "ProgressCnt+=1"
SETLOCAL ENABLEDELAYEDEXPANSION
set /a "per100=100*ProgressCnt/ProgressMax"
set /a "per10=per100/10"
set /a "per10m=10-per100/10-1"
set "P=%per100%%%"
set "PP="
for /l %%N in (0,1,%per10%) do call set "PP=%%PP%%*"
for /l %%N in (%per10%,1,9) do call set "PP=%%PP%% "
set "PPP="
for /l %%N in (0,1,%per10m%) do call set "PPP=%%PPP%%*"
set "ProgressFormat=%ProgressFormat:[P]=!P!%"
set "ProgressFormat=%ProgressFormat:[PP]=!PP!%"
set "ProgressFormat=%ProgressFormat:[PPP]=!PPP!%"
title %ProgressFormat%
EXIT /b



:_

:doProgress2 -- displays the next progress tick
EXIT /b



:_

:ExtractFunction func -- extracts a function by label
::                    -- func [in] - name of the function to be extracted
:$created 20060101 :$changed 20080219
:$source https://www.dostips.com
SETLOCAL ENABLEDELAYEDEXPANSION
set func=%~f0
set /a b=2000000000
set /a e=2000000000
for /f "tokens=1,* delims=:" %%a in ('"findstr /n /b /c:"%~1 " "%func%""') do set /a b=%%a
for /f "tokens=1,* delims=:" %%a in ('"findstr /n /b /c:"EXIT /b" "%func%""') do (
    if /i %b% LSS %%a if /i %%a LSS !e! set /a e=%%a
)
SETLOCAL DISABLEDELAYEDEXPANSION&  rem --disabling preserves excamation marks in %%b
for /f "tokens=1,* delims=[]" %%a in ('"find /n /v "" "%func%""') do (
    if /i %b% LEQ %%a if /i %%a LEQ %e% echo.%%b
)
EXIT /b



:_

:

set fp=* Do progress

rem lu: Aug-23-2018

echo %fp%

call :doprogress

exit/b



:_

:

set fp=* Call a function with a param.

rem lu: Aug-23-2018

echo %fp%

call :hi2 xx

exit/b



:_

:myGetFunc

:- passing a variable by reference

echo.
echo Percent 1a: %~1

echo.
echo Percent 1b: "%~1"

echo.
echo Percent 1c: %1

set "%~1=DosTips"

exit/b



:_

:pbr

set fp=* Passing by reference.

rem This works.

rem lu: Aug-23-2018

echo %fp%

set var1=CmdTips

echo.
echo var1 before: %var1%

rem Notice the lack of percent signs around var1!

call :myGetFunc var1

echo.
echo var1 after: %var1%

exit/b



:_

set fp=* Get functions.

rem This works a little!

rem lu: Aug-23-2018

echo %fp%

call :getfunctions

exit/b



:getHostName

::ip ret -- resolves IP address to computer name
::         -- ip  [in,opt]  - ip, default is THIS computer's IP
::         -- ret [out,opt] - computer name
:$created 20060101 :$changed 20080219 :$categories Network
:$source https://www.dostips.com
SETLOCAL
set ip=%~1
if "%ip%"=="" call:getIP "" ip
set name=
for /f "tokens=2" %%a in ('"ping /a /n 1 %ip%|find "Pinging" 2>NUL"') do set name=%%a
ENDLOCAL & IF "%~2" NEQ "" (SET %~2=%name%) ELSE (echo.%name%)
EXIT /b



:_

:

set fp=* Get drive info.

rem lu: Aug-23-2018

echo %fp%

set var1=c:

call :getDriveInfo %var1%

echo.
echo %data%

echo.
echo %var1%

echo.
echo %n%

echo.
echo %var%

echo.
echo %ret%

exit/b



:_

:getIP

::host ret -- return THIS computers IP address
::              -- host [in,opt]  - host name, default is THIS computer
::              -- ret  [out,opt] - IP
:$created 20060101 :$changed 20080219 :$categories Network
:$source https://www.dostips.com
SETLOCAL
set host=%~1
set ip=
if "%host%"=="" ( for /f "tokens=2,* delims=:. " %%a in ('"ipconfig|find "IP Address""') do set ip=%%b
) ELSE ( for /f "tokens=2 delims=[]" %%a in ('"ping /a /n 1 %host%|find "Pinging" 2>NUL"') do set ip=%%a)
ENDLOCAL & IF "%~2" NEQ "" (SET %~2=%ip%) ELSE (echo.%ip%)
EXIT /b



:_

:

set fp=* Get host.

rem lu: Aug-23-2018

echo %fp%

rem call :gethostname 127.0.0.0 var1
call :gethostname

echo.
echo Var1: %var1%

exit/b



:_

:getIPConfig
::arr -- return IPCONFIG /ALL data in array variable
::               -- arr [out] - target array variable for IPCONFIG data
:$created 20091111 :$changed 20091111 :$categories Network,Array
:$source https://www.dostips.com
if "%~1" NEQ "" for /f "delims==" %%A in ('set %~1[ 2^>NUL') do @set "%%A="
SETLOCAL ENABLEDELAYEDEXPANSION
set "data="
set /a n=0
for /f "tokens=1,* delims=:" %%A in ('ipconfig /all^|find ":"') do (
    set "v=%%~A "
    if "!v:~0,8!" NEQ "        " (
        rem it's a new section
        set /a n+=1
        set "data=!data!&set %~1[!n!].DisplayName=%%A"
    ) ELSE (
        set "v=!v:~8!"
        set "v=!v:.=!"
        set "v=!v: =!"
        set "x=%%~B"
        set "data=!data!&set %~1[!n!].!v!=!x:~1!"
    )
)
set "data=rem.%data:)=^)%"
( ENDLOCAL & REM RETURN VALUES
    %data%
    SET "%~1[#]=%n%"
)
EXIT /b



:_

:getRandomColor
::ret -- returns a random color
::                  -- ret [out,opt] - return variable to return color code in
:$created 20060101 :$changed 20080219 :$categories Color
:$source https://www.dostips.com
set "%~1=hell4"
SETLOCAL
set HEX=0123456789ABCDEF
set /a r1=%random% %% 16
set "%~1=hell3"
set /a r2=%random% %% 16
call set rndcolor=%%HEX:~%r1%,1%%%%HEX:~%r2%,1%%
echo Step 2.
echo Percent 1: %~1
echo Rndcolor: %rndcolor%

set  %~1=%rndcolor%
set "%~1=%rndcolor%"
set "%~1=hell"
set "%~1=hell6"
ENDLOCAL
set  %~1=%rndcolor%
set "%~1=hell7"
echo Step 3.
EXIT /b



:_

:

set fp=* Get ip config.

rem lu: Aug-23-2018

echo %fp%

set var_1=

call :getipconfig %var_1%

echo.
echo %var_1%

exit/b



:_

:f_and_r_for_file

set fp=* Find and replace a string in a text file.

::OldStr NewStr File -- substitutes a string in a text file
::                             -- OldStr [in] - string to be replaced
::                             -- NewStr [in] - string to replace with
::                             -- File   [in] - file to be parsed
:$created 20060101 :$changed 20101122 :$categories FileManipulation
:$source https://www.dostips.com
SETLOCAL DISABLEDELAYEDEXPANSION
for /f "tokens=1,* delims=]" %%A in ('"type %3|find /n /v """') do (
    set "line=%%B"
    if defined line (
        call set "line=echo.%%line:%~1=%~2%%"
        for /f "delims=" %%X in ('"echo."%%line%%""') do %%~X
    ) ELSE echo.
)
exit /b



:_

:myFunctionName
:    -- function description here
::   -- %~1: argument description here
SETLOCAL
REM.--function body here
set LocalVar1=...
set LocalVar2=...
(ENDLOCAL & REM -- RETURN VALUES
    IF "%~1" NEQ "" SET %~1=%LocalVar1%
    IF "%~2" NEQ "" SET %~2=%LocalVar2%
)
GOTO:EOF



:_

set fp=* Get random color.

rem lu: Aug-23-2018

echo %fp%

set var1=test3

call:getrandomcolor var1

echo.
echo Var1: %var1%

exit/b



:_

:loop

set fp=* An endless loop the pauses for 10 seconds (unless you press any key) before each call.

rem lu: Aug-27-2018

echo %fp%

timeout /t 10

echo.

goto loop



:_

:

set fp=* Cy error.

rem lu: Sep-2-2018

echo %fp%

rem cd %cbf_path%

echo.
echo CBF_Path: %cbf_path%

echo.
move "%cbf_path%\*.*"

exit/b



:_

:

set fp=* Empty folder checking.

rem lu: Sep-2-2018

echo %fp%

if exist . echo Exists.
if not exist . echo Not exists.

exit/b



:_

:

set fp=* Empty folder check.

rem lu: Sep-2-2018

echo %fp%

set cbf_path=d:\aa\test2

set folder_to_check=%cbf_path%

echo.
for /f %%i in ('dir /b %folder_to_check%\*.*') do (
   echo * Folder is not empty.
   goto :folder_is_not_empty
)

echo * Folder is empty.

exit/b 0

:folder_is_not_empty

exit/b 1

exit/b



:_

:

set fp=* Test folder_has_files.

rem lu: Sep-2-2018

echo %fp%

call m folder_has_files d:\aa\test1

exit/b



:_

:tm_cy

set fp=* Test Mvoe Series - Copy files from Test3 to Test1.

rem lu: Sep-2-2018

echo %fp%

call td test3

call n test1

echo.
xcopy /y *.* %cbf_path%

exit/b



:_

:tm_m13

set fp=* Test Mvoe Series - Move from test1 to test3.

rem lu: Sep-4-2018

echo %fp%

call %0 tm_cy

exit/b



:_+ Test for empty folder.



::_

:

set fp=* Test for empty folder.

rem lu: Sep-4-2018

rem How can you tell if a folder is empty using a batch file?

echo %fp%

for /f %%i in ('dir /b "%cd%\*.*"') do (
   rem echo Folder is not empty.
   goto :folder_is_not_empty
)

echo.
echo * Currenmt folder has no files to move.

:folder_is_not_empty

exit/b



::_

:tc

set fp=* Move to cbf path.

for /f %%i in ('dir /b "%cd%\*.*"') do (
   rem echo Folder is not empty.
   goto :folder_is_not_empty
)

echo.
echo * Currenmt folder has no files to move.

exit/b

:folder_is_not_empty
      
move *.* %cbf_path%

exit/b



:_+ Passing Spaces in Parameters



:_

:passing_spaces

set fp=* Passing spaces in parameters.

rem lu: Sep-9-2018

echo %fp%

echo.
echo Percent 2: %2

echo.
echo Percent Squiggle 2: %~2

exit/b



:_

:pass_spaces

set fp=* The lesson learned is that you should put double quotes around parameters that may contain spaces.

rem lu: Sep-9-2018

echo %fp%

call n sa

call %0 passing_spaces "%cbf_path%"

exit/b



:_

:

set fp=* Remember your location.

rem lu: Sep-11-2018

echo %fp%

call td start

echo.
echo Current location: %cd%

set current_location=%cd%

call td aa

cd %current_location%

exit/b



:_

:

set fp=* File exist.

rem lu: Sep-12-2018

echo %fp%

if not exist package.json (
  echo.
  echo * The file package.json does not exist in the current folder.
  exit/b
)

exit/b



:_

:

set fp=* Close immanuel.

rem lu: Sep-15-2018

echo %fp%

call "%savannah%\belfry\immc.bat"

exit/b



:_

set fp=* Lines of code in pcarss.

echo.
echo %fp%
echo.

cd \a

cd

type *.txt>c:\a\size.log

m exitp



:_

:

set fp=* Move files.

rem lu: Sep-2-2018

echo %fp%

set cbf_path=%cbf_repo%\

td test2

call n test1

move *.* %cbf_path%

exit/b



:_

:

set fp=* Testing the value of cbf_path.

rem lu: Nov-5-2018

echo.
echo %fp%

call n c

call td sm

exit/b



:_+ Check Long Label Names



::_

:check_long_label_names

set fp=* Check long label names.

rem lu: Nov-19-2018

echo.
echo %fp%

call %0 32_character_long_label_name_12

call %0 64_character_long_label_name_1264_character_long_label_4

echo.
echo Done.

exit/b



::_

:32_character_long_label_name_12

set fp=* 32 character label name.

rem lu: Nov-19-2018

echo.
echo %fp%

exit/b



::_

:64_character_long_label_name_1264_character_long_label_4

set fp=* 64 character label name.

rem lu: Nov-19-2018

echo.
echo %fp%

exit/b



:_

:

set fp=* Exit program on td error.

rem lu: Nov-20-2018

echo.
echo %fp%

echo.
call td clipjam_podcasts
rem call td temp

call m el_g

if %errorlevel% == 1 (
  exit/b
)

echo.
echo Later.

exit/b



:_

:

set fp=* A rem statement with carets! Echo works, but rem does not.

rem lu: Nov-20-2018

echo.
echo %fp%

echo.
echo If a man is bloody stupid, he told each group of newcomers, ^
his mother will receive a telegram and it will say, your son is ^
dead because he's stupid. Let's hope YOUR telegram only reads your ^
son is dead. With the training we're going to give you here, maybe ^
your mother won't receive any telegram at all. So pay attention. ^
- Charging Charlie, Charles A. Beckwith

rem If a man is bloody stupid, he told each group of newcomers, ^
his mother will receive a telegram and it will say, your son is ^
dead because he's stupid. Let's hope YOUR telegram only reads your ^
son is dead. With the training we're going to give you here, maybe ^
your mother won't receive any telegram at all. So pay attention. ^
- Charging Charlie, Charles A. Beckwith

exit/b



:_

:vft

set fp=* Validate file type existence check caller.

rem lu: Nov-20-2018

echo.
echo %fp%

call m check_file_type_existence batxx

exit/b



:_

:

set fp=* Exploring the pipe command.

rem (!pipe)

rem lu: Dec-3-2018

echo.
echo %fp%

echo.
echo paul ^
green

exit/b



:_

:

set fp=* Testing specific file command.

rem lu: Dec-6-2018

echo.
echo %fp%

call td ssh_keys

call m specific_file_presence id_rsa

exit/b



:_

:or_statement

set fp=* Or statement.

rem lu: Dec-7-2018

echo.
echo %fp%

echo.


if "%~1" == "" (
  echo Nothing.
) else (
  echo Something.
)

if "%~2" == "a" (
  echo.
  echo It's a!
)

if ("%~2" == "a") or "%~2" == "b" (
  echo.
  echo It's a or b!
)

exit/b



:_

:

set fp=* Test share-zone path.

rem lu: Dec-7-2018

echo.
echo %fp%

echo.

rem set share-zone=c:\a

cd /d %share-zone%

exit/b



:_

:

set fp=* Call blongo.

rem lu: Dec-13-2018

echo.
echo %fp%

call m dosc_blongo

exit/b



:_

:

set fp=* Test setting default repository folder.

rem lu: Dec-13-2018

echo.
echo %fp%

call m set_default_repository_folder aa

exit/b



:_

:

set fp=* Copied software.

rem lu: Dec-19-2018

echo.
echo %fp%

echo.
cd "copied software"

exit/b



:_

:

set fp=* Set temp filename.

rem lu: Dec-19-2018

echo.
echo %fp%

echo.
set cbf_filename=%temp%\describe_instances2.txt

exit/b



:_

:

set fp=* Path only experiment.

rem lu: Dec-30-2018

echo.
echo %fp%

echo.
set cbf_filename=%userprofile%\j\BGS\terraform-scripts\dv\BGS\main.tf

set cbf_path=%~p%cbf_filename%

exit/b



:_

:

set fp=* Test mew32.

rem lu: Jan-7-2019

echo %fp%

start mew32

exit/b



:_+ Color Tests



::_

:ct1

set fp=* Color test.

rem fcd: Apr-17-2017

echo.
echo %fp%

color d0

exit/b



::_

:ct2

set fp=* Test color.

rem lu: Jan-8-2019

echo.
echo %fp%

color 1a

exit/b



::_

:ct3

set fp=* Test color.

rem lu: Jan-8-2019

echo.
echo %fp%

color 1b
color 1c
color 2c
color 3c
color 4c
color 5c
color 6c
color 60

exit/b



:_

:expand_to_full_path

set fp=* Expands %I to a fully qualified path name.

rem lu: Mar-14-2018

echo.
echo %fp%

set cbf_path=%~d2%~p2

exit/b



:_

:

set fp=* Computer name testing.

rem lu: Jan-17-2019

echo.
echo %fp%

echo %computername% | find /i "lipt">nul

if %errorlevel% == 1 (
   echo Computer name doesn't contain "lipt".
)

echo.
if /i "%computername%" == "xps" echo it is

echo.
echo CompN: %computername%

exit/b



:_

:

set fp=* File or folder test.

rem lu: Jan-23-2019

echo.
echo %fp%

echo.
xcopy /d /h /r /y "%reach out%\cc.asc" "%share-zone%\copy of cc.asc"

exit/b



:_

:

set fp=* Interesting Java code snippet that I'm not sure what it does.

rem lu: Jan-31-2019

echo.
echo %fp%

rem From gradlew.bat

echo.
rem set JAVA_EXE=java.exe
rem %JAVA_EXE% -version >NUL 2>&1

java -version 2>&1

if "%ERRORLEVEL%" == "0" echo Is zero.

exit/b



:_

:a-b

set fp=* Test dashes in label names.

rem lu: Feb-1-2019

echo.
echo %fp%

exit/b



:_

set fp=* Experiment with Timestamp

echo.
echo %fp%
echo.

rem fdate /Ff /Atoday /Omn
rem datenum
set time_snapshot=%time%
echo %time_snapshot%
set time2=<time /t
echo Date: %date%
echo Time2: %time2%
echo Time3: %date% %time%

m exit



:_

:

set fp=* Test timestamp.

rem lu: Feb-8-2019

echo.
echo %fp%

echo.
echo Date: %date%

echo.
echo Time: %time%

echo.
echo Date and Time: %date% %time%

echo.
echo Date and Time: %date% %time%

echo.
date /t

echo.
time /t

date /t>%temp%\time_string.txt

time /t>>%temp%\time_string.txt

echo.
echo 7.
type %temp%\time_string.txt

echo.
echo 8.
set /p time_test=<%temp%\time_string.txt
echo %time_test%

echo.
echo 9.
date /t>%temp%\date_9.txt
set /p date_9=<%temp%\date_9.txt
echo %date_9%

echo.
echo 10.
time /t>%temp%\time_10.txt
set /p time_10=<%temp%\time_10.txt
echo %time_10%

echo.
echo 11.
set combined_11=%0 - %computername% - %date_9%%time_10%
echo %combined_11%

echo.
echo 12.
set combined_12=%0 - %computername% - %date_9%%time_10%
echo %combined_12%>%share-zone%\last_updated_log.txt
type %share-zone%\last_updated_log.txt

exit/b



:_

:

set fp=* Call ulul.

rem lu: Feb-8-2019

echo.
echo %fp%

echo.
call m ulul

exit/b



:_+ Matrix Solutions



::_

:mat1

set fp=* Matrix

rem lu: Feb-11-2019

echo.
echo %fp%

echo.

color 02 

:tricks 

echo %random% %random%  %random% %random%   %random% %random%    %random% %random%

goto tricks

exit/b



::_

:matr2

:matrix2

set fp=* Matrix 2.

rem lu: Feb-11-2019

echo.
echo %fp%

echo.

for /l %%i in (1,1,100) do echo.

:top

color 02

echo B%random% a%random% t%random% c%random% h%random% c%random% c%random%

ping 192.0.2.2 -n 1 -w 0 >nul

goto top

exit/b



::_

:matr3

set fp=* Matrix 3.

rem lu: Feb-19-2019

echo.
echo %fp%

:tricks_Feb-19-2019

echo Please wait . . . hard drive formatting. %random% %random%%random% %random%%random% %random%%random%

goto tricks_Feb-19-2019

exit/b



::_

:matr4

set fp=* Matrix 4.

rem lu: Mar-1-2019

echo.
echo %fp%

:tricks_Mar-1-2019

echo 1111 01 10100001 1010101010 10101 1  10101001 10101 10101 10010 1010101 1001
echo 01 01 10100001 1010101010 10101 1  10101001 10101 10101 10010 1010101 100101
echo 10100001 1010101010 10101 1  10101001 10101 10101 10010 1010101 100101 10
echo 10100001 1010101010 10101 1  Help me! 10101 10101 10010 1010101 100101 10
echo 10000001 1010101010 10101 1  Help me! 10101 10101 10010 1010101 100101 10
echo 10100001 1010101010 10101 1  Help me! 10101 10101 10010 1010101 100101 10
echo 1010101010 10101 1  10101001 10101 10101 10010 1010101 100101 10 10100 010 0
echo 10101 1  10101001 10101 10101 10010 1010101 100101 10 101 01 0101001 0000 00
echo 1  10101001 10101 10101 10010 1010101 100101 10 111100 01010101 10101010 100

goto tricks_Mar-1-2019

exit/b



::_

:mat5

set fp=* Matrix 5.

rem lu: Mar-1-2019

echo.
echo %fp%

:tricks_mat5

echo 1
echo  1
echo   1
echo    1
echo     1
echo      1
echo       1
echo        1

goto tricks_mat5

exit/b



::_

:mat6

set fp=* %1.

rem lu: Mar-1-2019

echo.
echo %fp%

:tricks_mat6

echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo xxx 0001 101101010 10101 4 Help me! 10101 10101 10010 1
echo z2 0001 1010101010 10101 1 Help me! 10101 10101 10010 13
echo Remembering that you are going to die is the best way I
echo know to avoid the trap of thinking you have something to
echo lost. You are already naked. - Steve Jobs
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo 1  10101001 10101 10101 10010 1010101 100101 10 111100 0

goto tricks_%1

exit/b



::_

:mat7

set fp=* %1.

rem lu: Mar-1-2019

echo.
echo %fp%

:tricks_mat7

echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo z2 0001 1010101010 10101 1 Help me! 10101 10101 10010 13
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo 1  10101001 10101 10101 10010 1010101 100101 10 111100 0

goto tricks_%1

exit/b



::_

:mat8

set fp=* %1.

rem lu: Mar-1-2019

echo.
echo %fp%

:tricks_mat8

echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo.
type %composable_batch_files%\parrot.txt
echo.
echo.
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo 1  10101001 10101 10101 10010 1010101 100101 10 111100 0

goto tricks_%1

exit/b



::_

:matr

:matrix

:matw

set fp=* %1.

rem lu: Mar-6-2019

echo.
echo %fp%

:tricks_matw

echo 1  10101001 10101 10101 10010 1010101 100101 10 111100 0
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo Building algorithm. Mar-6-2019 10101 10101 10010 %random% 13
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo 1  10101001 10101 10101 10010 1010101 100101 10 111100 0

goto tricks_matw

exit/b



:_

:

set fp=* 

rem lu: Feb-11-2019

echo.
echo %fp%

echo.
ping 192.0.2.2 -n 1 -w 0

exit/b



:_

:rand

set fp=* Test random.

rem lu: Feb-11-2019

echo.
echo %fp%

echo.
echo 1: %random%

echo.
echo 2: %random%

echo.
echo 3: %random%

echo.
echo 4: %random%%random%

exit/b



:_

:

set fp=* Figure out how to tell if a batch file parameter starts with a dash.

rem lu: Feb-14-2019

echo.
echo %fp%

set str=politic

echo.
echo %str%

set first_character=%str:~0,1%

echo.
echo First character: %first_character%

if %first_character%==- echo Yep. It's a dash.

exit/b



:_

:

set fp=* Test conflicted copy report.

rem lu: Feb-15-2019

echo.
echo %fp%

set cbf_filename=%temp%\conflicted copy report.txt

echo test Feb-15-2019 > "%cbf_filename%"

echo test2 Feb-15-2019 >> "%cbf_filename%"

echo test3 Feb-15-2019 >> "%cbf_filename%"

call an me

call m assoc_pf

call r

exit/b



:_

:

set fp=* Runtime second try.

rem lu: Feb-15-2019

echo.
echo %fp%

echo.
:
set starttime=%time%
echo Beginning to run the script, it's %starttime% now.

echo Good Morning! You look hot today ;)
echo The script started running at: %starttime% 
set endtime=%TIME%
echo Finished running the script, it's %endtime% now

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

rem runtime in 100ths is now just end - start
set /a runtime = %endtimescalar% - %starttimescalar%
set runtime = %s%.%c%
echo Script took %runtime% s to complete

exit/b



:_

:

set fp=* Test type.

rem lu: Mar-1-2019

echo.
echo %fp%

echo.
type parrot.txt

exit/b



:_

:

set fp=* Test literal percent sign.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.
echo %%1

exit/b



:_

:

set fp=* Not equal to nothing environment variable.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.

if not "%machinename%"=="gfe" (
   echo Not nothing.
)

exit/b



:_

:

set fp=* Test close imm.

rem lu: Mar-19-2019

echo.
echo %fp%

echo.
call "%savannah%\belfry\immc.bat"

exit/b



:_

:

set fp=* What happens after a failed goto statement?

rem lu: Mar-20-2019

echo.
echo %fp%

echo.
goto nonexistentent_label

echo Post bad call.

exit/b



:_

:

set fp=* Test cd.

rem lu: Mar-20-2019

echo.
echo %fp%

echo.
cd ..

echo 2

cd ..

echo 3

cd ..

exit/b



:_+ Hello World Battle



::_

:hw

set fp=* Hello world from %0.

rem lu: Mar-21-2019

echo.
echo %fp%

exit/b



::_
     
:hw_battle

set fp=* Call t versus call %0 versus call label.

rem lu: Mar-21-2019

echo.
echo %fp%

call %0 hw

call t hw

call :hw

exit/b



::_
     
:hw_battle_parm

set fp=* Call t versus call %0 versus call label, parameter passing.

rem Result: Stangely, when calling with a colon, parameter doesn't seem to work. Mar-31-2019

rem lu: Mar-21-2019

echo.
echo %fp%

call %0 hw2 "Percent Zero!"

call t hw2 "Called with t."

call :hw2 "Called with colon."

exit/b



::_

:hw2 %1 %2

set fp=* Hello world 2.

rem lu: Mar-31-2019

echo.
echo %fp%

echo.
echo %2

exit/b



::_
     
:hw_battle_2

set fp=* Called from eof. Why should this matter?

rem lu: Mar-21-2019

echo.
echo %fp%

call %0 hw

call t hw

call :hw

exit/b



:_

:

set fp=* Test blanking out a file.

rem lu: Mar-21-2019

echo.
echo %fp%

echo.
echo .>c:\a\j

exit/b



:_

:

set fp=* Test cypn batch file.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.
if not "%machinename%"=="gfe" call cypn mecfg mecfg_s

exit/b



:_

:

set fp=* Test "working tree clean".

rem lu: Mar-28-2019

echo.
echo %fp%

echo.
rem call s s
call s s | find /i "working tree clean">nul

if %errorlevel% == 1 (
  echo.
  echo Error: Dirty tree at %cd%.
  exit/b
)

exit/b



:_

set fp=* Search and replace.

rem lu: Mar-29-2019

echo.
echo %fp%

rem search and replace dos

echo.
@echo off

for /f "tokens=*" %%A in (c:\a\j6.txt) do set myVar=%%A

echo %myvar%

set str1=Charlie
set str2=Bob

set myvar=!myVar:%str1%=%str2%!
 
echo [ %myvar% ]

exit/b



:_

:

set fp=* Can you put a call message into an environment variable?

rem lu: Apr-1-2019

echo.
echo %fp%

call s>%tmp%\git_status_message.txt

set /p git_status_message=<%tmp%\git_status_message.txt

exit/b



:_

:

set fp=* Test color change.

rem lu: Apr-1-2019

echo.
echo %fp%

echo.
color 4e
echo %fp%

exit/b



:_

:main_function

set fp=* Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_