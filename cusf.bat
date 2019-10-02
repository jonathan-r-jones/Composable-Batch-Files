:_

@echo off



:_

set filep=* This file is used to hook up Curl with n.bat entries.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

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

:t2

set fp=* Defining the url.

rem lu: Apr-29-2019

echo.
echo %fp%

rem This may work.

call n %2

echo.
curl -v -F ‘data=Apr-29-2019_2_24_PM.txt’ %cbf_url%

exit/b



:_

:t3

set fp=* Finding the upload folder.

rem lu: Apr-29-2019

echo.
echo %fp%

rem This works.

call n %2

echo.
curl -v -F ‘data=Apr-29-2019_2_24_PM.txt’ %cbf_url%

exit/b



:_

:t4

set fp=* Copy the same as scp does.

rem lu: Apr-29-2019

echo.
echo %fp%

call n %2

set server_with_folder=zzadmin@%cbf_ip%:/home/zzadmin/

echo.
curl -v -F ‘data=Apr-29-2019_3_07_PM.txt’ %server_with_folder%

exit/b



:_

:t5

set fp=* More testing.

rem lu: Apr-29-2019

echo.
echo %fp%

call n sr3

echo.
curl -v --upload-file Apr-29-2019_3_07_PM.txt %cbf_url%

exit/b



:_

:t

set fp=* Basic curl test of a URL.

rem lu: Apr-29-2019

echo.
echo %fp%

rem This works.

call n %2

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%2" not found.
  call m clear_errorlevel_silently 
  exit/b
)

echo.
curl %cbf_url%

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