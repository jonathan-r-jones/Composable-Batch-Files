:_

@echo off



:_

set filep=* Application nickname dictionary that sets the full application name corresponding to a given unique nickname parameter.



:_

set fp=* In order to promote freshness, clear the environment variable.

set cbf_application=



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_ (!rfsp) (mov-6)

:help

echo.
echo %filep%

echo.
echo The File purpose: Application Nicknames.

echo.
echo Last Updated: Jan-24-2018

echo.
echo Notes: This file and 3 others, viz. fn.bat, pn.bat and un.bat are not strictly necessary 
echo in that they could all be replaced be calls to nn.bat, nicknames source. However,
echo they are useful in the sense that by calling these, the code is more readable and
echo has more clarity of intent.

echo.
echo Usage: %0 [single parameter]

exit/b


:_

:main_function

rem echo Caller 1: an.bat, Percent 1: %~1

call n %~1

exit/b



:_