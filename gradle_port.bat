:_

@echo off



:_

set filep=* Ported gradlew.bat to CBF format.



:_

set fp=* Route callers.

if -%~1- == -- goto help

if -%~1- == -/?- goto help

goto main_function



:_

:help

cls

echo.
echo %filep%

rem lu: 

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf_fc_path

echo.
echo Pit of Success Strategy: If cb_conf is not, found the algorithm will look for cbf_url.

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Example(s):

echo.
echo %0

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main_function

set base_folder=%cd%

set app_base_name=gradlew

set default_jvm_opts=

rem Find java.exe.
if defined java_home goto findjavafromjavahome

rem This is the case where Java_Home is undefined.
java -version>nul 2>&1

if "%errorlevel%" == "0" goto initialize

echo.
echo * Error: JAVA_HOME is not set and no 'java' command could be found in your PATH. ^ 
Please set the JAVA_HOME variable in your environment to match the location of your Java ^
installation.

exit/b 1



:_

:findjavafromjavahome

set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo * Error: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo * Please set the JAVA_HOME variable in your environment to match the location of your Java installation.

exit/b 1



:_

:initialize

rem Get command-line arguments, handling Windows variants

set cmd_line_args=%*

set CLASSPATH=%base_folder%\gradle\wrapper\gradle-wrapper.jar

rem Execute Gradle.
java %default_jvm_opts% %java_opts% %gradle_opts% "-dorg.gradle.appname=%app_base_name%" -classpath "%classpath%" org.gradle.wrapper.gradlewrappermain %cmd_line_args%

exit/b


Footnote
>< >< >< 

This is what runs:

"c:\aa\Java_Jdk_1.8.0.241/bin/java.exe"    "-Dorg.gradle.appname=gradlew" -classpath 
"C:\Users\JJones2\dev\cart\api\\gradle\wrapper\gradle-wrapper.jar" 
org.gradle.wrapper.GradleWrapperMain test
