:_

@echo off

 

:_ 

set filep=* Dev University presentation on Jan-9-2020.

rem echo.
rem echo %filep%

 

:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1

 

:_

:help

rem lu: Jan-9-2020

echo.

echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Function you with to execute.

echo.
echo %parameter_1%

echo.
echo Batch file style: Function routing.

echo.
echo Examples

echo.
echo Example 1:

exit/b

 

:_

:hello_world_1

echo.
echo Hello 1.

exit/b

 

:_

:hello_world_2

echo.
echo Hello 2.

exit/b

 

:_

:hello_world_3

echo.
echo Hello 3.

call %0 hello_world_1

call %0 hello_world_2

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

if "%~2" == "" (
  echo Percent 2 nothing.
) else (
  echo Percent 2 is something.
)

exit/b

 

:_

:cn

set fp=* Evaluating an environment variable.

echo.
echo %fp%

if "%computername%" == "" (
  echo computerr name is nothing.
) else (
  echo Computername: %computername%
)

exit/b


 
:_

:cns

set fp=* Evaluating an set environment variable.

echo.
echo %fp%

set devu=hiya

 if "%devu%" == "" (
  echo cdevu is nothing.
) else (
  echo devu: %devu%
)

exit/b


 
:_

:cn2 

set fp=* Set computername. 

echo.
echo %fp%

echo.
echo cn: %computername%

set computername=my_computer

echo.
echo cn: %computername%

exit/b



:cn_not

 set fp=* Negatively evaluating an environment variable.

echo.
echo %fp%

if not "%computername%" == "" (
  echo computerr name is not nothing.
) else (
  echo Computername: %computername%
)

exit/b


 
:_

:sort

set fp=* How to sort a file. Calling an outside function.

rem lu: Feb-5-2019

echo.
echo %fp%

echo.
sort j1.txt>j2.txt

exit/b

  

:_

:test

set fp=* Function purpose.

rem lu: Jan-9-2020

echo.
echo %fp%

echo.
echo Do something.

exit/b

 

:_ (!rfsp) (mov-7)