:_

@echo off



:_

set filep=* Perform Java-related operations.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo File purpose: %filep%

echo.
echo Last Updated: Nov-19-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_

:ver

set fp=* Display Java version currently in use.

echo.
echo %fp%

echo.
java -version

exit/b



:_

:iji

set fp=* Investigate Java installation.

rem lu: Dec-13-2018

echo.
echo %fp%

call td jvpf

if %errorlevel% == 0 (
  dir /a /b /s /o-d "*java.exe*">%temp%\search_results_fs_special.txt
  echo.
  echo **** Search 1 completed.
)

call td jvpf86

if %errorlevel% == 0 (
  dir /a /b /s /o-d "*java.exe*">>%temp%\search_results_fs_special.txt
  echo.
  echo **** Search 2 completed.
)

if %errorlevel% == 0 (
  start "Test Title" "%cbf_default_text_editor%" "%temp%\search_results_fs_special.txt"
)

exit/b



:_

:rjz

set fp=* Rename Jar file to zip file in order to examine its contents.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
ren *.jar *.zip

exit/b



:_

:je

set fp=* Run Jenkins.

echo.
echo %fp%

call td desk

call m file_type_presence war

if %errorlevel% == 1 (
 exit/b
)

call m dos_color_yeonbl

title=Run Jenkins - Dedicated Job Window

echo.
call java -jar jenkins.war

exit/b



:_

:get_java_version

set fp=* Get Java version.

rem Outcome: This works!

echo.
echo %fp%
echo.

cd c:\mercury\batch_files

javac generate_mercury_version_number.java

java -cp . generate_mercury_version_number>c:\a\j3.txt

set /p java_timestamp=<c:\a\j3.txt

echo jt: %java_timestamp%

exit/b



:_

:jv

set fp=* Which Java version is running on this machine?

rem FCD: Mar-2-2017

rem echo.
rem echo %fp%
echo.

call c:\mercury\batch_files\update_java_timestamp.bat

set /p timestamp=<%tmp%\java_timestamp.txt

echo Java Version on %computername% on %timestamp%:

echo.

java -version

exit/b



:_ (!rfsp) (mov-6)