:_

@echo off



:_

set filep=* This file is used for vetted functions.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Set title.

title=Vetted Functions



:_

set fp=* Set color.

color 0e



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help




:_

set fp=* If percent is not blank, then to percent 1.

if not "%~1" == "" goto %1



:_

set fp=* Go to execution area.

goto main_function



:_

:help

echo File Purpose: %filep%

echo.
echo Filename stands for: Vetted functions.

echo.
echo Last Updated (lu): Jul-8-2018

echo.
echo Usage: %0 (optional parameter 1)

echo.
echo Parameter 1: Batch file label you wish to execute. If left blank, 
echo the code below the last code block in this file, a. k. a. the main function, will 
echo be executed.

exit/b



:_

:errorlevel

set fp=* The errorlevel statement.

echo %fp%
echo.

rem Imprimatur (!error, !erro)

echo Errorlevel: %errorlevel%

if %errorlevel% == 0 (
  echo.
  echo Error level equals 0.
) else (
  echo.
  echo Error level equals 1.
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

:percent_20

set fp=* How do you escape a percent sign in a batch file?

rem Answer: 2 '%' signs equals one.

rem double percent sign: skw

rem percent 20 issue in environment variables. skw

rem fcd: Aug-2-2017

echo %fp%

set cbf_url='https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Mobile'

echo.
echo cbf_url: %cbf_url%

exit/b



:_

:folder_exists_2

set fp=* Testing whether a folder exists 2.

rem lu: May-23-2018

echo %fp%

if exist "%1" (
  echo.
  echo It exists.
)

if not exist "%1" echo It does NOT exist.

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

:main_function

set fp=* Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_