:_

@echo off



:_

set filename_stands_for=* Curl batch file.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

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
echo %filename_stands_for%

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