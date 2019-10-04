:_

@echo off



:_

set filep=* This file is used for vetted functions.



:_

set fp=* Route callers.

if "%~1" == "" code_execution_area

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 (optional parameter 1)

echo.
set parameter_1=Parameter 1: Batch file label you wish to execute. If left blank, ^
the function(s) immediately following the main function, will be executed.

echo %parameter_1%

exit/b



:_

:errorlevel

set fp=* The errorlevel statement.

echo %fp%


echo.
echo * Errorlevel: %errorlevel%

if %errorlevel% == 1 (
  call m clear_errorlevel_silently
  exit/b
)

rem Imprimatur (!err, !p2, !erro, !el, !erle)

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
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



:_

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
if "%~2" == "" (
  echo.
  echo * Percent 2 cannot be nothing.
  exit/b
)

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



:_

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



:_

:sr

set fp=* String replacement is cool.

rem skw dos search and replace

rem lu: Dec-7-2018

echo.
echo %fp%

echo.
echo Example 7
set str=https://www.cnn.com
echo.%str%
set str=%str:https://=%
echo.%str%

echo.
echo Example 6
set str=https://www.cnn.com
echo.%str%
set str=%str:cnn=google%
echo.%str%

echo.
echo Example 1
set str=teh cat in teh hat
echo.%str%
set str=%str:teh=the%
echo.%str%

echo.
echo Example 2
set str=HTML5Application/public_html/sass/example/bootstrap.jsonp
echo.%str%
set str=%str:/=\%
echo.%str%

echo.
echo Example 3
set str=https://www.cnn.com
echo.%str%
set str=%str:https://www.=%
set str=%str:http://www.=%
echo.%str%

echo.
echo Example 4
set cbf_url=https://www.github.com
echo.%cbf_url%
set cbf_url=%cbf_url:http://=%
set cbf_url=%cbf_url:https://=%
set cbf_url=%cbf_url:www.=%
echo.%cbf_url%

echo.
echo Example 5
rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes. Nov-26-2018
set database_name=postgres_test_database_Nov_26_2018_2
echo %database_name%
set database_name=%database_name:_=-%
echo %database_name%

exit/b



:_+ If Exist



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

:fiex

set fp=* File existence. (skw filename existence)

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



:_+ Line Continuation Characters, Escape Characters and more.



::_

:care

:caret

set fp=* Line continuation with caret character.

rem How do you continue a batch file line onto a second line?

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



:_

:validate_data

rem Data Validation: skw

if "%~1" == "" (
  echo.
  echo * Application alias is required.
  exit/b
)

if "%~2" == "" (
  echo.
  echo * Data alias is required.
  exit/b
)

call an %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" not found.
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_application%" (
  echo.
  echo * Error: Cannot find the alias "%cbf_application%".
  exit/b
)

call fn %2

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" not found.
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_filename%" (
  echo.
  echo * Error: Cannot find the alias "%cbf_filename%".
  exit/b
)



:_

:vui

:validate_user_input

if "%~1" == "" (
  echo.
  echo * Error: A parameter is required.
  goto help
)

call un %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" was not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_url%" == "" (
  echo.
  echo * Error: cbf_url is unassigned.
  goto help
)



:_

:code_execution_area

set fp=* Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_