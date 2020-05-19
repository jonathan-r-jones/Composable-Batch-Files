:_ (!v, !bfe)

@echo off



:_

set filep=* This file is used for vetted functions.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if not "%~1" == "" goto %1

goto code_execution_area

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 (optional parameter 1)

echo.
echo Parameter 1: Batch file label function you wish to execute. If left blank, 
echo the code below the code execution area will run.

exit/b



:_

  __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__ 
 (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______



:_

:else

set fp=* The else statement.

echo %fp%
echo.

rem (!else)

if "%~1" == "" (
  echo Percent 1 nothing.
) else (
  echo Percent 1 is something.
)

if "%~2" == "c" (
  set cbf_path=%aa%\xamarin\Mastering-Xamarin.Forms-book\Complete
) else if not "%~2" == "" (
  set cbf_path=%aa%\xamarin\Mastering-Xamarin.Forms-book\Chapter%2
)

exit/b



:_+ Percent 2



::_

:percent_2

set fp=* Percent 2 is a required field.

echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

exit/b



::_

:percent

set fp=* Testing percent 2 and not equals.

rem Function Creation Date: Jun-8-2018

echo.
echo %fp%

set test_var=Rain in Spain.

echo.
echo 2.
echo %~1
echo %~2
echo %~3
echo %test_var%

echo.
echo 2.
if "%~2" == "" echo No second command line parameter was passed.

echo.
echo 3.
if not "%~2" == "" echo The parameter "%~2" was passed in position 2.

echo.
echo Percent 1: %1
echo Percent 2: %2
echo Percent 3: %3
echo Percent test_var: %test_var%

echo.
echo 4.
if "%~1" == "" echo No command line parameter was passed.

echo.
echo 5.
if not "%~1" == "" echo %1 parameter was passed.

echo.
echo 6.
if "%~1" == "" (
  echo Percent 1 nothing.
) else (
  echo Percent 1 is something.
)

echo.
echo 7. (!perc)
if "%~2" == "" (
  echo Percent 2 nothing.
) else (
  echo Percent 2 is something.
)

exit/b



:_

:var_com

set fp=* Variable comparisons.

rem lu: Jun-8-2018

echo %fp%


set variable_1=
set variable_2=
set variable_3=
set variable_4=

set variable_1=Test Text.
set variable_2=Test Teqxt.
set variable_3 =Test Text.
set variable_4=%variable_2%

echo.
echo Variable 1: %variable_1%

echo.
echo Variable 2: %variable_2%

echo.
echo Notice that putting a space BEFORE the equals sign causes the variable to not be set!
echo Variable 3: %variable_3%

echo.
echo Variable 4: %variable_4%

echo.
if "%variable_1%" == "%variable_2%" (
  echo They are equal.
) else (
  echo They are not.
)

rem Set statements inside an if block don't work!
rem https://stackoverflow.com/questions/9102422/windows-batch-set-inside-if-not-working

exit/b



:_

:ml

:multiline

set fp=* Ho to do multiline echo statements.

rem lu: Jun-7-2018 (!multiline)

echo %fp%

set filep=* Chicken Blah blah blahblah Blah blah blahblahBlah blah blahblahBlah blah
set filep=%filep% 2 222 22 22 22 22 2 2 2 22  22 blah 222 22 2 to boldly go where
set filep=%filep% 3 3333 asdfasdfasdfasdf2 to boldly go where
set filep=%filep% no bald man has gone before

echo.
echo %filep%

exit/b



:_

:not

set fp=* Testing inequality using the not statement.

rem Imprimatur (!not, !notba)

echo %fp%

set message=hello

if not "%message%" == "Hello" (
  rem Notice that the comparion is CASE SENSITIVE.
  echo.
  echo It's NOT equal.
)

exit/b



:_

:math

set fp=* Set math!

rem lu: Jul-6-2018

rem skw addition

echo %fp%

set /a addition=15+12

echo.
echo %addition%

set /a subtraction=1008-10

echo.
echo %subtraction%

set /a multiplication=52*3

echo.
echo %multiplication%

set /a division=39/3

echo.
echo %division%

exit/b



:_+ Guard Clause



::_

:guard_clause_caller

set fp=* Guard clause caller.

rem lu: Nov-1-2018

echo %fp%

call %0 guard_clause

if %errorlevel% == 1 (
  echo.
  echo * Guard clause failed.
  exit/b
)

call m el_g

echo.
echo * Guard claused passed.

exit/b



::_

:guard_clause

set fp=* Guard clause.

rem lu: Nov-1-2018

echo %fp%

if not exist *.tf (
  echo.
  echo * Error: No Terraform files exist in the current folder. ************
  exit/b 1
)

exit/b 0



:_+ Line Continuation Characters, Escape Characters and more.



::_

:care

:caret

set fp=* Line continuation with caret character.

rem How do you continue a batch file line onto a second line?

rem The caret only works with the "echo" statement and not the "rem" statement.

rem lu: Nov-2-2018

echo %fp%

echo.
echo Four score and seven years ago our fathers brought forth on this continent a new ^
nation, conceived in liberty and dedicated to the proposition that all men are created equal.

exit/b



::_

:percent_20

set fp=* How do you escape a percent sign in a batch file?

rem Answer: 2 '%' signs equals one.

rem percent percent, double percent sign: skw

rem percent 20 issue in environment variables. skw

rem fcd: Aug-2-2017

echo %fp%

set cbf_url='https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Mobile'

echo.
echo cbf_url: %cbf_url%

exit/b



::_

:pare

set fp=* Escape character for a parenthesis.

rem skw what's the escape character for a batch file?

rem Escaping Specific Characters: ^esch

rem lu: Nov-20-2018

echo.
echo %fp%

echo.
echo * Error: No "*.%2" file exist(s^) in the current folder.

rem echo The rain in Spain(s) is great.

exit/b



::_

:ampe

set fp=* Experiment with the ampersand character.

rem Outcome: The ampersand character allows you to multiple commands on single line.
rem Think of it as a semicolon for batch files.

rem Line continuation = "&".

rem This works!

echo.
echo %fp%
echo.

echo hey & echo hey 2

m exitp



::_

:at_sign

set fp=* Use of the at sign "@" before rem. Even with echo on, the statement "Hello 2" will ^
not be disploayed.

rem lu: Jan-31-2019

echo.
echo %fp%

echo.

@echo on

rem Hello 1.

@rem Hello 2.

@echo off

exit/b



:_

:

set fp=* Squiggle help.

rem lu: Dec-30-2018

echo.
echo %fp%

exit/b

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
               qualified name of the first one found. If the
               environment variable name is not defined or the
               file is not found by the search, then this
               modifier expands to the empty string

%~dp1       - expands %1 to a drive letter and path only
%~nx1       - expands %1 to a file name and extension only
%~dp$PATH:1 - searches the directories listed in the PATH
               environment variable for %1 and expands to the
               drive letter and path of the first one found.
%~ftza1     - expands %1 to a DIR like output line

exit/b



:_

:

set fp=* Set statements aren't allowed inside if blocks so here is the workaround.

rem lu: Feb-4-2019

rem set statements inside if blocks: skw

echo.
echo %fp%

echo.
if "%~2" == "" (
  call m set_cbf_application_to_dte
)

exit/b



:_

:

set fp=* How to sort a file.

rem lu: Feb-5-2019

echo.
echo %fp%

echo.
sort j3.txt>j4.txt

exit/b



:_+ Find Command (!find)



::_

:which_environment_is_currently_set

set fp=* Which environment is the kiosk pointing to? (skw finding text in file)

echo.
echo %fp%

type %config_1_destination% | find /i "fqt">nul

if %errorlevel% == 0 (
  echo.
  echo * The kiosk is pointing to FQT.
  echo.
  pause
  exit/b
)

echo. 
echo * The kiosk is pointing to DEV.
echo.

pause

exit/b



::_

:specific_folder_presence

set fp=* Check for presence of a paricular foldder in the current folder.

echo.
echo %fp%

echo %cd% | find /i "%2">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the "%2" folder for this command to work. Nov-11-2019 6:29 PM
  exit/b 1
)

echo. 
echo * "%2" folder exists.

exit/b



:_

:where

set fp=* How to tell from where a command is being run.

rem lu: Feb-5-2019

goto Feb-5-2019

In windows how can you tell where a particular command is being run?

Windows Server 2003 and later (i.e. anything after Windows XP 32 bit) provide the where.exe 
program which does some of what which does, though it matches all types of files, not just 
executable commands. (It does not match built-in shell commands like cd.) It will even accept 
wildcards, so where nt* finds all files in your %PATH% and current directory whose names start 
with nt.

Try where /? for help.

:Feb-5-2019

echo.
echo %fp%

echo.
where j.bat

exit/b



:_

:locl

:clip

set fp=* Load clipboard. How to put something onto the clipboard!

rem lu: Feb-7-2019

echo.
echo %fp%

echo "This text is on the clipboard. Cool." | clip
rem echo "%cbf_path%" | clip

exit/b



:_+ Validation Family (!fyva)



::_

:validate_path

rem Imprimatur (!gtr, !err, !p2, !erro, !el, !erle)

if %errorlevel% gtr 0 exit/b

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_path%" == "" (
  echo.
  echo * The cbf_path is not defined for "%1".
  exit/b
)

if not exist "%cbf_path%" (
  echo.
  echo * Error: The CBF_Path "%cbf_path%" could not be found.
  exit/b
)



::_

:validate_filename

call fn %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_fn%" == "" (
  echo.
  echo * The cbf_fn is not defined for "%1".
  exit/b
)

rem (!noex)

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The cbf_fn "%cbf_fn%" could not be found.
  exit/b
)



::_

:validate_url

call un %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_url%" == "" (
  echo.
  echo * The cbf_url is not defined for "%1".
  exit/b
)



::_

:validate_application

call an %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. - skw
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_application%" == "" (
  echo.
  echo * The cbf_application is not definied for "%1".
  exit/b
)

if not exist "%cbf_application%" (
  echo.
  echo * Error: The CBF_Application "%cbf_application%" could not be found.
  exit/b
)



:_

:pev

set fp=* How to populate an environment variable from a file.

rem lu: Oct-24-2019

rem populating an environment variable from a file: skw

rem The problem with this command is that it only does the first line of the file.

echo.
echo %fp%

echo.
set /p test=<c:\a\j1.txt

echo.
echo %test%

exit/b



:_

:repl

:sr

set fp=* String replacement is cool.

rem skw dos search and replace

rem echo(%text:%search%=%replace%%)

rem lu: Dec-7-2018

echo.
echo %fp%

echo.
echo Example 16:
set /p str=<c:\a\j1.txt
echo %str%
set str=%ridiculous*:syncing%
echo.%str%

echo.
echo Example 15: 
set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%bearer*:syncing%
echo.%str%

echo.
echo Example 14: 'Authorization': 'Bearer eyJhb
set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%str:'Bearer*.=new string%
echo.%str%

echo.
echo Example 13: 'Authorization': 'Bearer eyJhb
set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%str:'Bearer.*=new string%
echo.%str%

echo.
echo Example 12: 'Authorization': 'Bearer eyJhb
set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%str:'Bearer=new string%
echo.%str%

exit/b

echo.
echo Example 11: Replace dog.
set str=This is a dog.
echo %str%
set str=%str:dog=cat%
echo.%str%

echo.
echo Example 10: Replace bearer and more text with syncing using a wildcard.
set /p str=<c:\a\j1.txt
echo %str%
set str=%ridiculous*:syncing%
echo.%str%

echo.
echo Example 9: Replace bearer and more text with syncing using a wildcard.
set str=bearer blah a lot of text
echo %str%
set str=%bea*:syncing%
echo.%str%

echo.
echo Example 8: Replace authorization with syncing.
set str=authorization
echo %str%
set str=%authorization:syncing%
echo.%str%

echo.
echo Example 7: Remove the https.
set str=https://www.cnn.com
echo.%str%
set str=%str:https://=%
echo.%str%

echo.
echo Example 6: Replace cnn with google.
set str=https://www.cnn.com
echo.%str%
set str=%str:cnn=google%
echo.%str%

echo.
echo Example 5: Fix the hat.
set str=teh cat in teh hat
echo.%str%
set str=%str:teh=the%
echo.%str%

echo.
echo Example 4: Change slash to backslash.
set str=HTML5Application/public_html/sass/example/bootstrap.jsonp
echo.%str%
set str=%str:/=\%
echo.%str%

echo.
echo Example 3: Remove the first part of the string.
set str=https://www.cnn.com
echo.%str%
set str=%str:https://www.=%
set str=%str:http://www.=%
echo.%str%

echo.
echo Example 2: Same as Ex. 3.
set cbf_url=https://www.github.com
echo.%cbf_url%
set cbf_url=%cbf_url:http://=%
set cbf_url=%cbf_url:https://=%
set cbf_url=%cbf_url:www.=%
echo.%cbf_url%

echo.
echo Example 1: Replace unserscores with dashes.
rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes. Nov-26-2018
set database_name=postgres_test_database_Nov_26_2018_2
echo %database_name%
set database_name=%database_name:_=-%
echo %database_name%

exit/b



:_+ Testing Error Level. (skw test error level, test errorlevel)



::_

:style_1

set fp=* Test error level when looking for folders. %1

rem lu: Nov-1-2019

rem This works.

echo.
echo %fp%

cd /d c:\a

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently
) else (
  echo.
  echo * Error level equals 0.
)

exit/b



::_

:style_old

set fp=* The errorlevel statement.

echo %fp%

echo.
echo * Errorlevel: %errorlevel%

if %errorlevel% == 1 (
  call m clear_errorlevel_silently
  exit/b
)

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if %errorlevel% == 1 (
  exit/b
)

if %errorlevel% == 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

exit/b



::_

:style_2

set fp=* Test error level when looking for folders. %1

rem lu: Nov-1-2019

rem This works.

echo.
echo %fp%

cd /d c:\aq

if %errorlevel% equ 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

exit/b



::_

:style_10

set fp=* Test error level when looking for folders. %1

rem lu: Nov-1-2019

rem This works.

echo.
echo %fp%

cd /d c:\a

if %errorlevel% == 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

cd /d c:\ax

if %errorlevel% == 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

exit/b



::_

:reset_error_level

set fp=* Test return codes for "n" calls. How do you reset errorlevel?

rem lu: Jul-18-2018

echo %fp%

call n bullshit

echo.
echo * Errorlevel: %errorlevel%

ver>nul

call n cnn

echo.
echo * Errorlevel: %errorlevel%

exit/b



:_+ If Exist (!exis)



::_

:fiex

set fp=* File existence. (skw filename existence)

rem See also specific_file_presence in m.bat.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.

rem The "/i" doesn't seem to be necessary for filenames.

if exist "mx.bat" (
  echo File exists.
) else (
  echo File does not exist.
)

exit/b



::_

:th_specific_folder_presence

set fp=* Test harness for specific_folder_presence.

rem lu: Nov-11-2019

echo.
echo %fp%

call %0 specific_folder_presence .chef

if %errorlevel% == 1 (
  exit/b 1
)

echo.
echo * Run commands. Nov-11-2019 6:21 PM

exit/b



::_

:hie

set fp=* To get help on the "if exist" command, use this code block.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.
if exist/?

exit/b



::_

:finex

set fp=* Test if a File does not exist.

rem lu: Dec-27-2018

echo.
echo %fp%

if not exist "amx.bat" (
  echo.
  echo * File does not exist.
)

exit/b



::_

:folder_exists_2

set fp=* Testing whether a folder exists 2.

rem lu: May-23-2018

echo %fp%

if exist "%1" (
  echo.
  echo Folder exists.
)

if not exist "%1" echo It does NOT exist.

exit/b



::_

:section_1

echo.
echo Section_1: Ifs and Sets: Every line in section 1 prints and every line in section 2 
doesn't. echo 
--------------------------------------------------------------------------------------------

if /i exist "c:\!affinity" echo I used to think that "if exist" works only on filenames, not 
folders.

set horse=Notice no space after the equals sign and no quotes around this string.
echo %horse%

set horse= Notice the space at the beginning of this string.
echo %horse%

if /i "%computer_alias%"=="Laptop" echo Double quotes work and are preferred to single quotes.

if /i '%computer_alias%' == 'laptop' echo This is how you employ case-insensitivity.

if /i not exist '%savannah%\worthwhile.some' echo Here's how you use "NOT EXIST".

if /i exist "%savannah%\worthwhile.now" echo Case doesn't matter.

if /i NOT '%computer_alias%' == 'Laptopxxxx' echo This is how you use The NOT EQAUL TO 
operator.

if /i '%computer_alias%' == 'Laptop' echo Spaces around the '==' DON'T matter.

:Notice also that set statement employ single "=" sign, whereas comparison employ 2 "=" signs.

if /i '%computer_alias%'=='Laptop' echo Single quotes work, but NOT with ALL constructs so 
should be avoided.

if /i '%computer_alias%'=='Laptop' echo This is case sensitive.

exit/b



::_

:section_2

echo.
echo Section 2: Items below here DON'T PRINT. If you don't believe me, try running 
echo this to see for yourself. What follows the echo statement is the reason the 
echo syntax is incorrect.
echo ------------------------------------------------------------------------------

if /i not exist "c:\!affinity" echo I used to think that "if exist" works only on filenames, 
not folders.

if /i exist '%savannah%\Worthwhile.now' echo The file "worthwhile.asc" actually exists but you 
surrounded it with single, instead of double quotes.

::Notice that putting a space BEFORE the equals sign causes the variable to not be set.
set horse2 = shit
echo %horse2%

if "%computer_alias%"=="LapTop" echo Improperly cased variable.
if %computer_alias%=="Laptop" echo No quotes around the environment variable.
set computer_alias_2="Laptop"
if '%computer_alias%_2' == 'Laptop' echo Percent signs within the environment variable.

goto _xit

:del "file identifier report.txt"

exit/b



:_+ Some Loops



::_

:do_while

set fp=* A loop that iterates x amount of times.

rem lu: Mar-30-2020

echo.
echo %fp%

set current_iteration_number=1
set x=4

:iterate

echo.
echo * Iteration # %current_iteration_number%.

set /a current_iteration_number=%current_iteration_number%+1

if "%current_iteration_number%" gtr "%x%" exit/b

goto :iterate



::_

:loop

set fp=* An endless loop that pauses for 3 seconds.

rem lu: Mar-30-2020

echo.
echo %fp%

timeout /t 3

goto loop



:_

:user_choice

set fp=* Ask the user a question and proceed accordingly.

echo.
echo %fp%

rem option, choose, choice

echo.
set /P user_option=Would you like to run "npm install"? (y/n): 

if not "%user_option%"=="y" call nm inst

exit/b



:_+ Passing Parameters and Passing Spaces in Parameters

skws

all parameters

entire command line

command line arguments

parameter passing

passing parameters



::_

:cla

set fp=* How to save command line arguments. This works.

rem Test percent star command.

rem lu: Jan-31-2019

echo.
echo %fp%

rem set cmd_line_args=%*

rem echo.
rem echo Commanmd line Arguments: %Cmd_line_args%

echo.
echo Commanmd line Arguments: %*

exit/b



::_

:passing_spaces

set fp=* Passing spaces in parameters.

rem lu: Sep-9-2018

echo %fp%

echo.
echo Percent 2: %2

echo.
echo Percent Squiggle 2: %~2

exit/b



::_

:pass_spaces

set fp=* The lesson learned is that you should put double quotes around parameters that may contain spaces.

rem lu: Sep-9-2018

echo %fp%

call n sa

call %0 passing_spaces "%cbf_path%"

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

:

set fp=* Checking the command line parameters.

rem lu: Nov-27-2019

echo.
echo %fp%

echo.
rem This equals the entire parameter list!
echo %*

echo.
echo %2

exit/b



:_

:epl

set fp=* Evaluate the parameter list.

rem lu: Nov-27-2019

echo.
echo %fp%

set d_switch=0
set e_switch=0
set v_switch=0

:top_of_parameter_line_evaluation

if "%~1" == "" goto exit_loop

if "%~1" == "-d" set d_switch=1
if "%~1" == "-e" set e_switch=1
if "%~1" == "-v" set v_switch=1

shift

goto top_of_parameter_line_evaluation

:exit_loop

echo %d_switch%
echo %e_switch%
echo %v_switch%

exit/b



:_+ Reflextion via Dynamic Variable Naming



::_

:ref3

set fp=* Reflection version 3. Dynamic variable naming.

rem lu: Mar-30-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 1. Extension and 2. Alias are required.
  exit/b
)

call m reset

call n %2

call m compose_variable %1

echo.
echo * Expanded variable: %cbf_expanded_variable%

exit/b



::_

:ref4

set fp=* Reflection version 4. Dynamic variable naming.

rem lu: Mar-30-2020

echo.
echo %fp%

if "%~3" == "" (
  echo.
  echo * Percent 2. Extension and 3. Alias are required.
  exit/b
)

call m reset

call n %3

call m compose_variable %2

echo.
echo * Expanded variable: %cbf_expanded_variable%

exit/b



:_

:

set fp=* Test if folder exists. Test folder existence.

rem lu: Apr-21-2020

echo.
echo %fp%

cd /d %dropbox%\Backups\Savannah

dir | find /i "backups\savannah">nul

if %errorlevel% == 0 echo. & echo * Folder EXISTS.

if %errorlevel% == 1 (
  echo.
  echo * Error: The Backups\Savannah folder does NOT exist on this computer.
  exit/b
)

exit/b



:_

:code_execution_area

set fp=* Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_ (!efv)
