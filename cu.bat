:_

@echo off



:_

set filep=* Curl batch file.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo File purpose: %filep%

set filep=File purpose: This file is used to hook up Curl with n.bat entries.

echo.
echo %filep%

echo.
echo Last Updated: Aug-23-2018

echo.
echo Usage: %0 [space separated parameters]

set parameter_1=Parameter 1: URL nickname you wish to evaluate.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Curl switches, e.g. '-v'.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:main_function

echo.
echo %filep%

call n %1

echo.

if "%cbf_header%" == "" (
  call curl %2 %3 %4 %5 %cbf_url%
) else (
  call curl %2 %3 %4 %5 %cbf_url% -H "%cbf_header%"
)

echo.

rem (!rfsp) (mov-2)

exit/b



:_

:t

set fp=* Basic curl test of a URL.

rem lu: Apr-29-2019

echo.
echo %fp%

rem This works.

call n %2

echo.
curl %cbf_url%

exit/b



:_

:ta

set fp=* Basic curl test all servers.

rem lu: Apr-29-2019

echo.
echo %fp%

rem This works.

call %0 t sr1

call %0 t sr2

call %0 t sr3

call %0 t sr4

call %0 t sr5

call %0 t sr6

exit/b



:_