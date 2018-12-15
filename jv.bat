:_

@echo off



:_

set filename_stands_for=* Perform Java-related operations.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Nov-19-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_

:je

set fp=* Run Jenkins.

echo.
echo %fp%

call td dn

call m file_type_presence war

if %errorlevel% == 1 (
 exit/b
)

call m dosc_yeonbl

title=Run Jenkins - Dedicated Job Window

echo.
call java -jar jenkins.war

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



:_ (!rfsp) (mov-6)