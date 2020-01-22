:_

@echo off



:_

set filep=* Reoint the kiosk.

title=%filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_destination_environment



:_

:help

rem lu: Oct-23-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Environment your wish to point to, "dev" or "fqt". If ^
left blank, the current environment is shown.

echo.
echo %parameter_1%

exit/b


:_

:validate_destination_environment

set fp=* Validate destination environment.

rem echo.
rem echo %fp%

set config_1_destination=C:\cartkiosk\APCTray\APCTray.EXE.config
set config_2_destination=C:\cartkiosk\Application\Kiosk.exe.config

if /i not exist "%config_1_destination%" (
  echo.
  echo * 3. Cannot find file "%config_1_destination%".
  exit/b
)

if /i not exist "%config_2_destination%" (
  echo. 
  echo * 4. Cannot find file "%config_2_destination%".
  exit/b
)

if "%~1" == "dev" goto point_to_dev

if "%~1" == "fqt" goto point_to_fqt

if "%~1" == "" goto which_environment_is_currently_set

exit/b



:_

:which_environment_is_currently_set

set fp=* Which environment is the kiosk pointing to?

echo.
echo %fp%

type %config_1_destination% | find /i "fqt">nul

if %errorlevel% == 0 (
  echo.
  echo * The kiosk is pointing to FQT.
  echo.
  pause
  exit/b
)

echo. 
echo * The kiosk is pointing to DEV.
echo.

pause

exit/b



:_

:point_to_dev

set fp=* Point to dev.

echo.
echo %fp%

set config_1_source=C:\cartkiosk\APCTray\APCTray.EXE.config for dev
set config_2_source=C:\cartkiosk\Application\Kiosk.exe.config for dev

goto validate_environment



:_

:point_to_fqt

set fp=* Point to fqt.

echo.
echo %fp%

set config_1_source=C:\cartkiosk\APCTray\APCTray.EXE.config for fqt
set config_2_source=C:\cartkiosk\Application\Kiosk.exe.config for fqt

goto validate_environment



:_

:validate_environment

set config_1_destination=C:\cartkiosk\APCTray\APCTray.EXE.config
set config_2_destination=C:\cartkiosk\Application\Kiosk.exe.config

if /i not exist "%config_1_source%" (
  echo.
  echo * 1. Cannot find file "%config_1_source%".
  exit/b
)

if /i not exist "%config_2_source%" (
  echo. 
  echo * 2. Cannot find file "%config_2_source%".
  exit/b
)



:_

:main_function

echo.
xcopy /y "%config_1_source%" "%config_1_destination%"
xcopy /y "%config_2_source%" "%config_2_destination%"

exit/b



:_ (!rfsp) (mov-7)
